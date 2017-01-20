@isTest
public class SendW2CEmailHelperTest {
    @testSetup static void dataPrep(){
        List<W2CEmails__c> customSettings = new List<W2CEmails__c>();
        customSettings.add(new W2CEmails__c(Name='Calibrations',Email__c='nistcalibrations@gmail.com'));
        insert customSettings;
    }
    static testMethod void sendEmailTest() {        
        List<Case> caseList = new List<Case>(); 
         ID gRT = [Select id from RecordType where name = 'General Inquiries'].id;
        caseList.add(new Case(RecordTypeId = gRT,Origin='Web', Status='New',SuppliedEmail='nagesh.pawar@gmail.com',  
                          Case_Type__c='Calibration Services',Responding_Office__c='Calibrations',
                              Description = 'Test'));       
        insert caseList;

        List<Case> caseExt = [Select Id ,Origin, Status, SuppliedEmail, Case_Type__c,Responding_Office__c,Description 
                              From Case 
                              where Id = :caseList[0].Id];
        System.assertEquals(1, caseExt.size());
    }
}