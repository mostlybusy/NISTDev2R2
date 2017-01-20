trigger AccountTrigger on Account (before delete, before update) {
	//Account Trigger Sprint 2
    if (Trigger.isDelete) {
    	AccountTriggerHelper.deleteStaff(trigger.old); 
    	
    }
    
    if (Trigger.isUpdate && Trigger.isBefore) {
    	AccountTriggerHelper.updateStaff(trigger.new, trigger.old);   
    	
    }    
}