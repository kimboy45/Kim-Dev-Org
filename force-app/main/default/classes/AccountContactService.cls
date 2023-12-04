public with sharing class AccountContactService {
	public static void updateAccountContacts(Set<Id> accountIds) {
		// Get aggregate result for all accounts
		List<AggregateResult> results = [
			SELECT AccountId, COUNT(Id) totalContacts
			FROM Contact
			WHERE Active__c = TRUE AND AccountId IN :accountIds
			GROUP BY AccountId
		];

		// Build final list of accounts to update
		Map<Id, Account> accountsToUpdate = new Map<Id, Account>();

		for (AggregateResult result : results) {
			// Get the Account Id and number of active contacts
			String getAccountId = String.valueOf(result.get('AccountId'));
			Integer totalContacts = Integer.valueOf(result.get('totalContacts'));

			// Make sure you use Id field in your account to updae it
			Account account = new Account(Id = getAccountId, Active_Contacts__c = totalContacts);
			accountsToUpdate.put(getAccountId, account);
		}

		// Update accounts with 0 active contacts
		for (Id accountId : accountIds) {
			if (!accountsToUpdate.containsKey(accountId)) {
				accountsToUpdate.put(accountId, new Account(Id = accountId, Active_Contacts__c = 0));
			}
		}

		// Update final list of account
		update accountsToUpdate.values();
	}
}

