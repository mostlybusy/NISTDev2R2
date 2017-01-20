trigger DefectTrigger on Defect__c (before insert) {
	 System.debug('In the Trigger');
	
	if(Trigger.isInsert) {
		DefectTriggerHelper.SetDefectIdentifierOnCreate(Trigger.new, Trigger.oldMap);
	}

}