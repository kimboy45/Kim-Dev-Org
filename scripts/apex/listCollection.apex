Integer rollNum1 = 101;
System.debug(rollNum1);

Integer rollNum2 = 102;
System.debug(rollNum2);

Integer rollNum3 = 103;
System.debug(rollNum3);

//--------------------

List<Integer> rollNumbers = new List<Integer>{101, 102, 103};
System.debug(rollNumbers);

//--------------------

List<Integer> rollNumbersAdd = new List<Integer>();
// add new value
rollNumbersAdd.add(104);
rollNumbersAdd.add(105);
rollNumbersAdd.add(106);
System.debug(rollNumbersAdd);
System.debug('List size ' + rollNumbersAdd.size());