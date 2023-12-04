//Fizzbuzz problem
//If a number is divisible by 3, print 'fizz' instead of a number
//If a number is divisible by 5, print 'buzz' instead of a number
//If a number is divisible by 3 & 5, print 'fizzbuzz' instead of a number
//Result: 1,2,fizz,4,buzz....14,fizzbuzz

Integer i = 1;

do {
	if (Math.mod(i, 3) == 0 && Math.mod(i, 5) == 0) {
		System.debug('fizzbuzz');
	} else if (Math.mod(i, 3) == 0) {
		System.debug('fizz');
	} else if (Math.mod(i, 5) == 0) {
		System.debug('buzz');
	} else {
		System.debug(i);
	}
	i++;
} while (i <= 100);
