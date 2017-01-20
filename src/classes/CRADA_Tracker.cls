public class CRADA_Tracker {
    private final Agreement__c agreement;
    public Agreement__c agree;
    public StaticResource trackerImage;
    List<StaticResource> docs;
    String namespace;
    
    public CRADA_Tracker (ApexPages.StandardController stdController) {
        this.agreement = (Agreement__c)stdController.getRecord();
        System.debug('agreement.page.id: ' + ApexPages.currentPage().getParameters().get('id'));
        agree = [Select ID, Agreement_Stage__c, Agreement_Status__c from Agreement__c where id =: ApexPages.currentPage().getParameters().get('id')];
        System.debug('Agreement id: ' +agreement.id);
    }
    
    /* public Agreement__c getAgreement() {
        return agreement;
    } */
    
    public String getTrackerImage() {
        if (agree.Agreement_Stage__c == 'New' && agree.Agreement_Status__c != 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_01'];
        } 
        else if (agree.Agreement_Stage__c == 'PI Approved' && agree.Agreement_Status__c != 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_02'];
        }
        else if (agree.Agreement_Stage__c == 'OU Approved' && agree.Agreement_Status__c != 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_03'];
        }
        else if (agree.Agreement_Stage__c == 'Routed to OCC for Approval' && agree.Agreement_Status__c != 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_04'];
        }
        else if (agree.Agreement_Stage__c == 'OCC Approval' && agree.Agreement_Status__c != 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_05'];
        }
        else if (agree.Agreement_Stage__c == 'Partner Signed' && agree.Agreement_Status__c != 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_06'];
        }
        else if (agree.Agreement_Stage__c == 'OCC Signed' && agree.Agreement_Status__c != 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_07'];
        }
        else if (agree.Agreement_Stage__c == 'OU Signed' && agree.Agreement_Status__c != 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_08'];
        }
        else if (agree.Agreement_Stage__c == 'TPO Signed/Agreement Finalized' && agree.Agreement_Status__c != 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_09'];
        }
        
        //Canceled Codes
        else if (agree.Agreement_Stage__c == 'New' && agree.Agreement_Status__c == 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_01C'];
        } 
        else if (agree.Agreement_Stage__c == 'PI Approved' && agree.Agreement_Status__c == 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_02C'];
        }
        else if (agree.Agreement_Stage__c == 'OU Approved' && agree.Agreement_Status__c == 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_03C'];
        }
        else if (agree.Agreement_Stage__c == 'Routed to OCC for Approval' && agree.Agreement_Status__c == 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_04C'];
        }
        else if (agree.Agreement_Stage__c == 'OCC Approval' && agree.Agreement_Status__c == 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_05C'];
        }
        else if (agree.Agreement_Stage__c == 'Partner Signed' && agree.Agreement_Status__c == 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_06C'];
        }
        else if (agree.Agreement_Stage__c == 'OCC Signed' && agree.Agreement_Status__c == 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_07C'];
        }
        else if (agree.Agreement_Stage__c == 'OU Signed' && agree.Agreement_Status__c == 'Canceled') {
           docs = [select id, name from StaticResource where name = 'CRADA_Tracker_08C'];
        }
        else {
            docs = [select id, name from StaticResource where name = 'CRADA_Tracker_10'];
        }
        
        if (docs.size()==1) {
            trackerImage = docs[0];
            return trackerImage.name;
        } else return '';
    }
     
}