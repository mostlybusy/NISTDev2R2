<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Relationship_Owner</fullName>
        <description>Relationship owner will change to this user when the Delete Relationship Record checkbox is checked.</description>
        <field>OwnerId</field>
        <lookupValue>datamig@nist.datamig</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Relationship Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Change Relationship Owner</fullName>
        <actions>
            <name>Relationship_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Relationship__c.Archive_Record__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>When the Archive Record checkbox is checked, the Owner will be changed, so the user cannot view it.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
