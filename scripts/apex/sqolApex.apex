//List
List<Account> accounts = [SELECT Name, Phone FROM Account];
for (Account account : accounts) {
	System.debug('Account Name: ' + account.Name + ' Account Phone: ' + account.Phone);
}

//Map
Map<Id, Account> accountsMap = new Map<Id, Account>([SELECT Name, Phone FROM Account]);
for (Account accountMap : accountsMap.values()) {
	System.debug('Account Name: ' + accountMap.Name + ' Account Phone: ' + accountMap.Phone);
}

//Use list of contacts to store the query result
//For the parent relationship, just call the name of the parent field e.g. contact.Account.Name
//For the child relationship, create another for loop to interate the child records
List<Contact> contacts = [
	SELECT Account.Name, Account.Rating, Name, Department, Title, (SELECT CaseNumber, Subject FROM Cases)
	FROM Contact
	ORDER BY Name
];
for (Contact contact : contacts) {
	System.debug(
		'Contact Name: ' +
			contact.Name +
			', Contact Department: ' +
			contact.Department +
			', Contact Title: ' +
			contact.Title +
			', Account Name: ' +
			contact.Account.Name +
			', Account Rating: ' +
			contact.Account.Rating
	);
	for (Case contactCase : contact.Cases) {
		System.debug('Case Number: ' + contactCase.CaseNumber + ', Case Subject: ' + contactCase.Subject);
	}
}
