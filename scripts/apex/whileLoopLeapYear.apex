//Only executes if the confition meets

Integer year = 1100;

while (year <= 2000) {
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
	year++; //increment year
}
