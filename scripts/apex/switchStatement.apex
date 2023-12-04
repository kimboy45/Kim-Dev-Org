//If current hour is in between 0-12 >> Good Morning
//Else if currnet hour is in between 12 to 12 >> Good Afternoon
//Else Good Evening

Integer currentHour = 17;

switch on currentHour {
	when 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 {
		System.debug('Good Morning');
	}
	when 12, 13, 14, 15, 16 {
		System.debug('Good Afternoon');
	}
	when else {
		System.debug('Good Evening');
	}
}
