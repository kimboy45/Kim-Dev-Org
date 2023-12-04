for (Integer i = 1; i <= 5; i++) {
	String s = '';
	Boolean k = true;
	for (Integer j = 1; j <= 9; j++) {
		if (j >= i && j <= 10 - i && k) {
			s = s + 'x';
			k = false;
		} else {
			s = s + '_';
			k = true;
		}
	}
	System.debug(s);
}
