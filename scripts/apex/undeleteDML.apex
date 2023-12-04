//To query all the accounts either deleted or not 
//SELECT Name, Phone FRONM Account ALL ROWS
//To query on deleted accounts 
//SELECT Name, Phone FRONM Account WHERE IsDeleted = True ALL ROWS
List<Account> deletedAccounts = [SELECT Name, Phone FROM Account WHERE IsDeleted = True ALL ROWS];
undelete deletedAccounts;