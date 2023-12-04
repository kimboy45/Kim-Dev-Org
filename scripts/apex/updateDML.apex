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
Account accountUpdate = new Account(Id = '0015j00001MXYKRAA5', Name = 'Kimboy Kim');
update accountUpdate;

