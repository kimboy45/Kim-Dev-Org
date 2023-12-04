// This will improve the heap size of the code
// General use case when performing some computation within the loop itself

for (Opportunity opportunity : [SELECT ID, Name FROM Opportunity]) {
	System.debug('Opp Name: ' + opportunity.Name);
}