String scienceMarks = '72';
String chemistryMarks = '64';
String mathMarks = '87';

//String total
String total = scienceMarks + chemistryMarks + mathMarks;
System.debug('Total ' + total);

//Convert total to Integer
Integer totalInt = Integer.valueOf(scienceMarks) + Integer.valueOf(chemistryMarks) + Integer.valueOf(mathMarks);
System.debug('Total ' + totalInt);

//Convert total to String
String totalStr = String.valueOf(Integer.valueOf(scienceMarks) + Integer.valueOf(chemistryMarks) + Integer.valueOf(mathMarks));
System.debug('Total ' + totalStr);
