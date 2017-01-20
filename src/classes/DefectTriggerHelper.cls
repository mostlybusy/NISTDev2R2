public with sharing class DefectTriggerHelper {
	public static void SetDefectIdentifierOnCreate (List<Defect__c> triggerNew, Map<Id, Defect__c> triggerOldMap) {
		for (Defect__c d: triggerNew) {
			if (d.Defect_Identifier__c == null) {
				d.Defect_Identifier__c = UserInfo.getUserId();
			}
		}		

	}
}