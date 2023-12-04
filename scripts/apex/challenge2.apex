//Piza Rates:
//1 slice = $8/slice
//2-3 slices = 7$/slice
//>3 slices = 6$/slice

//Rose ordered 3 slices
//Chandler ordered 1 slice
//Joey ordered 4 slices

final Integer ONLY_ONE_SLICE = 8;
final Integer UPTO_THREE_SLICES = 7;
final Integer MORE_THAN_THREE_SLICES = 6;

Integer roseOrder = 3;
Integer chandlerOrder = 1;
Integer joeyOrder = 4;

Integer roseHasToPay = roseOrder == 3
	? ONLY_ONE_SLICE * roseOrder
	: roseOrder <= 3 ? UPTO_THREE_SLICES * roseOrder : MORE_THAN_THREE_SLICES * roseOrder;
System.debug('Rose has to pay ' + roseHasToPay);
//Total = 24

Integer chandlerHasToPay = chandlerOrder == 1
	? ONLY_ONE_SLICE * chandlerOrder
	: chandlerOrder <= 3 ? UPTO_THREE_SLICES * chandlerOrder : MORE_THAN_THREE_SLICES * chandlerOrder;
System.debug('Chandler has to pay ' + chandlerHasToPay);
//Total = 8

Integer joeyHasToPay = joeyOrder == 4
	? ONLY_ONE_SLICE * joeyOrder
	: joeyOrder <= 3 ? UPTO_THREE_SLICES * joeyOrder : MORE_THAN_THREE_SLICES * joeyOrder;
System.debug('Joey has to pay ' + joeyHasToPay);
//Total = 32
