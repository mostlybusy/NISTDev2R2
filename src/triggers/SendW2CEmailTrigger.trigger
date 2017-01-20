/*
 * SendW2CEmailTrigger  - Trigger to send email to SF opt-out organization email id
 *                      - Calls Helper class to send email.  
 * Author : Nagesh Pawar
*/

trigger SendW2CEmailTrigger on Case (after insert) {
        SendW2CEmailHelper.sendEmail(Trigger.new); 
}