//Retrieve all accounts and assign to a List collection
List<Account> accounts = [SELECT Name, Phone FROM Account];
for (Account account : accounts) {
	System.debug('Account Name: ' + account.Name + ', Account Phone: ' + account.Phone);
}

//Retrieve all accounts and assign to a List collection using S0bject
List<SObject> accounts = [SELECT Name, Phone FROM Account];
for (SObject account : accounts) {
	System.debug(
		'Account Name: ' +
			String.valueOf(account.get('Name')) +
			', Account Phone: ' +
			String.valueOf(account.get('Phone'))
	);
}

//Get the parent's field e.g. Account.Name using SObject
List<SObject> contacts = [SELECT FirstName, LastName, Account.Name FROM Contact WHERE Account.Name != NULL];
for (SObject contact : contacts) {
	System.debug(
		'Contact First Name: ' +
			String.valueOf(contact.get('FirstName')) +
			', Contact Last Name: ' +
			String.valueOf(
				contact.get('LastName') + ', Contact Account Name: ' + (String)contact.getSObject('Account').get('Name')
			)
	);
}
