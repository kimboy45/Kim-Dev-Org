@isTest
public with sharing class FitnessTest {
	@isTest
	public static void calculateBMITest1() {
		Decimal weight = 60;
		Decimal height = 1.2;

		Decimal result = Fitness.calculateBMI(weight, height);
		Assert.areEqual(41.67, result, 'BMI should be 41.67 for 60 kgs and 1.2 meters');
	}

	@isTest
	public static void calculateBMITest2() {
		Decimal weight = 0;
		Decimal height = 1.2;

		Decimal result = Fitness.calculateBMI(weight, height);
		Assert.areEqual(0, result, 'BMI should be 0 for 0 kg and 1.2 meters');
	}

	@isTest
	public static void calculateBMITest3() {
		Decimal weight = 60;
		Decimal height = 0;

		Decimal result = Fitness.calculateBMI(weight, height);
		Assert.areEqual(-1, result, 'Invalid input');
	}

	@isTest
	public static void calculateBMITest4() {
		Decimal weight = -60;
		Decimal height = 1.2;

		Decimal result = Fitness.calculateBMI(weight, height);
		Assert.areEqual(-1, result, 'Invalid input');
	}

	@isTest
	public static void calculateBMITest5() {
		Decimal weight = 60;
		Decimal height = -1.2;

		Decimal result = Fitness.calculateBMI(weight, height);
		Assert.areEqual(-1, result, 'Invalid input');
	}

	@isTest
	public static void calculatePaceTest1() {
		Decimal distance = 10;
		Decimal minutes = 60;

		Decimal pace = Fitness.calculatePace(distance, minutes);
		Assert.areEqual(10, pace, 'Pace should be 10');
	}

	@isTest
	public static void calculatePaceTest2() {
		Decimal distance = 10;
		Decimal minutes = 0;

		Decimal pace = Fitness.calculatePace(distance, minutes);
		Assert.areEqual(-1, pace, 'Invalid input');
	}

	@isTest
	public static void calculatePaceTest3() {
		Decimal distance = 0;
		Decimal minutes = 60;

		Decimal pace = Fitness.calculatePace(distance, minutes);
		Assert.areEqual(0, pace, 'Pace should be 0');
	}

	@isTest
	public static void calculatePaceTest4() {
		Decimal distance = -10;
		Decimal minutes = 60;

		Decimal pace = Fitness.calculatePace(distance, minutes);
		Assert.areEqual(-1, pace, 'Invalid input');
	}

	@isTest
	public static void calculatePaceTest5() {
		Decimal distance = 10;
		Decimal minutes = -60;

		Decimal pace = Fitness.calculatePace(distance, minutes);
		Assert.areEqual(-1, pace, 'Invalid input');
	}
}
