@isTest
public with sharing class Covid19Test {
	@isTest
	public static void treatPatientTestPositive() {
		//Create an instance of the class
		Covid19 cebu = new Covid19(10);
		//Check if the count is 10 or not
		Assert.areEqual(10, cebu.getTreated(), 'Treated count does not match');

		//Create a new instance
		Covid19 bohol = new Covid19(112);
		//Check if the count is 122 or not
		Assert.areEqual(112, bohol.getTreated(), 'Treated count does not match');
		//Check the count of recoveredInCountry, it should be 122
		Assert.areEqual(122, Covid19.recoveredInCountry, 'Treated count does not match');

		//Call the treatPatient method
		cebu.treatPatient();
		//cebu.getTreated();
		Assert.isTrue(cebu.getTreated() == 11, 'Treated count does not match');
		Assert.isTrue(Covid19.recoveredInCountry == 123, 'Treated count does not match');
	}

	@isTest
	public static void treatPatientTestNegative() {
		//Create an instance of the class
		Covid19 cebu = new Covid19(-10);
		//Check if the count is 0 or not
		Assert.areEqual(0, cebu.getTreated(), 'Treated count does not match');
	}
}
