import { LightningElement, track, api } from 'lwc';
import createUserRecords from '@salesforce/apex/UserDataCreateByCSV.createUserRecords';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
const columns = [
	{ label: 'FirstName', fieldName: 'FirstName' },
	{ label: 'LastName', fieldName: 'LastName' },
	{ label: 'Email', fieldName: 'Email' },
	{ label: 'Username', fieldName: 'Username' },
	{ label: 'Market__c', fieldName: 'Market__c' }
];

export default class CSVFileUploaderLWC extends LightningElement {
	@api recordid;
	@track columns = columns;
	@track data;
	@track fileName = '';
	@track UploadFile = 'Upload User CSV File';
	@track showSpinner = false;
	@track isTrue = false;
	selectedRecords;
	filesUploaded = [];
	file;
	fileContents;
	fileReader;
	content;
	MAX_FILE_SIZE = 1500000;

	handleFilesChange(event) {
		if (event.target.files.length > 0) {
			this.filesUploaded = event.target.files;
			this.fileName = event.target.files[0].name;
		}
	}

	handleSave() {
		if (this.filesUploaded.length > 0) {
			this.uploadHelper();
		} else {
			this.fileName = 'Please select a CSV file to upload!!';
		}
	}

	uploadHelper() {
		this.file = this.filesUploaded[0];
		if (this.file.size > this.MAX_FILE_SIZE) {
			console.log('File Size is to long');
			return;
		}

		this.showSpinner = true;
		this.fileReader = new FileReader();

		this.fileReader.onloadend = (() => {
			this.fileContents = this.fileReader.result;
			this.saveToFile();
		});

		this.fileReader.readAsText(this.file);
	}

	saveToFile() {
		createUserRecords({ base64Data: JSON.stringify(this.fileContents), cdbId: this.recordid })
			.then(result => {
				console.log(result);
				this.data = result;
				this.fileName = this.fileName + ' - Uploaded Successfully';
				this.isTrue = false;
				this.showSpinner = false;
				this.showToast('Success', this.file.name + ' - Uploaded Successfully!!!', 'success', 'dismissable');
			})
			.catch(error => {
				console.log(error);
				this.showToast('Error while uploading File', error.body.message, 'error', 'dismissable');
			});
	}

	showToast(title, message, variant, mode) {
		const evt = new ShowToastEvent({
			title: title,
			message: message,
			variant: variant,
			mode: mode
		});
		this.dispatchEvent(evt);
	}
}