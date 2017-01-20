@isTest
private class UserStoryTriggerHelperTest {

    static testMethod void testUserStorys() {
        //RecordType usRT = [Select id from RecordType where name = 'User Story'];
        ID profID = [Select id from Profile where name = 'System Administrator'].id;
        User u = new user();
            u.LastName = 'Test Code';
            u.Email = 'test@test.com';
            u.Alias = 'Tcode';
            u.Username = 'test1234444@nist.gov.pc';
            u.CommunityNickname = 'test12'; 
            u.LocaleSidKey = 'en_US';
            u.TimeZoneSidKey = 'GMT';
            u.ProfileID = profID;
            u.LanguageLocaleKey = 'en_US';
            u.EmailEncodingKey = 'UTF-8';
            insert u;

        Sprint__c sprnt = new Sprint__c (name='Sprint', Status__c = 'Not Started', Start_Date__c = date.today(), 
            End_Date__c=system.today().adddays(30)); 
        insert sprnt;
        
        UserStory__c us1 = new UserStory__c (//RecordTypeid=usRT.id, 
        Requester__c=u.id, Sprint__c=sprnt.id, 
            user_story__c='testing user story', Story_Points__c='3');
        insert us1;
        
        UserStory__c us2 = new UserStory__c (//RecordTypeid=usRT.id, 
        Requester__c=u.id, Sprint__c=sprnt.id, 
            user_story__c='testing user story', Story_Points__c='3', Status__c='New');
        insert us2;
       
       
        
    }
}