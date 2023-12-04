public with sharing class MathController {
	public static void addOperation(Integer number1, Integer number2) {
		try {
			Integer result = number1 / number2;
			System.debug('Result is ' + result);
		} catch (MathException e) {
			System.debug('Math exception caught' + e.getCause());
		}
	}
}
