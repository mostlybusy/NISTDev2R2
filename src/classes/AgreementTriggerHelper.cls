public with sharing class AgreementTriggerHelper {
    
    public static void insertAgreement (list<Agreement__c> agreements) {
        /*
            Copy the Reference ID, Reference Object, Stage date values to new object.  
            If Stage is not New, add New date as today as well as the correct date value.
        */
        
        Try {
            //System.debug('Total Agreements in insert Trigger: '+agreements.size());
            
            For (Agreement__c a: agreements) {
                //System.debug('i Agreement Info - ID: '+a.id);
                Snapshot__c s = new Snapshot__c();
                s.reference_id__c = a.id;
                s.reference_object__c = 'Agreement';
                s.Agreement__c = a.id;
                
                if (a.Agreement_Stage__c == 'PI Approved') {
                    s.Agreement_PI_Approved_Date__c = system.now(); 
                }
                else if (a.Agreement_Stage__c == 'OU Approved') {
                    s.Agreement_OU_Approved_Date__c = system.now(); 
                }
                else if (a.Agreement_Stage__c == 'Routed to OCC for Approval') {
                    s.Agreement_Routed_OCC_Approval_Date__c = system.now(); 
                }
                else if (a.Agreement_Stage__c == 'OCC Approval') {
                    s.Agreement_OCC_Approval_Date__c = system.now();    
                }
                else if (a.Agreement_Stage__c == 'Partner Signed') {
                    s.Agreement_Partner_Signed_Date__c = system.now();  
                }
                else if (a.Agreement_Stage__c == 'OCC Signed') {
                    s.Agreement_OCC_Signed_Date__c = system.now();  
                }
                else if (a.Agreement_Stage__c == 'OU Signed') {
                    s.Agreement_OU_Signed_Date__c = system.now();   
                }
                else if (a.Agreement_Stage__c == 'TPO Signed/Agreement Finalized') {
                    s.Agreement_TPO_Signed_Date__c = system.now();  
                }
                if (a.Status_Animal_Sub_incl__c == 'Notification Sent') {
                    s.ASI_Notification_Sent_Date__c = system.now();
                }
                else if (a.Status_Animal_Sub_incl__c == 'Memo Received') {
                    s.ASI_Memo_Received_Date__c = system.now();
                 }
                else if (a.Status_Animal_Sub_incl__c == 'Approved') {
                    s.ASI_Approved_Date__c = system.now();
                 }
                if (a.Status_Human_Sub_Inc__c == 'Notification Sent') {
                    s.HSI_Notification_Sent_Date__c = system.now();
                }
                else if (a.Status_Human_Sub_Inc__c == 'Memo Received') {
                    s.HSI_Memo_Received_Date__c = system.now();
                 }
                else if (a.Status_Human_Sub_Inc__c == 'Approved') {
                    s.HSI_Approved_Date__c = system.now();
                 }
                if (a.Status_Patent_Office__c == 'Notification Sent') {
                    s.Patent_Officer_Notification_Sent_Date__c = system.now();
                }
                else if (a.Status_Patent_Office__c == 'Memo Received') {
                    s.Patent_Officer_Memo_Received_Date__c = system.now();
                 }
                else if (a.Status_Patent_Office__c == 'Approved') {
                    s.Patent_Officer_Approved_Date__c = system.now();
                 }
                if (a.Status_International_Office__c == 'Notification Sent') {
                    s.IAAO_Notification_Sent_Date__c = system.now();
                }
                else if (a.Status_International_Office__c == 'Memo Received') {
                    s.IAAO_Memo_Received_Date__c = system.now();
                 }
                else if (a.Status_International_Office__c == 'Approved') {
                    s.IAAO_Approved_Date__c = system.now();
                 }
                if (a.Status_US_Trade_Rep__c == 'Notification Sent') {
                    s.USTR_Notification_Sent_Date__c = system.now();
                }
                else if (a.Status_US_Trade_Rep__c == 'Memo Received') {
                    s.USTR_Memo_Received_Date__c = system.now();
                 }
                
                if (a.Agreement_Status__c == 'Agreement In Process') {
                    s.Agreement_Status_In_Process_Date__c =system.now();
                }
                else if (a.Agreement_Status__c == 'Active'){
                    s.Agreement_Status_Active_Date__c = system.now();
                }
                else if (a.Agreement_Status__c == 'Pending Amendment'){
                    s.Agreement_Status_Pending_Amendment_Date__c = system.now(); 
                }
                /* else if (a.Agreement_Status__c == 'Canceled'){
                    s.Agreement_Status_Canceled_Date__c = system.now();
                }
                 else if (a.Agreement_Status__c == 'Expired'){
                    s.Agreement_Status_Expired_Date__c = system.now();
                }
                else if (a.Agreement_Status__c == 'Terminated'){
                    s.Agreement_Status_Terminated_Date__c = system.now();
                }
                 */
                                
                s.Agreement_New_Date__c = System.now();
                insert s;
            }
        }
        catch (Exception e) {
            System.debug ('i Agreement Trigger Helper Error: '+e);
        }
    }
    
    public static void updateAgreement (list<Agreement__c> newAgreements, list<Agreement__c> oldAgreements) {
        /*  
            Look up the associated Snapshot by Reference ID.  Update the correct Date field based on saved Status value.
        */
        
        List <Snapshot__c> snaps = new List <Snapshot__c> ();
        Set<Id> agreementIDs = new Set<Id>();
        
        For (Agreement__c ag: newAgreements) {
            agreementIDs.add(ag.ID); 
        } 
        
        if (newAgreements.size() > 0) {
            snaps = [Select id, reference_id__c, reference_object__c, Agreement_PI_Approved_Date__c,Agreement_OU_Approved_Date__c,
             Agreement_New_Date__c, Agreement_Routed_OCC_Approval_Date__c, Agreement_OCC_Approval_Date__c, 
            Agreement_Partner_Signed_Date__c, Agreement_OCC_Signed_Date__c, Agreement_OU_Signed_Date__c,
            Agreement_TPO_Signed_Date__c, ASI_Approved_Date__c,ASI_Memo_Received_Date__c,ASI_Notification_Sent_Date__c,
            HSI_Approved_Date__c,HSI_Memo_Received_Date__c,HSI_Notification_Sent_Date__c,
            IAAO_Approved_Date__c,IAAO_Memo_Received_Date__c,IAAO_Notification_Sent_Date__c,
            Patent_Officer_Approved_Date__c,Patent_Officer_Memo_Received_Date__c,Patent_Officer_Notification_Sent_Date__c,
            USTR_Memo_Received_Date__c,USTR_Notification_Sent_Date__c,
                     Agreement_Status_In_Process_Date__c,Agreement_Status_Active_Date__c,Agreement_Status_Pending_Amendment_Date__c,
                     Agreement_Status_Canceled_Date__c,Agreement_Status_Expired_Date__c,Agreement_Status_Terminated_Date__c
                     from Snapshot__c  where reference_id__c in: agreementIDs];
            }
        
        Try {
            //System.debug('u Total Agreements in Trigger: '+newAgreements.size());
            
            For (Agreement__c a: newAgreements) {
                //System.debug('u Agreement Info - ID: '+a.id);
                
                For (Snapshot__c s: snaps) {
                    //System.debug('u Snapshot Info - ID: '+a.id);
                    
                    Agreement__c oldAgree = new Agreement__c ();
                    
                    For (Agreement__c ao: oldAgreements){
                        if (a.id == ao.id) {
                            oldAgree = ao;
                        }
                    }
                     
                    if ((a.id == s.reference_id__c) && ((a.Agreement_Stage__c != oldAgree.Agreement_Stage__c) || 
                                                        (a.Agreement_Status__c != oldAgree.Agreement_Status__c) ||
                                                        (a.Status_Animal_Sub_incl__c != oldAgree.Status_Animal_Sub_incl__c)||
                                                        (a.Status_Human_Sub_Inc__c != oldAgree.Status_Human_Sub_Inc__c) ||
                                                        (a.Status_Patent_Office__c != oldAgree.Status_Patent_Office__c)||
                                                        (a.Status_International_Office__c != oldAgree.Status_International_Office__c)||
                                                        (a.Status_US_Trade_Rep__c != oldAgree.Status_US_Trade_Rep__c))){
                            if (a.Agreement_Stage__c == 'New') {
                                s.Agreement_New_Date__c = System.now();
                            }
                            else if (a.Agreement_Stage__c == 'PI Approved') {
                                s.Agreement_PI_Approved_Date__c = system.now(); 
                            }
                            else if (a.Agreement_Stage__c == 'OU Approved') {
                                s.Agreement_OU_Approved_Date__c = system.now(); 
                            }
                            else if (a.Agreement_Stage__c == 'Routed to OCC for Approval') {
                                s.Agreement_Routed_OCC_Approval_Date__c = system.now(); 
                            }
                            else if (a.Agreement_Stage__c == 'OCC Approval') {
                                s.Agreement_OCC_Approval_Date__c = system.now();    
                            }
                            else if (a.Agreement_Stage__c == 'Partner Signed') {
                                s.Agreement_Partner_Signed_Date__c = system.now();  
                            }
                            else if (a.Agreement_Stage__c == 'OCC Signed') {
                                s.Agreement_OCC_Signed_Date__c = system.now();  
                            }
                            else if (a.Agreement_Stage__c == 'OU Signed') {
                                s.Agreement_OU_Signed_Date__c = system.now();   
                            }
                            else if (a.Agreement_Stage__c == 'TPO Signed/Agreement Finalized') {
                                s.Agreement_TPO_Signed_Date__c = system.now();  
                            }
                            
                            if (a.Status_Animal_Sub_incl__c == 'Notification Sent') {
                                s.ASI_Notification_Sent_Date__c = system.now();
                            }
                            else if (a.Status_Animal_Sub_incl__c == 'Memo Received') {
                                s.ASI_Memo_Received_Date__c = system.now();
                            }
                            else if (a.Status_Animal_Sub_incl__c == 'Approved') {
                                s.ASI_Approved_Date__c = system.now();
                            }
                            
                            if (a.Status_Human_Sub_Inc__c == 'Notification Sent') {
                                s.HSI_Notification_Sent_Date__c = system.now();
                            }
                            else if (a.Status_Human_Sub_Inc__c == 'Memo Received') {
                               s.HSI_Memo_Received_Date__c = system.now();
                            }
                            else if (a.Status_Human_Sub_Inc__c == 'Approved') {
                               s.HSI_Approved_Date__c = system.now();
                            }
                            
                            if (a.Status_Patent_Office__c == 'Notification Sent') {
                                s.Patent_Officer_Notification_Sent_Date__c = system.now();
                            }
                            else if (a.Status_Patent_Office__c == 'Memo Received') {
                                s.Patent_Officer_Memo_Received_Date__c = system.now();
                            }
                            else if (a.Status_Patent_Office__c == 'Approved') {
                                s.Patent_Officer_Approved_Date__c = system.now();
                            }
                            
                            if (a.Status_International_Office__c == 'Notification Sent') {
                                s.IAAO_Notification_Sent_Date__c = system.now();
                            }
                            else if (a.Status_International_Office__c == 'Memo Received') {
                               s.IAAO_Memo_Received_Date__c = system.now();
                            }
                            else if (a.Status_International_Office__c == 'Approved') {
                                s.IAAO_Approved_Date__c = system.now();
                            }
                            
                            if (a.Status_US_Trade_Rep__c == 'Notification Sent') {
                                s.USTR_Notification_Sent_Date__c = system.now();
                            }
                            else if (a.Status_US_Trade_Rep__c == 'Memo Received') {
                                s.USTR_Memo_Received_Date__c = system.now();
                            }
                    
                            if (a.Agreement_Status__c == 'Agreement In Process') {
                                s.Agreement_Status_In_Process_Date__c =system.now();
                            }
                            else if (a.Agreement_Status__c == 'Active'){
                                s.Agreement_Status_Active_Date__c = system.now();
                            }
                            else if (a.Agreement_Status__c == 'Pending Amendment'){
                                s.Agreement_Status_Pending_Amendment_Date__c = system.now(); 
                            }
                             else if (a.Agreement_Status__c == 'Canceled'){
                                s.Agreement_Status_Canceled_Date__c = system.now();
                            }
                            else if (a.Agreement_Status__c == 'Expired'){
                                s.Agreement_Status_Expired_Date__c = system.now();
                            }
                            else if (a.Agreement_Status__c == 'Terminated'){
                                s.Agreement_Status_Terminated_Date__c = system.now();
                            } 
                        
                        }

                    update s;
                    }
                }
                
            }
        
        catch (Exception e) {
            System.debug ('u Agreement Trigger Helper Error: '+e);
        }
    }   
    
}