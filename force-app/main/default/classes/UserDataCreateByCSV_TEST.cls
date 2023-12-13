@isTest
public class UserDataCreateByCSV_TEST {
	static String str = 'FirstName,LastName,Alias,ProfileId,Email,LocaleSidKey,LanguageLocaleKey,EmailEncodingKey,TimeZoneSidKey,Market__c,IsActive\n Kim,Richard,kimrich,10101, 03430Wsd233g34s,kim@gmail.com,ca_ES,en_US,UTF-8,Afirca/Cairo,Mexico,True';

	static testMethod void testfileupload() {
		Test.startTest();
		Blob csvFileBody = Blob.valueOf(str);
		String s = EncodingUtil.base64Encode(csvFileBody);
		UserDataCreateByCSV.createUserRecords(s);
		Test.stopTest();
	}
}
