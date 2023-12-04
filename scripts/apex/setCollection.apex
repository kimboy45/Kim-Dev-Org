//Unordered collection of elements of same datatype
//Duplicate values are not displayed or called 

Set<Integer> rollNumbers = new Set<Integer>{101, 102, 103, 101};
rollNumbers.add(104);
rollNumbers.add(105);
rollNumbers.add(105);
System.debug(rollNumbers);
System.debug(rollNumbers.contains(101));
System.debug('Set size is ' + rollNumbers.size());

