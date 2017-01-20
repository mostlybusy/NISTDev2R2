/*
 * CaseTrigger 	- 
 * 				- Trigger to send email to SF opt-out organization email id when W2C gets created
 * Helper 		- SendW2CEmailHelper						
 * 
*/

trigger CaseTrigger on Case (before insert, before update, after insert) {
    if(Trigger.isBefore) {
        if(Trigger.isInsert){
            CaseTriggerHelper.insertMultiSelectText(trigger.new);
        }    
        if(Trigger.isUpdate){
            CaseTriggerHelper.updateMultiSelectText(trigger.new, trigger.old); 
        }
    } else if(Trigger.isAfter) {
        if(Trigger.isInsert) {
            SendW2CEmailHelper.sendEmail(Trigger.new);
        }        
    }

}