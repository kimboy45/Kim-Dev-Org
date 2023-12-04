// Insert single lead
Lead lead = new Lead(LastName = 'Mike', Status = 'Open - Not Converted', Company = 'Mike Corp', Industry = 'Banking');
System.debug('Trigger size: ' + Trigger.size);
System.debug('Is trigger executing: ' + Trigger.isExecuting);
System.debug('Trigger operation type: ' + Trigger.operationType);

insert lead;

// Insert multiple leads
List<Lead> leads = new List<Lead>();
for (Integer i = 0; i < 10; i++) {
	leads.add(
		new Lead(LastName = 'Mike' + i, Status = 'Open - Not Converted', Company = 'Mike Corp', Industry = 'Banking')
	);
}

System.debug('Trigger size: ' + Trigger.size);
System.debug('Is trigger executing: ' + Trigger.isExecuting);
System.debug('Trigger operation type: ' + Trigger.operationType);

insert leads;
