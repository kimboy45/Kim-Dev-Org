List<Account> accounts = new List<Account>();
List<Opportunity> opportunities = new List<Opportunity>();

Account account = new Account();
account.Name = 'Billy';
accounts.add(account);
insert accounts;

for (Account accLoop : accounts) {
	Opportunity opportunity = new Opportunity();
	opportunity.Name = 'Lord of the Rings';
	opportunity.AccountId = accLoop.Id;
	opportunity.StageName = 'Qualification';
	opportunity.CloseDate = System.today();
	opportunities.add(opportunity);
}
insert opportunities;

//Update Account
List<Account> accountsUpdates = [
	SELECT Id, Name, Rating
	FROM Account
	WHERE Name IN :accounts
];

Account accUpdate = new Account();
accUpdate.Id = accountsUpdates;
accUpdate.Name = 'New Line Cinema';

update accUpdate;

//Update opportunity name
List<Opportunity> oppssUpdates = [
	SELECT Id
	FROM Opportunity
	WHERE Name IN :opportunities
];

Opportunity oppUpdate = new Opportunity();
oppUpdate.Id = oppssUpdates;
oppUpdate.StageName = 'Closed Won';

update oppUpdate;


//Delete opp
Opportunity oppDelete = new Opportunity();
oppUpdate.Id = oppssUpdates;
delete oppUpdate;

