public with sharing class HelloWorld {
	public static void printMessage(String msg) {
		System.debug(msg);
	}

	//Get method integer parameter
	public String getDay(Integer dayNumber) {
		String dayString = '';

		switch on dayNumber {
			when 0 {
				dayString = 'Sunday';
			}
			when 1 {
				dayString = 'Monday';
			}
			when 2 {
				dayString = 'Tuesday';
			}
			when 3 {
				dayString = 'Wednesday';
			}
			when 4 {
				dayString = 'Thursday';
			}
			when 5 {
				dayString = 'Friday';
			}
			when 6 {
				dayString = 'Saturday';
			}
			when else {
				dayString = 'Invalid day number';
			}
		}
		return dayString;
	}

	//Get method string parameter
	public String getDay(String dayName) {
		String dayString = '';

		switch on dayName {
			when 'Sun' {
				dayString = 'Sunday';
			}
			when 'Mon' {
				dayString = 'Monday';
			}
			when 'Tue' {
				dayString = 'Tuesday';
			}
			when 'Wed' {
				dayString = 'Wednesday';
			}
			when 'Thu' {
				dayString = 'Thursday';
			}
			when 'Fri' {
				dayString = 'Friday';
			}
			when 'Sat' {
				dayString = 'Saturday';
			}
			when else {
				dayString = 'Invalid day name';
			}
		}
		return dayString;
	}
}
