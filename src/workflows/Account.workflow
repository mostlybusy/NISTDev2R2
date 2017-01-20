<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Account_Owner_Update</fullName>
        <description>Update Record owner to Data Migration user when account active is unchecked.</description>
        <field>OwnerId</field>
        <lookupValue>datamig@nist.datamig</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Account Owner Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Account Record Owner Update</fullName>
        <actions>
            <name>Account_Owner_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.ActiveAccount__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Update Record owner to Data Migration user when account active is unchecked.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
