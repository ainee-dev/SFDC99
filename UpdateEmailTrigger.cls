// Homework: Write a trigger that automatically changes a Contact’s email address to “hello@world.com” whenever a Contact is created. Verify it works!
Trigger UpdateEmail on Contact (before insert) {
	for (Contact c : Trigger.new) {
		c.email = 'hello@world.com';
	}
}
