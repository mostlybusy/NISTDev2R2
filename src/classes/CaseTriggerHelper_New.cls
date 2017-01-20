public with sharing class CaseTriggerHelper_New {





    public static void insertMultiSelectText_New(List<Case> newCases){
        
      Try {
            
           RecordType RcdTypId = [select Id from RecordType where Name = 'General Inquiries' and SobjectType = 'Case'];
        
      Case c1;
      
     if (c1.RecordTypeId==RcdTypId.id) {
           
           
        For (case c: newCases) {
            
                
           if (c.Share_Case_With__c == null) {
            c.Share_Case_With__c = c.Responding_Office__c;
          }           
           else {
             c.Share_Case_With__c +=';'+ c.Responding_Office__c;
           }
           
           c.Multi_Select_Text__c = c.Share_Case_With__c;
           
           }
           
         }
            
            }  
      Catch (Exception e) {
        System.debug('CaseTriggerHelper Error: '+e);
                 
      }
  }
 
  public static void updateMultiSelectText(List<Case> newCases, List<Case> oldCases){
        
      Try {
      
      RecordType RcdTypId = [select Id from RecordType where Name = 'General Inquiries' and SobjectType = 'Case'];
        
      Case c1;
      
     if (c1.RecordTypeId==RcdTypId.id) {
      
        For (Case c: newCases) {
        
         //Get old case value to compair new and old values
           Case oldCase = new Case();
           For (Case oc: oldCases) {
             if (oc.id == c.id){
               oldCase = oc;
             }
           }
           
         /*
           1) If Sharing Case With field is blank: add Responding Office to Share and Multi Text.  
           2) If Sharing Case With field does not match old value, set Multi Text to new value.  
           3) If new value does not include Responding Office, Add to Share Case and Mulit Text. 
           4) If there are new Share Case with and new Responding Office, add all values to both.      
          */
           if (c.Share_Case_With__c == null) {
             c.Share_Case_With__c = c.Responding_Office__c;
             c.Multi_Select_Text__c = c.Responding_Office__c;
           }
           else if (c.Share_Case_With__c != oldCase.Share_Case_With__c) {
             if (c.Share_Case_With__c.Contains(c.Responding_Office__c) == False) {
               c.Share_Case_With__c += ';' + c.Responding_Office__c;
             }
             c.Multi_Select_Text__c = c.Share_Case_With__c;
           }
           else if (c.Share_Case_With__c.Contains(c.Responding_Office__c) == False) {
             c.Share_Case_With__c += ';' + c.Responding_Office__c;
             c.Multi_Select_Text__c += ';' + c.Responding_Office__c;
           }
        }
        
       } 
        
      } 
      Catch (Exception e) {
        System.debug('CaseTriggerHelper Error: '+e);
      }
     
    }
  
  
  
  
  
  }