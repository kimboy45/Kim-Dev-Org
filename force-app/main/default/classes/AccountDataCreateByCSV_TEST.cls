@isTest
public class AccountDataCreateByCSV_TEST {
	static String str = 'Name,Phone,AccountNumber,Rating\n Kim,9999999999,10101, Warm\n Lara,9999999999,10101,Hot';

	static testMethod void testfileupload() {
		Test.startTest();
		Blob csvFileBody = Blob.valueOf(str);
		String s = EncodingUtil.base64Encode(csvFileBody);
		AccountDataCreateByCSV.createAccountRecords(s);
		Test.stopTest();
	}
}
