public with sharing class SObjectController {
	public static SObject insertSObject(SObject recordToInsert) {
		insert recordToInsert;
		return recordToInsert;
	}

	public static SObject updateSObject(SObject recordToUpdate) {
		update recordToUpdate;
		return recordToUpdate;
	}
}
