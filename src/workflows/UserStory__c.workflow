<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>PC_User_Story_Approval_Email</fullName>
        <description>PC User Story Approval Email</description>
        <protected>false</protected>
        <recipients>
            <recipient>PC_Approver</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Project_Central/NIST_Approval_Required</template>
    </alerts>
    <fieldUpdates>
        <fullName>PC_User_Story_NIST_Approval_Check</fullName>
        <description>Check the NIST Approval checkbox.</description>
        <field>NIST_Approval__c</field>
        <literalValue>1</literalValue>
        <name>PC User Story NIST Approval Check</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PC_User_Story_Rejected</fullName>
        <description>Rejected by NIST</description>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>PC User Story Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>User_Story_Status_Field</fullName>
        <field>Status__c</field>
        <literalValue>Submitted for Approval</literalValue>
        <name>User Story Status Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>User_Story_Status_Update_Approval</fullName>
        <field>Status__c</field>
        <literalValue>Accepted</literalValue>
        <name>User Story Status Update Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
