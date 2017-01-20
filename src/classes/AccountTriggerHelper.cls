public with sharing class AccountTriggerHelper {

	//This trigger is used to run on Account Object as part of Sprint1

	public static void deleteStaff (list <Account> accounts) {
    
    	//WK-00207: All Staff/Associate accounts should be linked to the NIST Account record.
		//			If the contact mailing address is blank, set it to the NIST address.  If not, leave what's there.
		Try {
			Account nistAccount = [Select id from Account where name = 'National Institute of Standards and Technology'];
			List <Account> accountsToDelete = new List<Account>();	
			system.debug('account size: ' + accounts.size());	
			
			if (accounts.size() > 0) {
				
					for (Account a: accounts) {

						if (a.id != nistAccount.id) {
							System.debug('Account was deleted: '+a.id);
						}
						else {
							a.addError('You cannot delete Account: '+ a.name);
						}	
					}
	
			}
			
		} 
		Catch (DMLException e) {
			system.debug('Exception: ' + e);
		}			  
	
	}
	
	public static void updateStaff (list <Account> accountsNew, list <Account> accountsOld) {
		Try {
			Account nistAccount = [Select id, name from Account where name = 'National Institute of Standards and Technology'];
			List <Account> accountsToUpdate = new List<Account>();	
			system.debug('account size: ' + accountsNew.size());	 
			
			if (accountsNew.size() > 0) {
					Account oldAcct = new Account ();
				
					for (Account a: accountsOld) {
						if (a.id == nistAccount.id) {
							oldAcct = a;
						}
					}
				
					for (Account a: accountsNew) {
						
						if (a.id != nistAccount.id) {
							System.debug('Account was updated: '+a.id);
						}
						else if ((oldAcct.name == nistAccount.name) && (a.name != oldAcct.name)){
							a.addError('You cannot update Account: '+ a.name + ' name.');
							a.name = 'National Institute of Standards and Technology'; 
						}
						else {
							System.debug ('Udate Account: '+ a.id);
						}	
					}
	
			}
			
		} 
		Catch (DMLException e) {
			system.debug('Exception: ' + e);
		}		
	}

}