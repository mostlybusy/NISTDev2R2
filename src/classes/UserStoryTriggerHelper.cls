public with sharing class UserStoryTriggerHelper {

    public static void CalculateUserStoryStats(List<UserStory__c> triggerNew, Map<Id, UserStory__c> triggerOldMap) {
        
        Sprint__c userStorySprint = new Sprint__c ();
        List <Sprint__c> totalSprints = New List <Sprint__c>();
        //ID UserStoryRecTypeID = [Select id from RecordType where name = 'User Story'].id;
        Set <Sprint__c> setSprint = new Set <Sprint__c>();

        //Get all unique sprints represented by stories in the trigger.
        For (UserStory__c us: triggerNew) {
            Sprint__c sprintAdd = new Sprint__c();
            sprintAdd.id = us.Sprint__c;
            if (setSprint.contains(sprintAdd) == False) {
                setSprint.add(SprintAdd);
            }
        } 
        
        For (Sprint__c sp: setSprint) {
            totalSprints.add(sp);
        }

        //System.debug('TotalSprints: ' + totalSprints.size());

        //Get all user stories from all sprints represented in the trigger
        List <UserStory__c> allUserStories = [Select id, Story_Points__c, Sprint__c, Status__c 
            from UserStory__c where Sprint__c in: totalSprints]; //and recordtypeid =: UserStoryRecTypeID];     
 
        //System.debug('allUserStories: ' + allUserStories.size());
        
        //Update User Stories with changed values in the Trigger
        for (UserStory__c aUS: allUserStories) {
            for (UserStory__c tUS: triggerNew) {
                if (aUS.id == tUS.id) {
                    aUS.Story_Points__c = tUS.Story_Points__c;
                    aUS.Status__c = tUS.Status__c;
                }
            }
        }
        
        //Loop through all included Sprints and then all Stories in the Sprint to calculate the values
        for (Sprint__c s: totalSprints) {
            Integer storyPoints = 0;
            Integer totalStories = 0;
            Integer openStories = 0;
            Integer closedStories = 0;
            
            //System.debug('Sprint ID: '+ s.id);
            
            for (UserStory__c us: allUserStories) {
                if (us.Sprint__c == s.id) {
                    //System.debug (' Before - US id: ' + us.id + ' sp: ' + storyPoints + ' CS: ' + closedStories + ' OS: ' + openStories);
                    if (String.isEmpty(us.Story_Points__c) == False) {
                            storyPoints += Integer.valueOf(us.Story_Points__c);
                        }
                        if (us.Status__c == 'Deployed' || us.Status__c == 'Rejected') {
                            closedStories += 1;
                        } 
                        else {
                            openStories += 1;
                        }
                    totalStories += 1;
                    //System.debug (' After - US id: ' + us.id + ' sp: ' + storyPoints + ' CS: ' + closedStories + ' OS: ' + openStories);  
                }
            }
            //System.debug (' END - sp: ' + storyPoints + ' CS: ' + closedStories + ' OS: ' + openStories); 
            s.Total_Story_Points__c = storyPoints;
            s.Total_Stories__c = totalStories;
            s.Closed_User_Stories__c = closedStories;
            s.Open_User_Stories__c = openStories;
            Update s;           
        }

    }
}