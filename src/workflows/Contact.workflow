<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_contact_Owner</fullName>
        <description>Update Record owner to Data Migration user when account active is unchecked.</description>
        <field>OwnerId</field>
        <lookupValue>datamig@nist.datamig</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>Update contact Owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Contact Record Owner Update</fullName>
        <actions>
            <name>Update_contact_Owner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Active_Contact__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Update Record owner to Data Migration user when account active is unchecked.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Contact_Staff-Associate_Default_AccountName</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact.AccountName</field>
            <operation>notEqual</operation>
            <value>National Institute of Standards and Technology</value>
        </criteriaItems>
        <description>Default the Staff/Associate Account to the NIST Account.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
