//Insert an account
Account account = new Account(Name = 'Luthur', Phone = '021312023');
AccountController.insertAccount(account);

//Insert account using List
List<Account> accsList = new List<Account>();
Account acc1 = new Account(Name = 'Lacoste');
accsList.add(acc1);
Account acc2 = new Account(Name = 'Puma');
accsList.add(acc2);
AccountController.insertAccounts(accsList);

//Update an account
Account accToUpdate = new Account(Id = '0015j00001MXftrAAD');
accToUpdate.Name = 'Rica Lou';
update accToUpdate;


//Update accounts via List
List<Account> accountsUpdate = [
	SELECT Id, Name, Phone
	FROM Account
	WHERE Name = 'Amber Herd' AND Phone = '123434230232'
];
for (Account accUpdate : accountsUpdate) {
	accUpdate.Name = 'Kimboy';
}
//update accountsUpdate;
Database.update(accountsUpdate, false);

//Update on account 
Account accUpdateNew = new Account(Id = '0015j00001MXYKRAA5', Name = 'Chamber');
AccountController.updateAccount(accUpdateNew);

//-----------------//

//Update accounts through list
List<Account> accountsToUpdate = [
	SELECT Id, Name
	FROM Account
	WHERE Name = 'Arya'
];
for (Account accountToUpdate : accountsToUpdate) {
	accountToUpdate.Name = 'Jacob Megs';
}
AccountController.updateAccounts(accountsToUpdate);

//-----------------
//Delete an account
Account accToDelete = [SELECT Id FROM Account WHERE Id = '0015j00001MXYKRAA5'];
AccountController.deleteAccount(accToDelete);
