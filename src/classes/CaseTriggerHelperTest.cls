@isTest
private class CaseTriggerHelperTest {

    static testMethod void testMultiSelectText() {
    
     
    
        ID generalRT = [Select id from RecordType where name = 'General Inquiries'].id;
        Case c1 = new Case (RecordTypeId = generalRT, Responding_Office__c = 'ITL', Subject = 'Test', Description = 'Test');
        insert c1;
        
        c1.Share_case_with__c = null;
        Update c1;
        c1.Share_case_with__c = 'EL; CTL';
        Update c1;
        
        Case c2 = new Case (RecordTypeId = generalRT, Responding_Office__c = 'ITL', Share_Case_With__c = 'EL',
            Subject = 'Test', Description = 'Test');
        insert c2;

        c2.Responding_Office__c = 'SRD'; 
        c2.Share_Case_With__c = 'EL;ITL';  
        Update c2;       
        
    }
}