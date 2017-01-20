@isTest

private class AgreementTriggerHelperTest{

    static testMethod void TestinsertAgreement() {
   
        RecordType recContact = [Select id from RecordType where name = 'Contact'];
        RecordType recStaff = [Select id from RecordType where name = 'Staff/Associate'];
        Account acct = new Account (Name = 'test acct');
        insert acct;
        Contact cont = new Contact (LastName = 'testStaff', Account = acct, RecordTypeid = recStaff.id, NIST_OU__c = 'MEP');
        insert cont;
        System.debug('Account.name: '+acct.name + acct.Id);
    
    

//Create Agreements 
    
    
      
     Agreement__c  a1 = new Agreement__c (
                             Agreement_Partner__c = acct.id, 
                             Agreement_Title__c = 'test title', 
                             Agreement_Start_Date__c = system.today(), 
                             NIST_PI__c = cont.id,
                             Agreement_Type__c = 'CRADA',
                             Agreement_Stage__c = 'New', 
                             Agreement_Status__c = 'Active',
                             Human_Subjects_Inclusion__c = TRUE,
                             Status_Human_Sub_Inc__c = 'Notification Sent',
                             International_Office_IAAO__c = TRUE,
                             Status_International_Office__c = 'Notification Sent',
                             Animal_subject_Inclusion__c = TRUE,
                             Status_Animal_Sub_incl__c = 'Notification Sent'
                                                       );
                                                            
        insert a1;
               
                a1.Agreement_Stage__c = 'OU Approved';  
                a1.Agreement_Status__c = 'Pending Amendment';
                a1.Status_Human_Sub_Inc__c ='Approved';
                a1.Status_International_Office__c ='Approved';
                a1.Status_Animal_Sub_incl__c ='Approved';
                update a1;
                
             Agreement__c  a2 = new Agreement__c (
                             Agreement_Partner__c = acct.id, 
                             Agreement_Title__c = 'test title', 
                             Agreement_Start_Date__c = system.today(), 
                             NIST_PI__c = cont.id,
                             Agreement_Type__c = 'CRADA',
                             Agreement_Stage__c = 'Agreement in Process', 
                             Agreement_Status__c = 'Pending Amendment',
                             Human_Subjects_Inclusion__c = TRUE,
                             Status_Human_Sub_Inc__c = 'Approved',
                             International_Office_IAAO__c = TRUE,
                             Status_International_Office__c = 'Approved',
                             Animal_subject_Inclusion__c = TRUE,
                             Status_Animal_Sub_incl__c = 'Approved'
                                                       );
                                                            
        insert a2;
               
                a2.Agreement_Stage__c = 'PI Approved';  
                a2.Agreement_Status__c = 'Terminated';
                a2.Status_Human_Sub_Inc__c ='Approved';
                a2.Status_International_Office__c ='Approved';
                a2.Status_Animal_Sub_incl__c ='Approved';
                update a2;   
                
             Agreement__c  a3 = new Agreement__c (
                             Agreement_Partner__c = acct.id, 
                             Agreement_Title__c = 'test title', 
                             Agreement_Start_Date__c = system.today(), 
                             NIST_PI__c = cont.id,
                             Agreement_Type__c = 'CRADA',
                             Agreement_Stage__c = 'OU Approved', 
                             Agreement_Status__c = 'Agreement in Process',
                             Human_Subjects_Inclusion__c = TRUE,
                             Status_Human_Sub_Inc__c = 'Memo Received',
                             International_Office_IAAO__c = TRUE,
                             Status_International_Office__c = 'Memo Received',
                             Animal_subject_Inclusion__c = TRUE,
                             Status_Animal_Sub_incl__c = 'Memo Received'
                                                       );
                                                            
        insert a3;
               
                a3.Agreement_Stage__c = 'OU Approved';  
                a3.Agreement_Status__c = 'Expired';
                a3.Status_Human_Sub_Inc__c ='Notification Sent';
                a3.Status_International_Office__c ='Notification Sent';
                a3.Status_Animal_Sub_incl__c ='Notification Sent';
                update a3;   
                
                
                
                Agreement__c  a4 = new Agreement__c (
                             Agreement_Partner__c = acct.id, 
                             Agreement_Title__c = 'test title', 
                             Agreement_Start_Date__c = system.today(), 
                             NIST_PI__c = cont.id,
                             Agreement_Type__c = 'CRADA',
                             Agreement_Stage__c = 'OCC Signed', 
                             Agreement_Status__c = 'Pending Amendment',
                             Human_Subjects_Inclusion__c = TRUE,
                             Status_Human_Sub_Inc__c = 'Notification Sent',
                             International_Office_IAAO__c = TRUE,
                             Status_International_Office__c = 'Notification Sent',
                             Animal_subject_Inclusion__c = TRUE,
                             Status_Animal_Sub_incl__c = 'Notification Sent'
                                                       );
                                                            
        insert a4;
               
                a4.Agreement_Stage__c = 'TPO Signed/Agreement Finalized';  
                a4.Agreement_Status__c = 'Terminated';
                a4.Status_Human_Sub_Inc__c ='Approved';
                a4.Status_International_Office__c ='Approved';
                a4.Status_Animal_Sub_incl__c ='Approved';
                update a4;
                
                Agreement__c  a5 = new Agreement__c (
                             Agreement_Partner__c = acct.id, 
                             Agreement_Title__c = 'test title', 
                             Agreement_Start_Date__c = system.today(), 
                             Agreement_End_Date__c = system.today(),
                             NIST_PI__c = cont.id,
                             Agreement_Type__c = 'CRADA',
                             Agreement_Stage__c = 'OCC Approval', 
                             Agreement_Status__c = 'Canceled',
                             Human_Subjects_Inclusion__c = TRUE,
                             Status_Human_Sub_Inc__c = 'Notification Sent',
                             International_Office_IAAO__c = TRUE,
                             Status_International_Office__c = 'Notification Sent',
                             Animal_subject_Inclusion__c = TRUE,
                             Status_Animal_Sub_incl__c = 'Notification Sent',
                             Patent_Office__c = TRUE,
                             Status_Patent_Office__c = 'Notification Sent',
                             US_Trade_Representative__c = TRUE,
                             Status_US_Trade_Rep__c = 'Notification Sent'
                                                       );
                                                            
        insert a5;
               
                a5.Agreement_Stage__c = 'Partner Signed';  
                a5.Agreement_Status__c = 'Terminated';
                a5.Status_Human_Sub_Inc__c ='Approved';
                a5.Status_International_Office__c ='Approved';
                a5.Status_Animal_Sub_incl__c ='Approved';
                a5.Status_Patent_Office__c = 'Approved';
                a5.Status_US_Trade_Rep__c = 'Memo Received';
                update a5;
                
                Agreement__c  a6 = new Agreement__c (
                             Agreement_Partner__c = acct.id, 
                             Agreement_Title__c = 'test title', 
                             Agreement_Start_Date__c = system.today(), 
                             Agreement_End_Date__c = system.today(),
                             NIST_PI__c = cont.id,
                             Agreement_Type__c = 'CRADA',
                             Agreement_Stage__c = 'TPO Signed/Agreement Finalized', 
                             Agreement_Status__c = 'Canceled',
                             Human_Subjects_Inclusion__c = TRUE,
                             Status_Human_Sub_Inc__c = 'Notification Sent',
                             International_Office_IAAO__c = TRUE,
                             Status_International_Office__c = 'Notification Sent',
                             Animal_subject_Inclusion__c = TRUE,
                             Status_Animal_Sub_incl__c = 'Notification Sent',
                             Patent_Office__c = TRUE,
                             Status_Patent_Office__c = 'Memo Received',
                             US_Trade_Representative__c = TRUE,
                             Status_US_Trade_Rep__c = 'Notification Sent'
                                                       );
                                                            
        insert a6;
               
                a6.Agreement_Stage__c = 'OCC Signed';  
                a6.Agreement_Status__c = 'Canceled';
                a6.Status_Human_Sub_Inc__c ='Memo Received';
                a6.Status_International_Office__c ='Memo Received';
                a6.Status_Animal_Sub_incl__c ='Memo Received';
                a6.Status_Patent_Office__c = 'Notification Sent';
                a6.Status_US_Trade_Rep__c = 'Memo Received';
                update a6;
                           
             
                
        Agreement__c  a7 = new Agreement__c (
                             Agreement_Partner__c = acct.id, 
                             Agreement_Title__c = 'test title', 
                             Agreement_Start_Date__c = system.today(), 
                             Agreement_End_Date__c = system.today(),
                             NIST_PI__c = cont.id,
                             Agreement_Type__c = 'CRADA',
                             Agreement_Stage__c = 'Partner Signed', 
                             Agreement_Status__c = 'Active',
                             Human_Subjects_Inclusion__c = TRUE,
                             Status_Human_Sub_Inc__c = 'Notification Sent',
                             International_Office_IAAO__c = TRUE,
                             Status_International_Office__c = 'Notification Sent',
                             Animal_subject_Inclusion__c = TRUE,
                             Status_Animal_Sub_incl__c = 'Notification Sent',
                             Patent_Office__c = TRUE,
                             Status_Patent_Office__c = 'Notification Sent',
                             US_Trade_Representative__c = TRUE,
                             Status_US_Trade_Rep__c = 'Memo Received'
                                                       );
                                                            
        insert a7;
               
                a7.Agreement_Stage__c = 'OCC Signed';  
                a7.Agreement_Status__c = 'Canceled';
                a7.Status_Human_Sub_Inc__c ='Memo Received';
                a7.Status_International_Office__c ='Memo Received';
                a7.Status_Animal_Sub_incl__c ='Approved';
                a7.Status_Patent_Office__c = 'Approved';
                a7.Status_US_Trade_Rep__c = 'Notification Sent';
                update a7;
                
        Agreement__c  a8 = new Agreement__c (
                             Agreement_Partner__c = acct.id, 
                             Agreement_Title__c = 'test title', 
                             Agreement_Start_Date__c = system.today(), 
                             Agreement_End_Date__c = system.today(),
                             NIST_PI__c = cont.id,
                             Agreement_Type__c = 'CRADA',
                             Agreement_Stage__c = 'OU Signed', 
                             Agreement_Status__c = 'Active',
                             Human_Subjects_Inclusion__c = TRUE,
                             Status_Human_Sub_Inc__c = 'Notification Sent',
                             International_Office_IAAO__c = TRUE,
                             Status_International_Office__c = 'Notification Sent',
                             Animal_subject_Inclusion__c = TRUE,
                             Status_Animal_Sub_incl__c = 'Notification Sent',
                             Patent_Office__c = TRUE,
                             Status_Patent_Office__c = 'Approved',
                             US_Trade_Representative__c = TRUE,
                             Status_US_Trade_Rep__c = 'Notification Sent'
                                                       );
                                                            
        insert a8;
               
                a8.Agreement_Stage__c = 'Routed To OCC For Approval';  
                a8.Agreement_Status__c = 'Canceled';
                a8.Status_Human_Sub_Inc__c ='Memo Received';
                a8.Status_International_Office__c ='Memo Received';
                a8.Status_Animal_Sub_incl__c ='Memo Received';
                a8.Status_Patent_Office__c = 'Memo Received';
                a8.Status_US_Trade_Rep__c = 'Memo Received';
                update a8;                
                
          }
    

}