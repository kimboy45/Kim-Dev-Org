public with sharing class LeadTriggerHandler {
	public static Boolean alreadyExecuted = false;

	public static void beforeInsertHandler(List<Lead> newRecords) {
		for (Lead lead : newRecords) {
			if (String.isBlank(lead.LeadSource)) {
				lead.LeadSource = 'Other';
			}

			if (String.isBlank(lead.Industry)) {
				lead.addError('The Industry field cannot be blank');
			}
		}
	}

	public static void beforeUpdateHandler(List<Lead> newRecords, Map<Id, Lead> oldRecordsMap) {
		for (Lead lead : newRecords) {
			if (String.isBlank(lead.LeadSource)) {
				lead.LeadSource = 'Other';
			}

			if (
				(lead.Status == 'Closed - Converted' || lead.Status == 'Closed - Not Converted') &&
				oldRecordsMap.get(lead.Id).Status == 'Open - Not Contacted	'
			) {
				lead.Status.addError('You cannot directly close an open lead');
			}
		}
	}

	public static void afterInsertHandler(List<Lead> newRecords) {
		List<Task> leadTasks = new List<Task>();

		for (Lead lead : newRecords) {
			// Create a new task
			Task leadtask = new Task(Subject = 'Follow up on lead status', WhoId = lead.Id);

			leadTasks.add(leadtask);
		}

		insert leadTasks;

		// Insert another lead
		// This will call the trigger recursively
		if (LeadTriggerHandler.alreadyExecuted == false) {
			LeadTriggerHandler.alreadyExecuted = true;

			Lead anotherLead = new Lead(
				LastName = 'Test Another Lead',
				Status = 'Open - Not Converted',
				Industry = 'Apparel',
				Company = 'Test Another Company'
			);

			insert anotherLead;
		}
	}
}
