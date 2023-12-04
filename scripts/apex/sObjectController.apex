//Account insert
SObject account = (SObject) Type.forName('Account').newInstance();
account.put('Name', 'JCO');
account.put('Rating', 'Warm');

SObjectController.insertSObject(account);

//Account update
SObject account = Database.query('SELECT Id FROM Account WHERE Name=\'JCO\' LIMIT 1');
account.put('Name', 'MCDO');

SObjectController.updateSObject(account);

//------------
//Contect insert
SObject contact = (SObject) Type.forName('Contact').newInstance();
contact.put('FirstName', 'Mia');
contact.put('LastName', 'Johnson');

SObjectController.insertSObject(contact);

