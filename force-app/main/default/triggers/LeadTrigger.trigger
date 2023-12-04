trigger LeadTrigger on Lead(before insert, after insert, before update, after update) {
	// Calling apex class methods from trigger handler
	switch on Trigger.operationType {
		when BEFORE_INSERT {
			LeadTriggerHandler.beforeInsertHandler(Trigger.new);
		}
		when AFTER_INSERT {
			LeadTriggerHandler.afterInsertHandler(Trigger.new);
		}
		when BEFORE_UPDATE {
			LeadTriggerHandler.beforeUpdateHandler(Trigger.new, Trigger.oldMap);
		}
	}

}
