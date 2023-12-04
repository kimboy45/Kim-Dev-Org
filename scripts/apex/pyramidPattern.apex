for (Integer i = 0; i <= 4; i++) {
	String s = '';
	for (Integer j = 0; j <= 8; j++) {
		if (j > 4 - i && j < 4 + i) {
			s = s + '*';
		} else {
			s = s + '_';
		}
	}
	System.debug(s);
}
