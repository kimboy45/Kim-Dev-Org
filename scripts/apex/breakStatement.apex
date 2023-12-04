Integer gooseBumpsAfter = 4;
Integer n = 1000;

for (Integer i = 1; i <= n; i++) {
	System.debug('Listening to the sontg ' + i + ' times');
	if (i == gooseBumpsAfter) {
		break;
	}
}
