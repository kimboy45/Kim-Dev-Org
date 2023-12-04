public with sharing class Pizza {
	//Piza Rates:
	//1 slice = $8/slice
	//2-3 slices = 7$/slice
	//>3 slices = 6$/slice

	//Rose ordered 3 slices
	//Chandler ordered 1 slice
	//Joey ordered 4 slices

	static final Integer ONLY_ONE_SLICE = 8;
	static final Integer UPTO_THREE_SLICES = 7;
	static final Integer MORE_THAN_THREE_SLICES = 6;

	public Integer getBill(Integer numberOfSlices) {
		Integer billAmount = 0;
		if (numberOfSlices == 1) {
			billAmount = ONLY_ONE_SLICE * numberOfSlices;
		} else if (numberOfSlices <= 3) {
			billAmount = UPTO_THREE_SLICES * numberOfSlices;
		} else {
			billAmount = MORE_THAN_THREE_SLICES * numberOfSlices;
		}
		return billAmount;
	}

	/* or you can do like this 
	public Integer getBill(Integer numberOfSlices) {
		if (numberOfSlices == 1) {
			return ONLY_ONE_SLICE * numberOfSlices;
		} else if (numberOfSlices <= 3) {
			return UPTO_THREE_SLICES * numberOfSlices;
		} else {
			return MORE_THAN_THREE_SLICES * numberOfSlices;
		}
	}
	*/
}
