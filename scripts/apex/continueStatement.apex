//List of all days
List<String> days = new List<String>{ 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday' };
//Iterate over the list
for (Integer i = 0; i < days.size(); i++) {
	if (days.get(i) == 'Monday' || days.get(i) == 'Tuesday') {
		continue;
	}
	System.debug(days.get(i) + ' eat chicken');
}
