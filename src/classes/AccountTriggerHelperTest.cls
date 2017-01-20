@isTest
public with sharing class AccountTriggerHelperTest {
    
    static testMethod void testAccountTriggerHelper() {
    	Account acctNonNist = new Account (name = 'test');
		Account acctNist = new Account (name = 'National Institute of Standards and Technology');
		insert acctNonNist;
		insert acctNist;
				
		delete acctNonNist;
		Try {
			delete acctNist;
		}
		catch (Exception e) {
			System.assert(e.getMessage().contains('You cannot delete Account: '), 'message=' + e.getMessage());	
		}
		
		System.assertEquals(acctNist.id, acctNist.id);
		
		acctNist.NumberOfEmployees = 5;
		Update acctNist;
		System.debug('after update acct name: '+acctNist.name+' empl: '+acctNist.NumberOfEmployees);
		
		try {
			acctNist.name = 'test';
			update acctNist;	
		}
		catch (Exception e) {
			System.assert(e.getMessage().contains('You cannot update Account: '), 'message=' + e.getMessage());	
		}
		
    }    
}