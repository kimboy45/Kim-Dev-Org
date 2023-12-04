Integer n = 10;

for (Integer row = 0; row < 10; row++) {
	String star = '';
	for (Integer column = 0; column <= row; column++) {
		star += '*  ';
	}
	System.debug(star);
}
