List<Opportunity> oppRecords = [SELECT Id FROM Opportunity];
List<Id> oppIds = new List<Id>();
for (Opportunity opp : oppRecords) {
	oppIds.add(opp.Id);
}

OpportunityController.updateProfile(oppIds);