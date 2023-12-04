//A year is a leap year, if it is evenly divisble bt 4
//Except, not a leap year if it is divisible by 100
//Unless the year is also divisbile by 400

Integer year = 2000;

//Check if year is divisible by 4
if (Math.mod(year, 4) == 0) {
	//Check if year is divisble by 100
	if (Math.mod(year, 100) == 0) {
		//Check if year is divisble by 400
		if (Math.mod(year, 400) == 0) {
			System.debug('It is a leap year');
		} else {
			System.debug('Not a leap year');
		}
	} else {
		System.debug('It is a leap year');
	}
} else {
	System.debug('Not a leap year');
}
