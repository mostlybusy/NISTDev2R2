trigger AgreementTrigger on Agreement__c (after insert, before update) {
    if (Trigger.isInsert) {
        AgreementTriggerHelper.insertAgreement(Trigger.new);
    }
    
    if (Trigger.isUpdate) {
        AgreementTriggerHelper.updateAgreement(Trigger.new, Trigger.old); 
    }
}