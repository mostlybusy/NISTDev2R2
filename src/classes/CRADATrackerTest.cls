@isTest
public class CRADATrackerTest {

    static testMethod void testCRADATracker () {
        
        RecordType recContact = [Select id from RecordType where name = 'Contact'];
        RecordType recStaff = [Select id from RecordType where name = 'Staff/Associate'];
        Account acct = new Account (Name = 'test acct');
        insert acct;
        Contact cont = new Contact (LastName = 'testStaff', Account = acct, RecordTypeid = recStaff.id, NIST_OU__c = 'MEP');
        insert cont;
        System.debug('Account.name: '+acct.name + acct.Id);
       
        //Create Agreements       
        Agreement__c CRADA01 = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'New', Agreement_Status__c = 'Active');
        Agreement__c CRADA02 = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'PI Approved', Agreement_Status__c = 'Active');
        Agreement__c CRADA03 = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'OU Approved', Agreement_Status__c = 'Active');
        Agreement__c CRADA04 = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'Routed to OCC for Approval', Agreement_Status__c = 'Active');
        Agreement__c CRADA05 = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'OCC Approval', Agreement_Status__c = 'Active', 
                                              Agreement_End_Date__c = System.today().addDays(3));  
        Agreement__c CRADA06 = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'Partner Signed', Agreement_Status__c = 'Active');
        Agreement__c CRADA07 = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'OCC Signed', Agreement_Status__c = 'Active');
        Agreement__c CRADA08 = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'OU Signed', Agreement_Status__c = 'Active');
        Agreement__c CRADA09 = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'TPO Signed/Agreement Finalized', Agreement_Status__c = 'Active');
        Agreement__c CRADA10 = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = '', Agreement_Status__c = 'Active');  
                                                                                                                                                                                                                                                                
        insert CRADA01;
        insert CRADA02;
        insert CRADA03;
        insert CRADA04;
        insert CRADA05;
        insert CRADA06;
        insert CRADA07;
        insert CRADA08;
        insert CRADA09;
        insert CRADA10;
        
        //Canceled Agreements
        Agreement__c CRADA01C = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'New', Agreement_Status__c = 'Canceled');
        Agreement__c CRADA02C = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'PI Approved', Agreement_Status__c = 'Canceled');
        Agreement__c CRADA03C = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'OU Approved', Agreement_Status__c = 'Canceled');
        Agreement__c CRADA04C = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'Routed to OCC for Approval', Agreement_Status__c = 'Canceled');
        Agreement__c CRADA05C = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'OCC Approval', Agreement_Status__c = 'Canceled',
                                              Agreement_End_Date__c = System.today().addDays(3));  
        Agreement__c CRADA06C = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'Partner Signed', Agreement_Status__c = 'Canceled');
        Agreement__c CRADA07C = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'OCC Signed', Agreement_Status__c = 'Canceled');
        Agreement__c CRADA08C = new Agreement__c (Agreement_Partner__c = acct.id, Agreement_Title__c = 'test title', 
                                              Agreement_Start_Date__c = system.today(), NIST_PI__c = cont.id,
                                              Agreement_Stage__c = 'OU Signed', Agreement_Status__c = 'Canceled');
                                              
    insert CRADA01C;
        insert CRADA02C;
        insert CRADA03C;
        insert CRADA04C;
        insert CRADA05C;
        insert CRADA06C;
        insert CRADA07C;
        insert CRADA08C;                                              


        Test.startTest();        

        //Test for 01
        PageReference pageRef = Page.CRADA_Tracker;
        Test.setCurrentPage(pageRef);
        ApexPages.Standardcontroller sc = new ApexPages.Standardcontroller(CRADA01);
        pageRef.getParameters().put('Id', CRADA01.Id);
        Test.setCurrentPage(pageRef);

        CRADA_Tracker ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage();
        
        //Test for 02
        sc = new ApexPages.Standardcontroller(CRADA02);
        pageRef.getParameters().put('Id', CRADA02.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage();
        
        //Test for 03
        sc = new ApexPages.Standardcontroller(CRADA03);
        pageRef.getParameters().put('Id', CRADA03.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage();
        
        //Test for 04
        sc = new ApexPages.Standardcontroller(CRADA04);
        pageRef.getParameters().put('Id', CRADA04.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage();
        
        //Test for 05
        sc = new ApexPages.Standardcontroller(CRADA05);
        pageRef.getParameters().put('Id', CRADA05.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage(); 
        
        //Test for 06
        sc = new ApexPages.Standardcontroller(CRADA06);
        pageRef.getParameters().put('Id', CRADA06.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage();        
        
        //Test for 07
        sc = new ApexPages.Standardcontroller(CRADA07);
        pageRef.getParameters().put('Id', CRADA07.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage(); 
        
        //Test for 08
        sc = new ApexPages.Standardcontroller(CRADA08);
        pageRef.getParameters().put('Id', CRADA08.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage();     
        
        //Test for 09
        sc = new ApexPages.Standardcontroller(CRADA09);
        pageRef.getParameters().put('Id', CRADA09.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage();    
        
        //Test for 10
        sc = new ApexPages.Standardcontroller(CRADA10);
        pageRef.getParameters().put('Id', CRADA10.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage(); 
        
        //Test for 01C
    sc = new ApexPages.Standardcontroller(CRADA01C);
        pageRef.getParameters().put('Id', CRADA01C.Id);
        Test.setCurrentPage(pageRef);

        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage();
        
        //Test for 02C
        sc = new ApexPages.Standardcontroller(CRADA02C);
        pageRef.getParameters().put('Id', CRADA02C.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage();
        
        //Test for 03C
        sc = new ApexPages.Standardcontroller(CRADA03C);
        pageRef.getParameters().put('Id', CRADA03C.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage();
        
        //Test for 04C
        sc = new ApexPages.Standardcontroller(CRADA04C);
        pageRef.getParameters().put('Id', CRADA04C.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage();
        
        //Test for 05C
        sc = new ApexPages.Standardcontroller(CRADA05C);
        pageRef.getParameters().put('Id', CRADA05C.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage(); 
        
        //Test for 06C
        sc = new ApexPages.Standardcontroller(CRADA06C);
        pageRef.getParameters().put('Id', CRADA06C.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage();        
        
        //Test for 07C
        sc = new ApexPages.Standardcontroller(CRADA07C);
        pageRef.getParameters().put('Id', CRADA07C.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage(); 
        
        //Test for 08C
        sc = new ApexPages.Standardcontroller(CRADA08C);
        pageRef.getParameters().put('Id', CRADA08C.Id);
        Test.setCurrentPage(pageRef);
        
        ct = new CRADA_Tracker(sc);
        
        ct.getTrackerImage();                            

        //End Tests
        Test.stopTest();
        
        system.assertEquals(CRADA01.Agreement_Stage__c, 'New');
        system.assertEquals(CRADA02.Agreement_Stage__c, 'PI Approved');
        system.assertEquals(CRADA03.Agreement_Stage__c, 'OU Approved');
        system.assertEquals(CRADA04.Agreement_Stage__c, 'Routed to OCC for Approval');
        system.assertEquals(CRADA05.Agreement_Stage__c, 'OCC Approval');
        system.assertEquals(CRADA06.Agreement_Stage__c, 'Partner Signed');
        system.assertEquals(CRADA07.Agreement_Stage__c, 'OCC Signed');
        system.assertEquals(CRADA08.Agreement_Stage__c, 'OU Signed');
        system.assertEquals(CRADA09.Agreement_Stage__c, 'TPO Signed/Agreement Finalized');
        system.assertEquals(CRADA10.Agreement_Stage__c, '');
        
        system.assertEquals(CRADA01C.Agreement_Stage__c, 'New');
        system.assertEquals(CRADA02C.Agreement_Stage__c, 'PI Approved');
        system.assertEquals(CRADA03C.Agreement_Stage__c, 'OU Approved');
        system.assertEquals(CRADA04C.Agreement_Stage__c, 'Routed to OCC for Approval');
        system.assertEquals(CRADA05C.Agreement_Stage__c, 'OCC Approval');
        system.assertEquals(CRADA06C.Agreement_Stage__c, 'Partner Signed');
        system.assertEquals(CRADA07C.Agreement_Stage__c, 'OCC Signed');
        system.assertEquals(CRADA08C.Agreement_Stage__c, 'OU Signed');

       
    }
}