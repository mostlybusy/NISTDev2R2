trigger UserStoryTrigger on UserStory__c (after insert, before update) {


    System.debug('In the Trigger');
    
    if(Trigger.isInsert) {
        UserStoryTriggerHelper.CalculateUserStoryStats(Trigger.new, Trigger.oldMap);
    }

    if(Trigger.isBefore && Trigger.isInsert){

    }
       
	if (Trigger.isUpdate) {
		if (Trigger.isAfter) {
			system.debug('isafter');
		}
		if (Trigger.isBefore) {
			System.debug('isBefore');
			UserStoryTriggerHelper.CalculateUserStoryStats(Trigger.new, Trigger.oldMap);
		}
	}

     
}