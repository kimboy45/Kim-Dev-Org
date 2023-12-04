public with sharing class AccountController {
	//Insert only one account record
	public static Account insertAccount(Account accountToInsert) {
		insert accountToInsert;
		return accountToInsert;
	}

	//Insert accounts using List
	public static List<Account> insertAccounts(List<Account> accountsToInsert) {
		insert accountsToInsert;
		return accountsToInsert;
	}

	public static List<Account> getAllAccounts() {
		//Retrieve all accounts and assign to a List collection
		List<Account> accounts = [SELECT Name, Phone FROM Account];
		return accounts;
	}

	public static void printAllAccounts() {
		//Retrieve all accounts and assign to a List collection
		List<Account> accounts = getAllAccounts();
		//Iterate over all accounts and print account information
		for (Account account : accounts) {
			System.debug('Account Name: ' + account.Name + ', Account Phone: ' + account.Phone);
		}
	}

	//Get List size
	public static Integer getAccountSize() {
		Integer size;
		List<Account> accounts = getAllAccounts();
		size = accounts.size();
		return size;
	}

	public static Account updateAccount(Account accountToUpdate) {
		update accountToUpdate;
		return accountToUpdate;
	}

	//-----------------//

	//Update accounts using List
	public static List<Account> updateAccounts(List<Account> accountsToUpdate) {
		update accountsToUpdate;
		return accountsToUpdate;
	}

	//-----------------
	//Delete an account using class
	public static Account deleteAccount(Account accountToDelete) {
		delete accountToDelete;
		return accountToDelete;
	}

	//-------------------------------------------
	// Bulkification Challenge
	public static void updateAvgCaseResolutionDays(List<Id> accountIds) {
		// Map to store the total number of cases per account
		Map<Id, Integer> accountTotalCase = new Map<Id, Integer>();
		// Map to store the total number of days for all cases per account
		Map<Id, Integer> accountTotalCaseDays = new Map<Id, Integer>();

		// Query for closed cases associated with the given account ids
		for (Case caseObj : [
			SELECT Id, CreatedDate, ClosedDate, AccountId
			FROM Case
			WHERE IsClosed = TRUE AND AccountId IN :accountIds
		]) {
			// Check if the account id is not already present in the maps
			if (!accountTotalCase.containsKey(caseObj.AccountId)) {
				// Initialize the total number of cases and total number of days to 0 for the account
				accountTotalCase.put(caseObj.AccountId, 0);
				accountTotalCaseDays.put(caseObj.AccountId, 0);
			}
			// Get the total number of cases for the account and increment it
			Integer totalCases = accountTotalCase.get(caseObj.AccountId);
			totalCases++;
			accountTotalCase.put(caseObj.AccountId, totalCases);

			// Get the total number of case days and increment it based on the time between case creation and closure
			Integer totalCaseDays = accountTotalCaseDays.get(caseObj.AccountId);
			totalCaseDays += caseObj.CreatedDate.date().daysBetween(caseObj.ClosedDate.date());
			accountTotalCaseDays.put(caseObj.AccountId, totalCaseDays);
		}

		// Create a list of accounts to update
		List<Account> accountsToUpdate = new List<Account>();

		// Calculate the average case resolution days for each account and add it to the accountsToUpdate list
		for (Id accountId : accountTotalCase.keySet()) {
			Decimal resolutionDays = accountTotalCaseDays.get(accountId) / accountTotalCase.get(accountId);
			accountsToUpdate.add(new Account(Id = accountId, Avg_Case_Resolution_Days__c = resolutionDays));
		}

		// Update the accounts in the database
		update accountsToUpdate;
	}
}
