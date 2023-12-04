// Insert multiple leads to test the after insert create task bulkfication in "ImproveLeadTrigger" trigger
List<Lead> leads = new List<Lead>();
for(Integer i=0;i<200;i++) {
	leads.add(new Lead(LastName = 'Mark' + i, Status = 'Open - Not Contacted', Industry = 'Apparel', Company = 'Mark Corp' + i));
}

insert leads;