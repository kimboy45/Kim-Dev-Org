//Delete all accounts that have name starts at "Acc"
//Delete account with the user of List
List<Account> accountsToDelete = [SELECT Id FROM Account WHERE Name LIKE 'Acc%'];
//Delete using DML Statement
delete accountsToDelete;
//Delete using Database Methods
Database.delete(accountsToDelete)

//Delete single account
Account accDelete = new Account(Id = '0015j00001MXdwqAAD');
delete accDelete;
