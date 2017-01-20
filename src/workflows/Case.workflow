<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Inquiry_Assignment</fullName>
        <description>Inquiry Assignment</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>ITL_Inquiry_Emails/ITL_inquiry_Assignment</template>
    </alerts>
    <fieldUpdates>
        <fullName>Multi_Select_Field_Update</fullName>
        <field>Multi_Select_Text__c</field>
        <formula>IF(INCLUDES(Share_Case_With__c , &quot;EL&quot;), &quot;EL;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;ITL&quot;), &quot;ITL;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;DO&quot;), &quot;DO;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;ADIIS&quot;), &quot;ADIIS;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;TPO&quot;), &quot;TPO;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;AMNPO&quot;), &quot;AMNPO;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;Baldrige&quot;), &quot;Baldrige;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;MEP&quot;), &quot;MEP;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;ALDP&quot;), &quot;ADLP;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;NCNR&quot;), &quot;NCNR;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;CNST&quot;), &quot;CNST;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;MML&quot;), &quot;MML;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;CTL&quot;), &quot;CTL;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;CTL - WND&quot;), &quot;CTL - WND;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;CTL - PSCR&quot;), &quot;CTL - PSCR;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;CTL - NASCTN&quot;), &quot;CTL - NASCTN;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;CTL - RFTech&quot;), &quot;CTL - RFTech;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;PML&quot;), &quot;PML;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;CSD&quot;), &quot;CSD;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;NCCOE&quot;), &quot;NCCOE;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;NICE&quot;), &quot;NICE;&quot;, &quot;&quot;)+ 
IF(INCLUDES(Share_Case_With__c , &quot;NSTIC&quot;), &quot;NSTIC;&quot;, &quot;&quot;)</formula>
        <name>Multi Select Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Priority_to_Medium</fullName>
        <description>update prirority</description>
        <field>Priority</field>
        <literalValue>Medium</literalValue>
        <name>Priority to Medium</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Direct_Request_To</fullName>
        <field>Multi_Select_Text__c</field>
        <formula>Text(Responding_Office__c)</formula>
        <name>Update Direct Request To</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>W2C Priority Update</fullName>
        <actions>
            <name>Priority_to_Medium</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>Web</value>
        </criteriaItems>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <description>Update Priority</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
