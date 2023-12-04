//The pattern challenge
//row     0, 1, 2, 3 ,4
//column  0, 1, 2, 3, 4

/* Result
 *
 * *
 * * *
 * * * *
 * * * * *
 */

Integer n = 5;

//for loop to build rows
for (Integer row = 0; row < n; row++) {
	String pattern = ' ';
	//for loop to build columns
	for (Integer column = 0; column <= row; column++) {
		pattern = pattern + '*  ';
	}
	System.debug(pattern);
}
