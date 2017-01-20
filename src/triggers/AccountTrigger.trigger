trigger AccountTrigger on Account (before delete, before update) {
    if (Trigger.isDelete) {
    	AccountTriggerHelper.deleteStaff(trigger.old); 
    	
    }
    
    if (Trigger.isUpdate && Trigger.isBefore) {
    	AccountTriggerHelper.updateStaff(trigger.new, trigger.old);   
    	
    }    
}