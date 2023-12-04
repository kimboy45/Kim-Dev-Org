/* Challenge
Create a new Account with the name "WingNut Films" and Rating "Warm"
Create a new opportunity "Lord of the Rings" for this Account with below field values
	Stage = Qualification
	Closed Date = Today
Update Accout Name tp "New Line Cinema"
Update the Opportunity Stage to "Closed Won"
Delete the Opportunity
Undelete the Opportunity
*/

//Inser account
Account insertAcc = new Account();
insertAcc.Name = 'WingNut Films';
insertAcc.Rating = 'Warm';
insert insertAcc;

//Insert opportunity
Opportunity insertOpp = new Opportunity();
insertOpp.Name = 'Lord of the Rings';
insertOpp.StageName = 'Qualification';
insertOpp.CloseDate = System.today();
insertOpp.AccountId = '0015j00001MYkvmAAD';
insert insertOpp;

//Update account name
Account updateAcc = [SELECT Id FROM Account WHERE Id = '0015j00001MYkvmAAD'];
updateAcc.Name = 'New Line Cinema';
update updateAcc;

//Update opportnity stage
Opportunity updateOpp = [SELECT Id FROM Opportunity WHERE Name = 'Lord of the Rings'];
updateOpp.StageName = 'Closed Won';
update updateOpp;

//Delete Opp
Opportunity deleteOpp = [SELECT Id FROM Opportunity WHERE Id = '0065j00001QjPZ5AAN'];
delete deleteOpp;

//Undelete Opp
List<Opportunity> undeleteOpp = [SELECT Id FROM Opportunity WHERE IsDeleted = TRUE ALL ROWS];
undelete undeleteOpp;

//------------------------- Using SObject -------------

//Insert account
//Create  new instance of Account SObject
SObject account = (SObject) Type.forName('Account').newInstance();
account.put('Name', 'Android');
account.put('Rating', 'Warm');

insert account;

//-----------------

//Get the Account record first to associate with Opportunity
SObject account = Database.query('SELECT Id FROM Account WHERE Name=\'Android\' LIMIT 1');
//Create new instance of Opportunity object.
SObject opportunity = (SObject) Type.forName('Opportunity').newInstance();
opportunity.put('Name', 'Android Opportunity');
opportunity.put('StageName', 'Qualification');
opportunity.put('CloseDate', System.today());
opportunity.put('AccountId', account.Id);

insert opportunity;

//------------

//Retrieve "Android" account
SObject account = Database.query('SELECT Id FROM Account WHERE Name=\'Android\' LIMIT 1');
//Update name
account.put('Name', 'IOS');
//Update account
update account;


//-----------
//Retrieve opportunity 
SObject opp = Database.query('SELECT Id FROM Opportunity WHERE Name=\'Android Opportunity\' LIMIT 1');
//Update name
opp.put('StageName', 'Closed Won');
//Update opportunity
update opp;


//------------------

SObject opp = Database.query('SELECT Id FROM Opportunity WHERE Name=\'Android Opportunity\' LIMIT 1');
//Delete opportunity
delete opp;

//-------------------

List<SObject> opps = Database.query('SELECT Id FROM Opportunity WHERE IsDeleted = TRUE ALL ROWS');
//Delete opportunity
undelete opps;