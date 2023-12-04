List<Id> accountIds = new List<Id>();
for (Account account : [SELECT Id FROM Account]) {
	accountIds.add(account.Id);
}

AccountController.updateAvgCaseResolutionDays(accountIds);
