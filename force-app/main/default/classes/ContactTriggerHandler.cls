public with sharing class ContactTriggerHandler {
	public static void afterInsertHandler(List<Contact> newcontacts) {
		Set<Id> accountIds = new Set<Id>();

		for (Contact contact : newcontacts) {
			if (String.isNotBlank(contact.AccountId)) {
				// Store the account ids in the set
				accountIds.add(contact.AccountId);
			}

			AccountContactService.updateAccountContacts(accountIds);
		}
	}

	public static void afterUpdateHandler(List<Contact> newcontacts, Map<Id, Contact> oldContacts) {
		Set<Id> accountIds = new Set<Id>();

		for (Contact contact : newcontacts) {
			// Capture the account id only if the checkbox value is changed
			if (String.isNotBlank(contact.AccountId) && oldContacts.get(contact.Id).Active__c != contact.Active__c) {
				// Store the account ids in the set
				accountIds.add(contact.AccountId);
			} else if (oldContacts.get(contact.Id).AccountId != contact.AccountId) {
				accountIds.add(contact.AccountId);
				accountIds.add(oldContacts.get(contact.Id).AccountId);
			}

			AccountContactService.updateAccountContacts(accountIds);
		}
	}

	public static void afterDeleteHandler(List<Contact> oldContacts) {
		Set<Id> accountIds = new Set<Id>();

		for (Contact contact : oldContacts) {
			if (String.isNotBlank(contact.AccountId)) {
				// Store the account ids in the set
				accountIds.add(contact.AccountId);
			}

			AccountContactService.updateAccountContacts(accountIds);
		}
	}

	public static void afterUndeleteHandler(List<Contact> newContacts) {
		Set<Id> accountIds = new Set<Id>();

		for (Contact contact : newContacts) {
			if (String.isNotBlank(contact.AccountId)) {
				// Store the account ids in the set
				accountIds.add(contact.AccountId);
			}

			AccountContactService.updateAccountContacts(accountIds);
		}
	}
}
