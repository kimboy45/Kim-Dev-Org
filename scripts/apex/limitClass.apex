//Big SOQL query
List<Account> accounts = [SELECT Id, Name FROM Account];
//Endless while loop
//This loop will hit the heap size issue in apex
//As it doubles the accounts list each time
while (1 == 1) {
	if (Limits.getHeapSize() * 2 > Limits.getLimitHeapSize()) {
		break;
	}
	//Make a copy of accounts list
	List<Account> duplicateAccounts = accounts;
	//Add copy to original list
	accounts.addAll(duplicateAccounts);
}
System.debug('List size: ' + accounts.size());
