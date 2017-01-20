trigger ContactTrigger on Contact (before insert, before update) {
	
	if (Trigger.isInsert || Trigger.isUpdate) {
	    ContactTriggerHelper.updateStaff(trigger.new);
	}
    
}