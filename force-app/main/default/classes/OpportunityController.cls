public with sharing class OpportunityController {
	/* NOT Correct 
	public static void updateProfile(List<Id> oppIds) {
		for (Id oppId : oppIds) {
			//Get opp record
			Opportunity opp = [SELECT Id, Amount, Profile__c FROM Opportunity WHERE Id = :oppId];
			if (opp.Amount == null) {
				opp.Profile__c = '';
			} else if (opp.Amount < 10000) {
				opp.Profile__C = 'Low';
			} else if (opp.Amount > 50000) {
				opp.Profile__c = 'High';
			} else {
				opp.Profile__c = 'Medium';
			}
			//Insert record
			update opp;
		}
	}
	*/

	public static void updateProfile(List<Id> oppIds) {
		List<Opportunity> oppsToUpdate = new List<Opportunity>();
		for (Opportunity opp : [SELECT Id, Amount FROM Opportunity WHERE Id IN :oppIds]) {
			if (opp.Amount == null) {
				opp.Profile__c = '';
			} else if (opp.Amount < 10000) {
				opp.Profile__C = 'Low';
			} else if (opp.Amount > 50000) {
				opp.Profile__c = 'High';
			} else {
				opp.Profile__c = 'Medium';
			}

			oppsToUpdate.add(opp);
		}

		update oppsToUpdate;
	}
}
