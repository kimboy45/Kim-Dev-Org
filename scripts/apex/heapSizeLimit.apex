//Insead of writing the code like this
//This will process all together the values insinde the list 
/*
public static void updateProfile(List<Id> oppIds) {
		List<Opportunity> opps = [SELECT Id, Amount, Profile__c FROM Opportunity WHERE Id IN :oppIds];
		for (Opportunity opp : opps) {
			if (opp.Amount == null) {
				opp.Profile__c = '';
			} else if (opp.Amount < 10000) {
				opp.Profile__C = 'Low';
			} else if (opp.Amount > 50000) {
				opp.Profile__c = 'High';
			} else {
				opp.Profile__c = 'Medium';
			}
		}
		update opps;		
	}
*/

//Use this instead, initialize the soql query in for loop to process it by chunk. 
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
