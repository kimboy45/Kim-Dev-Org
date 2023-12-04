//You can build your SOQL quiries at runtime in apex code dynamically.
//Dynamic SOQL enables you to create more flexible applications.

String accountClass = 'Class 2';

String queryString = 'SELECT Id, Name, Phone, Rating, Type FROM Account';

if (accountClass == 'Class 1') {
	queryString += ' WHERE Rating=\'Hot\' AND Type=\'Prospect\'';
} else if (accountClass == 'Class 2') {
	queryString += ' WHERE Rating=\'Warm\' AND Type=\'Other\'';
} else {
	queryString += ' WHERE Rating=\'Hot\'';
}

List<Account> accounts = Database.query(queryString);
System.debug('Accounts size is ' + accounts.size());
System.debug('Accounts ' + accounts);
