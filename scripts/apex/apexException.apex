//Match exception example
try {
	Double result = 10 / 0;
	System.debug('Result is ' + result);
} catch (MathException e) {
	System.debug('Cought math exception');
} finally {
	System.debug('Finally called');
}

//DML exception
try {
	Account account = new Account();
	insert account;
} catch (DmlException e) {
	System.debug('Cought DML exception');
} finally {
	System.debug('Finally called');
}

//Handle both math and dml expections
try {
	Account account = new Account();
	insert account;
} catch (MathException e) {
	System.debug('Cought Math exception');
} catch (DmlException e) {
	System.debug('Cought DML exception');
} finally {
	System.debug('Finally called');
}

//Call all types of exception
try {
	Account account = new Account();
	insert account;
} catch (Exception e) {
	System.debug('Cought generic exception');
} finally {
	System.debug('Finally called');
}

//Get detailed exceptions message using the methods
try {
	Double result = 10 / 0;
	System.debug('Result is ' + result);
} catch (Exception e) {
	System.debug('Cause ' + e.getCause());
	System.debug('Message ' + e.getMessage());
	System.debug('Line Number ' + e.getLineNumber());
	System.debug('Stact Trace ' + e.getStackTraceString());
}

//Custom Exception
try {
	throw new CustomException('My custom exception');
} catch (Exception e) {
	System.debug('Cause ' + e.getCause());
	System.debug('Message ' + e.getMessage());
	System.debug('Line Number ' + e.getLineNumber());
	System.debug('Stact Trace ' + e.getStackTraceString());
}
