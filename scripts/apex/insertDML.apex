//Case 1
Account account1 = new Account(Name = 'Facebook', Phone = '12312312');
insert account1;

//Case 2
Account account2 = new Account();
account2.Name = 'Miko';
account2.Phone = '12312321';
insert account2;

//Case 3 using list, DML Statement
List<Account> accountsList = new List<Account>();

Account acc1 = new Account(Name = 'Acc 1');
Account acc2 = new Account(Name = 'Acc 2');
Account acc3 = new Account(Name = 'Acc 3');

accountsList.add(acc1);
accountsList.add(acc2);
accountsList.add(acc3);

insert accountsList;

//Case 3 using list, method called Database.insert
List<Account> accountsList2 = new List<Account>();

Account acc4 = new Account(Name = 'Acc 4');
Account acc5 = new Account(Name = 'Acc 5');
Account acc6 = new Account(Name = 'Acc 6');

accountsList2.add(acc4);
accountsList2.add(acc5);
accountsList2.add(acc6);

Database.insert(accountsList2);

/*
insert statement does not allow partial sucess of DML opeation. If any of the record fails, complete transaction 
will be rolled back and none of the record will be saved.
*/

/*
dabase.insert method, can control this by using a parameter 
Database.insert(accountsList2, true) -> Partial success NOT allowed
Database.insert(accountsList2, false) -> Partial success is allowed
Another use case, it can also returns all the successful and failed records 
*/
Database.insert(accountsList2, false);
