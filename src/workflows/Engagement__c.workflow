<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Engagement_Owner</fullName>
        <description>Engagement owner will change to this user when the Archive Record checkbox is checked.</description>
        <field>OwnerId</field>
        <lookupValue>datamig@nist.datamig</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Engagement Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Change Engagement Owner</fullName>
        <actions>
            <name>Engagement_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Engagement__c.Archive_Record__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>When the Archive Record checkbox is checked, the Case Owner will be changed, so the user cannot view it.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
