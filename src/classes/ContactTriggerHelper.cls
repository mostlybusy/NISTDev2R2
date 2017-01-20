public with sharing class ContactTriggerHelper {
    
    public static void updateStaff (list<Contact> contacts) {

		//WK-00207: All Staff/Associate accounts should be linked to the NIST Account record.
		//			If the contact mailing address is blank, set it to the NIST address.  If not, leave what's there.
		Try {
			List <Account> listAccounts = [Select id from Account where name = 'National Institute of Standards and Technology'];
			Account nistAccount = new Account();
			System.debug('CTH: listAccount.size(): '+listAccounts.size());
			if (listAccounts.size() > 0) {
				nistAccount = listAccounts.get(0);
				System.debug('CTH: NistAccountID: '+nistAccount.Id);
			}		
			List <RecordType> listRecType = [Select id from RecordType where name = 'Staff/Associate'];
			RecordType rec = new RecordType();
			
			if (listRecType.size() > 0) {
				rec = listRecType.get(0);
				System.debug('CTH: Staff/Associate RecID: '+rec.id);
			}			
			
			if (nistAccount != null && rec != null) {
				for (Contact c: contacts) {
					System.debug('Account ID: '+ c.accountID+' Cont recID: '+c.recordTypeId);
					if ((c.accountId != nistAccount.id) && (c.recordTypeId == rec.id)) {
					c.accountid = nistAccount.id;
				}
				
				if ((c.MailingStreet == Null || c.MailingStreet == '') && c.accountId == nistAccount.id && c.recordTypeId == rec.Id) {
					c.MailingStreet = '100 Bureau Drive';
					c.MailingState = 'Maryland';
					c.MailingPostalCode = '20899';
					c.MailingCity = 'Gaithersburg';
					c.MailingCountry = 'United States';
				}
			}
		}
		
		}
		Catch (DMLException e) {
			system.debug('Exception: ' + e);
		}

    	
    }
}