@isTest
private class ContactTriggerHelperTest {

    static testMethod void testContactTriggerHelper() {
		
		RecordType rec = [Select id from RecordType where name = 'Staff/Associate'];
		Account acctNonNist = new Account (name = 'test');
		Account acctNist = new Account (name = 'National Institute of Standards and Technology');
		insert acctNonNist;
		insert acctNist;
		
		Contact cont = new Contact (lastname = 'testLast', RecordTypeid = rec.id, account = acctNonNist);
		
		Test.startTest();
		insert cont;
		
		cont = [Select id, accountid, lastname from Contact where lastname = 'testLast'];
		
		Test.stopTest();
        
        System.assertEquals(cont.accountid, acctNist.id);
    }
}