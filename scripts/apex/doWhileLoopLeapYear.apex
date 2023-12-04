//Always execute at least once
//Year starts at 1100 up untill 2000
//Identify which years are leap year from that range

Integer year = 1100;

do {
	System.debug('Processing year ' + year);
	if (Math.mod(year, 4) == 0) {
		if (Math.mod(year, 100) == 0) {
			if (Math.mod(year, 400) == 0) {
				System.debug(year + ' is a leap year');
			}
		} else {
			System.debug(year + ' is a leap year');
		}
	}
	year++;
} while (year <= 2000);
System.debug('Year value after loop ' + year);
