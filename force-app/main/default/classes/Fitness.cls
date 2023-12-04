public with sharing class Fitness {
	public static Decimal calculateBMI(Decimal weight, Decimal height) {
		if (weight < 0 || height <= 0) {
			return -1;
		}
		Decimal result = weight / (height * height);
		return result.setScale(2);
	}

	public static Decimal calculatePace(Decimal distance, Decimal minutes) {
		if (distance < 0 || minutes <= 0) {
			return -1;
		}
		Decimal hour = minutes / 60;
		Decimal pace = distance / hour;
		return pace;
	}
}
