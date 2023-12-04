List<String> accountNames = new List<String>();
accountNames.add('Kevin');
accountNames.add('Mika Luke');

List<Account> accounts = [
	SELECT Id, Name, Rating
	FROM Account
	WHERE Name IN :accountNames
];
System.debug('Account size: ' + accountNames.size());
System.debug('Accounts: ' + accounts);
