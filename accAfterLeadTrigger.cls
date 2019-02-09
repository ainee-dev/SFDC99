// Write a trigger that automatically creates an Account whenever a Lead is created. The Account must be named after the last name of the Lead.
Trigger accAfterLead on  Lead (before insert) {
	for (Lead le : Trigger.new) {
		Account acc = new Account ();
		acc.Name = le.LastName;
		acc.Id = le.Id;
		insert acc;
	}
}
