// Alias methof
AggregateResult[] groupedResult = [SELECT AVG(Amount), MAX(Amount) FROM Opportunity];

// Not using alias
Double avgAmount = Double.valueOf(groupedResult[0].get('expr0'));
Double maxAmount = Double.valueOf(groupedResult[0].get('expr1'));

//Using alias
AggregateResult[] groupedResult = [SELECT AVG(Amount) avgAmount, MAX(Amount) maxAmount FROM Opportunity];

Double avgAmount = Double.valueOf(groupedResult[0].get('avgAmount'));
Double maxAmount = Double.valueOf(groupedResult[0].get('maxAmount'));

System.debug('Avg amount: ' + avgAmount);
System.debug('Max amount: ' + maxAmount);

//-------------Another example-------//

AggregateResult[] groupedResult = [
	SELECT StageName, MAX(Amount) maxAmount, MIN(Amount) minAmount, AVG(Amount) avgAmount
	FROM Opportunity
	GROUP BY StageName
];

for (AggregateResult result : groupedResult) {
	System.debug(
		'Stage Name: ' +
			result.get('StageName') +
			'Max Amount: ' +
			result.get('maxAmount') +
			'Min Amount: ' +
			result.get('minAmount') +
			'Avg Amount: ' +
			result.get('avgAmount')
	);
}
