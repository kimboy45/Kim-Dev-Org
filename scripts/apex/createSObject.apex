//Create a new SObject instance
//Create new record
SObject account = (SObject)Type.forName('Account').newInstance();
account.put('Name', 'SObject Account');
account.put('Phone', '02320323');

insert account;


//Update existing record
