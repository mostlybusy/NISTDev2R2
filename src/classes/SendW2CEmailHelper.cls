/*
 * SendW2CEmailHelper 	- 	sends email to  organization's email ids when Case gets created for SF opt-out Organization, 
 * 							with case information and sets reply-to email id.
 *                     	- 	Uses Email Template
 * Trigger 				- 	CaseTrigger
 * Author : Nagesh Pawar
*/

public class SendW2CEmailHelper {
	public static void sendEmail(List<Case> caseList) {
        List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>(); 
      	EmailTemplate emailTemp=[SELECT Id,Subject, HtmlValue,body 
                                 FROM EmailTemplate 
                                 WHERE name='ITL Inquiry Email Forward'];
      	
        //Get opt-out offices ids from custom settings W2CEmails
        Map<String,W2CEmails__c> allOrgs = W2CEmails__c.getAll();
        ID fromEmailId;
        for(OrgWideEmailAddress owa : [SELECT id, Address, DisplayName FROM OrgWideEmailAddress]) {            
             if(owa.Address.contains('noreply'))
                 fromEmailId = owa.id;            
         }
      	for ( Case c:caseList) {  
           	if(c.Origin == 'Web' && allOrgs.containsKey(c.Responding_Office__c)){ 
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage(); 
                //mail.setTargetObjectId(c.Id);
                String  orgEmail =    W2CEmails__c.getInstance(c.Responding_Office__c).Email__c;
                String[] toAddresses = orgEmail.split(';', 0);   
                String htmlbody= emailTemp.HtmlValue;      
                htmlbody= htmlbody.replace('{!Case.SuppliedEmail}', c.SuppliedEmail);
                htmlbody= htmlbody.replace('{!Case.Description}', c.Description);
                String subjectReason = emailTemp.Subject;
                subjectReason = subjectReason.replace('{!Case.Case_Type__c}', c.Case_Type__c);
                mail.setToAddresses(toAddresses);   
                //set replyto value to customer email id
                mail.setReplyTo(c.SuppliedEmail);
                mail.setSubject(subjectReason);   
                mail.setHtmlBody(htmlbody);
                //mail.setPlainTextBody(emailTemp.body);                
                mail.setTemplateId(emailTemp.Id);
                mail.setOrgWideEmailAddressId(fromEmailId);
                mails.add(mail);
            }
    	}      
        Messaging.SendEmail(mails);    
            
	}    
}