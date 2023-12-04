//A key value pair based collection. 
Map<Integer, String> class2020 = new Map<Integer, String>();
class2020.put(1, 'Luke');
class2020.put(2, 'Mike');
System.debug(class2020);

class2020.put(3, 'Jane');
System.debug(class2020);

//Override the value
class2020.put(3, 'Aairon');
System.debug(class2020);

//Get the value
System.debug(class2020.get(2));

//Remove an item
class2020.remove(1);

//Get all keys
//Since it is unique we can use the set collection
Set<Integer> rollNumber = class2020.keySet();
System.debug('Keys ' + rollNumber);

//Get all values
//Since values will have duplicate values then we can use the list collection
List<String> students = class2020.values();
System.debug('Student names: ' + students);

//Check if map has a key 
System.debug(class2020.containsKey(2));


//--------------

List<Account> accts = new List<Account>();
accts.add(new Account(Name='Account1'));
accts.add(new Account(Name='Account2'));
// Insert accounts so their IDs are populated.
insert accts;
Map<Id, Account> m = new Map<Id, Account>();
// Add all the records to the map.
m.putAll(accts);
System.debug(m);