<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Agreement_Classified</fullName>
        <description>Agreement_Classified</description>
        <protected>false</protected>
        <recipients>
            <recipient>ganga.atturu@nist.dev2.casu</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CRADA_Email_Templates/Email_to_Paul_Zielinski_Classified_Selected</template>
    </alerts>
    <alerts>
        <fullName>Agreement_Restricted_Classifed</fullName>
        <description>Agreement Restricted Classifed</description>
        <protected>false</protected>
        <recipients>
            <recipient>ganga.atturu@nist.dev2.casu</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>tori.gelston@nist.gov</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CRADA_Email_Templates/Email_to_Paul_Zielinski_Classified_Selected</template>
    </alerts>
    <alerts>
        <fullName>Div_Chief</fullName>
        <description>Div Chief</description>
        <protected>false</protected>
        <recipients>
            <field>NIST_Division_Chief_Approval_Memo__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CRADA_Email_Templates/Project_Memo_Approval_Division_Chief</template>
    </alerts>
    <alerts>
        <fullName>Div_Chief_Approval_receipt</fullName>
        <description>Div Chief Approval receipt</description>
        <protected>false</protected>
        <recipients>
            <field>NIST_OU_Director__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CRADA_Email_Templates/Project_Memo_Approval_Division_Chief</template>
    </alerts>
    <alerts>
        <fullName>Email_sent_to_OU_Dir</fullName>
        <description>Email sent to OU Dir</description>
        <protected>false</protected>
        <recipients>
            <field>NIST_OU_Director__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CRADA_Email_Templates/Project_Memo_Approval_OU_Director</template>
    </alerts>
    <alerts>
        <fullName>Email_to_TPO</fullName>
        <description>Email to TPO</description>
        <protected>false</protected>
        <recipients>
            <recipient>TPO_group</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CRADA_Email_Templates/Project_Memo_Approval_Division_Chief</template>
    </alerts>
    <alerts>
        <fullName>HSP_Office_PI_Approval_receipt</fullName>
        <description>HSP Office PI Approval receipt</description>
        <protected>false</protected>
        <recipients>
            <recipient>TPO_group</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CRADA_Email_Templates/Project_Memo_Approval</template>
    </alerts>
    <alerts>
        <fullName>IAA_Office_PI_Approval_receipt</fullName>
        <description>IAA Office PI Approval receipt</description>
        <protected>false</protected>
        <recipients>
            <recipient>TPO_group</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CRADA_Email_Templates/Project_Memo_Approval</template>
    </alerts>
    <alerts>
        <fullName>OU_Director_Approval_Email_Alert</fullName>
        <description>OU Director Approval Email Alert</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CRADA_Email_Templates/Project_Approved</template>
    </alerts>
    <alerts>
        <fullName>OU_Director_Receipt</fullName>
        <description>OU Director Receipt</description>
        <protected>false</protected>
        <recipients>
            <field>NIST_PI__c</field>
            <type>contactLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CRADA_Email_Templates/Project_Memo_Approval_OU_Director</template>
    </alerts>
    <alerts>
        <fullName>PI_Approval_receipt_to_Patent_Office</fullName>
        <description>PI Approval receipt to Patent Office</description>
        <protected>false</protected>
        <recipients>
            <recipient>TPO_group</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CRADA_Email_Templates/Project_Memo_Approval</template>
    </alerts>
    <alerts>
        <fullName>Patent_Office_Email_Aleret</fullName>
        <description>Patent Office Email Aleret</description>
        <protected>false</protected>
        <recipients>
            <recipient>TPO_group</recipient>
            <type>group</type>
        </recipients>
        <recipients>
            <recipient>ganga.atturu@nist.dev2.casu</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CRADA_Email_Templates/Project_Memo_Approval</template>
    </alerts>
    <alerts>
        <fullName>USTR_PI_approval_receipt</fullName>
        <description>USTR PI approval receipt</description>
        <protected>false</protected>
        <recipients>
            <recipient>TPO_group</recipient>
            <type>group</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>CRADA_Email_Templates/Project_Memo_Approval</template>
    </alerts>
    <fieldUpdates>
        <fullName>Agreement_Stage_update</fullName>
        <field>Agreement_Stage__c</field>
        <literalValue>PI Approved</literalValue>
        <name>Agreement Stage update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Animal_Sub_Incl_Status_Update</fullName>
        <field>Status_Animal_Sub_incl__c</field>
        <literalValue>Notification Sent</literalValue>
        <name>Animal Sub Incl Status Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Div_Chief_Rejected</fullName>
        <field>Agreement_Stage__c</field>
        <literalValue>PI Approved</literalValue>
        <name>Div Chief Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>HSP_Office_Notification_Update</fullName>
        <field>Status_Human_Sub_Inc__c</field>
        <literalValue>Notification Sent</literalValue>
        <name>HSP Office Notification Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>IAAO_Status_Field_1</fullName>
        <field>Status_Patent_Office__c</field>
        <literalValue>Notification Sent</literalValue>
        <name>IAAO Status Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>IAAO_Status_Field_Upd</fullName>
        <field>Status_International_Office__c</field>
        <literalValue>Notification Sent</literalValue>
        <name>IAAO Status Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>IAAO_Status_Field_Update</fullName>
        <field>Status_Animal_Sub_incl__c</field>
        <literalValue>Notification Sent</literalValue>
        <name>IAAO Status Field Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>OU_Director_Approval</fullName>
        <field>Agreement_Stage__c</field>
        <literalValue>OU Approved</literalValue>
        <name>OU Director Approval</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>OU_Director_Rejected</fullName>
        <field>Agreement_Status__c</field>
        <literalValue>Terminated</literalValue>
        <name>OU Director Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>OU_Reject_update_status_Canceled</fullName>
        <description>OU Director  Reject update status Canceled</description>
        <field>Agreement_Status__c</field>
        <literalValue>Canceled</literalValue>
        <name>OU Reject update status Canceled</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PI_Delegate_Reject</fullName>
        <description>PI Delegate Reject update status Canceled</description>
        <field>Agreement_Status__c</field>
        <literalValue>Canceled</literalValue>
        <name>PI Delegate Reject</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PI_Reject_update_status_Canceled</fullName>
        <description>PI Reject update status Canceled</description>
        <field>Agreement_Status__c</field>
        <literalValue>Canceled</literalValue>
        <name>PI Reject update status Canceled</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>PI_Rejected</fullName>
        <field>Agreement_Status__c</field>
        <literalValue>Terminated</literalValue>
        <name>PI Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Patent_Office_Notification_Upd</fullName>
        <field>Status_Patent_Office__c</field>
        <literalValue>Notification Sent</literalValue>
        <name>Patent Office Notification Upd</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Patent_Office_Notification_Update</fullName>
        <description>Status update to Notification Sent</description>
        <field>Status_Patent_Office__c</field>
        <literalValue>Notification Sent</literalValue>
        <name>Patent Office Notification Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stage_Update_OU</fullName>
        <field>Agreement_Stage__c</field>
        <literalValue>OU Approved</literalValue>
        <name>Stage Update OU</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Stage_update</fullName>
        <field>Agreement_Stage__c</field>
        <literalValue>OU Approved</literalValue>
        <name>Stage update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>USTR_Office_Notification_Update</fullName>
        <field>Status_US_Trade_Rep__c</field>
        <literalValue>Notification Sent</literalValue>
        <name>USTR  Office Notification Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update</fullName>
        <field>Agreement_Status__c</field>
        <literalValue>Agreement In Process</literalValue>
        <name>Update field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_Status</fullName>
        <field>Agreement_Stage__c</field>
        <literalValue>OU Approved</literalValue>
        <name>update Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_status_Active</fullName>
        <field>Agreement_Status__c</field>
        <literalValue>Active</literalValue>
        <name>update status Active</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Agreement_Restriced_info_Classified</fullName>
        <actions>
            <name>Agreement_Restricted_Classifed</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Agreement__c.Classified__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Restricted information : Classified is selected</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Animal subject Inclusion Notification</fullName>
        <actions>
            <name>Animal_Sub_Incl_Status_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Agreement__c.Agreement_Stage__c</field>
            <operation>equals</operation>
            <value>PI Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Agreement__c.Agreement_Status__c</field>
            <operation>equals</operation>
            <value>Agreement In Process</value>
        </criteriaItems>
        <criteriaItems>
            <field>Agreement__c.Animal_subject_Inclusion__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Agreement__c.Status_Animal_Sub_incl__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Request Sent once TPO or the PI approves the project memo (if the input required check box is checked) and Memo Received.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>HSP Office Notification</fullName>
        <actions>
            <name>HSP_Office_Notification_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Agreement__c.Agreement_Stage__c</field>
            <operation>equals</operation>
            <value>PI Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Agreement__c.Agreement_Status__c</field>
            <operation>equals</operation>
            <value>Agreement In Process</value>
        </criteriaItems>
        <criteriaItems>
            <field>Agreement__c.Human_Subjects_Inclusion__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Agreement__c.Status_Human_Sub_Inc__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Request Sent once TPO or the PI approves the project memo (if the input required check box is checked) and Memo Received.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>IAA Office Notification</fullName>
        <actions>
            <name>IAAO_Status_Field_Upd</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Agreement__c.Agreement_Stage__c</field>
            <operation>equals</operation>
            <value>PI Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Agreement__c.Agreement_Status__c</field>
            <operation>equals</operation>
            <value>Agreement In Process</value>
        </criteriaItems>
        <criteriaItems>
            <field>Agreement__c.International_Office_IAAO__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Agreement__c.Status_International_Office__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Request Sent  once TPO or the PI approves the project memo (if the input required check box is checked)  and  Memo Received.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Patent Office Notification</fullName>
        <actions>
            <name>Patent_Office_Notification_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Agreement__c.Agreement_Stage__c</field>
            <operation>equals</operation>
            <value>PI Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Agreement__c.Agreement_Status__c</field>
            <operation>equals</operation>
            <value>Agreement In Process</value>
        </criteriaItems>
        <criteriaItems>
            <field>Agreement__c.Patent_Office__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Agreement__c.Status_Patent_Office__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Request Sent  once TPO or the PI approves the project memo (if the input required check box is checked) and Memo Received.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>TPO Signed%2FAgreement Finalized</fullName>
        <actions>
            <name>update_status_Active</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Agreement__c.Agreement_Stage__c</field>
            <operation>equals</operation>
            <value>TPO Signed/Agreement Finalized</value>
        </criteriaItems>
        <description>TPO Signed/Agreement Finalized - Status changed to Active</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>USTR  Office Notification</fullName>
        <actions>
            <name>USTR_Office_Notification_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Agreement__c.Agreement_Stage__c</field>
            <operation>equals</operation>
            <value>PI Approved</value>
        </criteriaItems>
        <criteriaItems>
            <field>Agreement__c.Agreement_Status__c</field>
            <operation>equals</operation>
            <value>Agreement In Process</value>
        </criteriaItems>
        <criteriaItems>
            <field>Agreement__c.US_Trade_Representative__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Agreement__c.Status_US_Trade_Rep__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Request Sent once TPO or the PI approves the project memo (if the input required check box is checked) and Memo Received.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
