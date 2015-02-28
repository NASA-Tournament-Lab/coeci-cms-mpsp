--------------------------------------------------------
--  Converted from pesp-was8.5/db/FULL-SCHEMA-MAY31.sql based on PostgreSQL   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ATTACHMENT_ID_SEQ
--------------------------------------------------------


   CREATE SEQUENCE  ATTACHMENT_ID_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 1 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence BOOLEANEXPR_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  BOOLEANEXPR_ID_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 1 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence COMMENT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  COMMENT_ID_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 1 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence CONTENT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  CONTENT_ID_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 581 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEADLINE_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  DEADLINE_ID_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 1 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMAILNOTIFHEAD_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  EMAILNOTIFHEAD_ID_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 1 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence ESCALATION_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  ESCALATION_ID_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 1 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence HIBERNATE_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  HIBERNATE_SEQUENCE  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 541 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence I18NTEXT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  I18NTEXT_ID_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 661 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence NODE_INST_LOG_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  NODE_INST_LOG_ID_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 1 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTIFICATION_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  NOTIFICATION_ID_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 1 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROC_INST_LOG_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  PROC_INST_LOG_ID_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 1 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence PROVIDER_COS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  PROVIDER_COS_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 1 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence REASSIGNMENT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  REASSIGNMENT_ID_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 1 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence SESSIONINFO_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  SESSIONINFO_ID_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 421 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence VAR_INST_LOG_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  VAR_INST_LOG_ID_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 1 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence WORKITEMINFO_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  WORKITEMINFO_ID_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 1561 CACHE 20  NO CYCLE ;
--------------------------------------------------------
--  DDL for Table ADDRESS
--------------------------------------------------------

  CREATE TABLE ADDRESS 
   (	ADDRESS_ID bigint, 
	ATTN_TO VARCHAR(30), 
	LINE1 VARCHAR(30), 
	LINE2 VARCHAR(30), 
	CITY VARCHAR(20), 
	STATE VARCHAR(2), 
	ZIPCODE VARCHAR(10), 
	COUNTY VARCHAR(20)
   ) ;
--------------------------------------------------------
--  DDL for Table AGREEMENT_DOCUMENT
--------------------------------------------------------

  CREATE TABLE AGREEMENT_DOCUMENT 
   (	AGREEMENT_DOCUMENT_ID bigint, 
	DOC_TYPE VARCHAR(45), 
	TITLE VARCHAR(100), 
	VERSION BIGINT, 
	DOC_TEXT TEXT, 
	CREATED_BY VARCHAR(45), 
	CREATE_TS TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table ATTACHMENT
--------------------------------------------------------

  CREATE TABLE ATTACHMENT 
   (	ID bigint, 
	ACCESSTYPE BIGINT, 
	ATTACHEDAT TIMESTAMP (6), 
	ATTACHMENTCONTENTID bigint, 
	CONTENTTYPE VARCHAR(255), 
	NAME VARCHAR(255), 
	ATTACHMENT_SIZE BIGINT, 
	ATTACHEDBY_ID VARCHAR(255), 
	TASKDATA_ATTACHMENTS_ID bigint
   ) ;
--------------------------------------------------------
--  DDL for Table AUDIT_DETAIL
--------------------------------------------------------

  CREATE TABLE AUDIT_DETAIL 
   (	AUDIT_DETAIL_ID bigint, 
	AUDIT_RECORD_ID bigint, 
	TABLE_NAME VARCHAR(200), 
	COLUMN_NAME VARCHAR(200), 
	OLD_DATA VARCHAR(500), 
	NEW_DATA VARCHAR(500)
   ) ;
--------------------------------------------------------
--  DDL for Table AUDIT_RECORD
--------------------------------------------------------

  CREATE TABLE AUDIT_RECORD 
   (	AUDIT_RECORD_ID bigint, 
	USERNAME VARCHAR(45), 
	AUDIT_TS TIMESTAMP (6), 
	SYSTEM_ID VARCHAR(8)
   ) ;
--------------------------------------------------------
--  DDL for Table BENEFICIAL_OWNER
--------------------------------------------------------

  CREATE TABLE BENEFICIAL_OWNER 
   (	BENEFICIAL_OWNER_ID bigint, 
	PERSON_IND VARCHAR(1), 
	BEN_TYPE_CD VARCHAR(2), 
	OTH_TYPE_DESC VARCHAR(255), 
	SUBCONTRACTOR_NAME VARCHAR(255), 
	OWN_INTEREST_PCT DECIMAL(19,2), 
	ADDRESS_ID bigint, 
	OTH_PROV_INTRST_IND VARCHAR(255), 
	OTH_PROV_NAME VARCHAR(255), 
	OTH_PROV_OWN_PCT DECIMAL(19,2), 
	OTH_PROV_ADDRESS_ID bigint, 
	MIDDLE_NAME VARCHAR(255), 
	FIRST_NAME VARCHAR(255), 
	LAST_NAME VARCHAR(255), 
	SSN VARCHAR(255), 
	BIRTH_DT TIMESTAMP(0), 
	HIRE_DT TIMESTAMP(0), 
	RELATIONSHIP_TYP_CD VARCHAR(2), 
	OWNERSHIP_INFO_ID bigint, 
	IDX BIGINT, 
	FEIN VARCHAR(20), 
	LEGAL_NAME VARCHAR(400)
   ) ;
--------------------------------------------------------
--  DDL for Table BOOLEANEXPRESSION
--------------------------------------------------------

  CREATE TABLE BOOLEANEXPRESSION 
   (	ID bigint, 
	EXPRESSION TEXT, 
	TYPE VARCHAR(255), 
	ESCALATION_CONSTRAINTS_ID bigint
   ) ;
--------------------------------------------------------
--  DDL for Table CMS_ATTACHMENT
--------------------------------------------------------

  CREATE TABLE CMS_ATTACHMENT 
   (	ATTACHMENT_ID bigint, 
	PROFILE_ID bigint, 
	TICKET_ID bigint, 
	TYPE VARCHAR(45), 
	FILE_NAME VARCHAR(300), 
	DESCRIPTION VARCHAR(45), 
	CONTENT_ID VARCHAR(255), 
	CREATED_BY VARCHAR(45), 
	CREATE_TS TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table CMS_SEQUENCE
--------------------------------------------------------

  CREATE TABLE CMS_SEQUENCE 
   (	SEQ_NAME VARCHAR(255), 
	NEXT_HI bigint
   ) ;
--------------------------------------------------------
--  DDL for Table CMS_USER
--------------------------------------------------------

  CREATE TABLE CMS_USER 
   (	USER_ID VARCHAR(255), 
	USER_NAME VARCHAR(255), 
	FIRST_NAME VARCHAR(255), 
	LAST_NAME VARCHAR(255), 
	MIDDLE_NAME VARCHAR(255), 
	PHONE_NUMBER VARCHAR(255), 
	EMAIL VARCHAR(255), 
	STATUS VARCHAR(255), 
	ROLE_CD VARCHAR(2)
   ) ;
--------------------------------------------------------
--  DDL for Table CONTACT_INFO
--------------------------------------------------------

  CREATE TABLE CONTACT_INFO 
   (	CONTACT_INFO_ID bigint, 
	PHONE_NUMBER VARCHAR(30), 
	FAX_NUMBER VARCHAR(30), 
	EMAIL VARCHAR(50), 
	ADDRESS_ID bigint
   ) ;
--------------------------------------------------------
--  DDL for Table CONTENT
--------------------------------------------------------

  CREATE TABLE CONTENT 
   (	ID bigint, 
	CONTENT BYTEA
   ) ;
--------------------------------------------------------
--  DDL for Table DEADLINE
--------------------------------------------------------

  CREATE TABLE DEADLINE 
   (	ID bigint, 
	DEADLINE_DATE TIMESTAMP (6), 
	ESCALATED INT, 
	DEADLINES_STARTDEADLINE_ID bigint, 
	DEADLINES_ENDDEADLINE_ID bigint
   ) ;
--------------------------------------------------------
--  DDL for Table DELEGATION_DELEGATES
--------------------------------------------------------

  CREATE TABLE DELEGATION_DELEGATES 
   (	TASK_ID bigint, 
	ENTITY_ID VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table DESIGNATED_CONTACT
--------------------------------------------------------

  CREATE TABLE DESIGNATED_CONTACT 
   (	CONTROL_NO bigint, 
	PROFILE_ID bigint, 
	TICKET_ID bigint, 
	SAME_AS_PROVIDER_IND VARCHAR(1), 
	HIRE_DT TIMESTAMP(0), 
	TYPE VARCHAR(255), 
	PERSON_ID bigint
   ) ;
--------------------------------------------------------
--  DDL for Table DOCUMENT_CONTENT
--------------------------------------------------------

  CREATE TABLE DOCUMENT_CONTENT 
   (	CONTENT_ID VARCHAR(255), 
	RAW_CONTENT oid
   ) ;
--------------------------------------------------------
--  DDL for Table EMAIL_HEADER
--------------------------------------------------------

  CREATE TABLE EMAIL_HEADER 
   (	ID bigint, 
	BODY TEXT, 
	FROMADDRESS VARCHAR(255), 
	LANGUAGE VARCHAR(255), 
	REPLYTOADDRESS VARCHAR(255), 
	SUBJECT VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table ENTITY
--------------------------------------------------------

  CREATE TABLE ENTITY 
   (	ENTITY_ID bigint, 
	PERSON_IND VARCHAR(1), 
	ENROLLED_IND VARCHAR(1), 
	PROFILE_ID bigint, 
	TICKET_ID bigint, 
	NAME VARCHAR(100), 
	LEGAL_NAME VARCHAR(100), 
	LEGACY_IND VARCHAR(1), 
	NPI VARCHAR(10), 
	NPI_VERIFIED_IND VARCHAR(1), 
	NONEXCL_VERIFIED_IND VARCHAR(1), 
	PROVIDER_TYP_CD VARCHAR(2), 
	PRIMARY_CONTACT_ID bigint, 
	MIDDLE_NAME VARCHAR(50), 
	SSN VARCHAR(9), 
	SSN_VERIFIED_IND VARCHAR(1), 
	BIRTH_DT TIMESTAMP(0), 
	DEGREE_CD VARCHAR(2), 
	DEGREE_AWARD_DT TIMESTAMP(0), 
	PREFIX VARCHAR(50), 
	SUFFIX VARCHAR(50), 
	FIRST_NAME VARCHAR(50), 
	LAST_NAME VARCHAR(50), 
	STATE_TAX_ID VARCHAR(10), 
	FEIN VARCHAR(10), 
	AGENCY_ID VARCHAR(100), 
	BGS_ID VARCHAR(100), 
	BGS_CLEARANCE_DT TIMESTAMP(0), 
	SAME_BILLING_ADDRESS_IND VARCHAR(1), 
	SAME_REIMBURSEMENT_ADDRESS_IND VARCHAR(1), 
	SAME_1099_ADDRESS_IND VARCHAR(1), 
	BILLING_ADDRESS_ID bigint, 
	REIMBURSEMENT_ADDRESS_ID bigint, 
	TEN99_ADDRESS_ID bigint, 
	FISCAL_YEAR_END VARCHAR(5), 
	REMITTANCE_SEQUENCE_ORDER VARCHAR(255), 
	EFT_VENDOR_NUMBER VARCHAR(14), 
	SUB_TYP VARCHAR(100), 
	NPI_LU_VERIFIED_IND VARCHAR(1), 
	LEGACY_ID VARCHAR(9)
   ) ;
--------------------------------------------------------
--  DDL for Table ESCALATION
--------------------------------------------------------

  CREATE TABLE ESCALATION 
   (	ID bigint, 
	NAME VARCHAR(255), 
	DEADLINE_ESCALATION_ID bigint
   ) ;
--------------------------------------------------------
--  DDL for Table EVENT
--------------------------------------------------------

  CREATE TABLE EVENT 
   (	EVENT_ID bigint, 
	NPI VARCHAR(10), 
	TICKET_ID bigint, 
	STATUS_CD VARCHAR(2), 
	CREATED_BY VARCHAR(50), 
	CREATE_TS TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table EVENTTYPES
--------------------------------------------------------

  CREATE TABLE EVENTTYPES 
   (	INSTANCEID bigint, 
	EVENTTYPES VARCHAR(255), 
	ELEMENT VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table EXTERNAL_ACCOUNT_LINK
--------------------------------------------------------

  CREATE TABLE EXTERNAL_ACCOUNT_LINK 
   (	EXTERNAL_ACCOUNT_LINK_ID bigint, 
	USER_ID VARCHAR(255), 
	SYSTEM_ID VARCHAR(255), 
	EXTERNAL_USER_ID VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table EXTERNAL_PROFILE_LINK
--------------------------------------------------------

  CREATE TABLE EXTERNAL_PROFILE_LINK 
   (	EXTERNAL_PROFILE_LINK_ID bigint, 
	PROFILE_ID bigint, 
	SYSTEM_ID VARCHAR(255), 
	EXTERNAL_PROFILE_ID VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table HELP_ITEM
--------------------------------------------------------

  CREATE TABLE HELP_ITEM 
   (	HELP_ITEM_ID bigint, 
	TITLE VARCHAR(45), 
	DESCRIPTION VARCHAR(2048)
   ) ;
--------------------------------------------------------
--  DDL for Table I18NTEXT
--------------------------------------------------------

  CREATE TABLE I18NTEXT 
   (	ID bigint, 
	LANGUAGE VARCHAR(255), 
	TEXT TEXT, 
	TASK_SUBJECTS_ID bigint, 
	TASK_NAMES_ID bigint, 
	TASK_DESCRIPTIONS_ID bigint, 
	DEADLINE_DOCUMENTATION_ID bigint, 
	NOTIFICATION_SUBJECTS_ID bigint, 
	NOTIFICATION_NAMES_ID bigint, 
	NOTIFICATION_DOCUMENTATION_ID bigint, 
	NOTIFICATION_DESCRIPTIONS_ID bigint, 
	REASSIGNMENT_DOCUMENTATION_ID bigint
   ) ;
--------------------------------------------------------
--  DDL for Table LEGACY_MAPPING
--------------------------------------------------------

  CREATE TABLE LEGACY_MAPPING 
   (	LEGACY_MAPPING_ID bigint, 
	SYSTEM_NM VARCHAR(200), 
	CODE_TYPE VARCHAR(200), 
	INTERNAL_CODE VARCHAR(200), 
	EXTERNAL_CODE VARCHAR(200)
   ) ;
--------------------------------------------------------
--  DDL for Table LICENSE
--------------------------------------------------------

  CREATE TABLE LICENSE 
   (	LICENSE_ID bigint, 
	PROFILE_ID bigint, 
	TICKET_ID bigint, 
	OBJECT_TYP VARCHAR(1), 
	SPECIALTY_TYP_CD VARCHAR(2), 
	LICENSE_TYP_CD VARCHAR(2), 
	LICENSE_NUMBER VARCHAR(45), 
	ORIGINAL_ISSUE_DT TIMESTAMP(0), 
	RENEWAL_END_DT TIMESTAMP(0), 
	ISSUING_US_STATE VARCHAR(2), 
	ATTACHMENT_ID bigint, 
	LICENSE_STATUS_CD VARCHAR(2), 
	ISSUING_BOARD_CD VARCHAR(2), 
	AFFILIATE_ID bigint
   ) ;
--------------------------------------------------------
--  DDL for Table LU_BEN_OWNER_TYP
--------------------------------------------------------

  CREATE TABLE LU_BEN_OWNER_TYP 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255), 
	OWNER_TYPE CHAR(1)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_CORP_STRUCTURE_TYP
--------------------------------------------------------

  CREATE TABLE LU_CORP_STRUCTURE_TYP 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_COS
--------------------------------------------------------

  CREATE TABLE LU_COS 
   (	CODE VARCHAR(3), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_COUNTY
--------------------------------------------------------

  CREATE TABLE LU_COUNTY 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_DEGREE
--------------------------------------------------------

  CREATE TABLE LU_DEGREE 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_ISSUING_BOARD
--------------------------------------------------------

  CREATE TABLE LU_ISSUING_BOARD 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_LICENSE_STATUS
--------------------------------------------------------

  CREATE TABLE LU_LICENSE_STATUS 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_LICENSE_TYPE
--------------------------------------------------------

  CREATE TABLE LU_LICENSE_TYPE 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_OWNERSHIP_TYP
--------------------------------------------------------

  CREATE TABLE LU_OWNERSHIP_TYP 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_PAYTO_TYPE
--------------------------------------------------------

  CREATE TABLE LU_PAYTO_TYPE 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_PROFILE_STATUS
--------------------------------------------------------

  CREATE TABLE LU_PROFILE_STATUS 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_PROVIDER_TYPE
--------------------------------------------------------

  CREATE TABLE LU_PROVIDER_TYPE 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255), 
	APPLICANT_TYP BIGINT DEFAULT 0, 
	AGREEMENT_ID bigint, 
	ADDENDUM_ID bigint, 
	PRIVATE_OFFICE_FLG CHAR(1), 
	EMPLOYED_CONTRACTED_FLG CHAR(1), 
	ADDITONAL_PRACTICE_FLG CHAR(1), 
	PAYMENT_REQUIRED_FLG CHAR(1), 
	AGREEMENT_FLG CHAR(1), 
	ADDENDUM_FLG CHAR(1)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_QP_TYP
--------------------------------------------------------

  CREATE TABLE LU_QP_TYP 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_RELATIONSHIP_TYP
--------------------------------------------------------

  CREATE TABLE LU_RELATIONSHIP_TYP 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_REQUEST_TYP
--------------------------------------------------------

  CREATE TABLE LU_REQUEST_TYP 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_RISK_LEVEL
--------------------------------------------------------

  CREATE TABLE LU_RISK_LEVEL 
   (	CODE VARCHAR(2), 
	SORT_IDX BIGINT, 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_ROLE
--------------------------------------------------------

  CREATE TABLE LU_ROLE 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_SPECIALTY_TYPE
--------------------------------------------------------

  CREATE TABLE LU_SPECIALTY_TYPE 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255), 
	SUB_CAT_CD VARCHAR(2)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_STATE
--------------------------------------------------------

  CREATE TABLE LU_STATE 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_SVC_ASSURANCE_EXT_TYP
--------------------------------------------------------

  CREATE TABLE LU_SVC_ASSURANCE_EXT_TYP 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255), 
	SVC_ASSURANCE_CD VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_SVC_ASSURANCE_TYP
--------------------------------------------------------

  CREATE TABLE LU_SVC_ASSURANCE_TYP 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255), 
	PATIENT_IND VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_SVC_CAT
--------------------------------------------------------

  CREATE TABLE LU_SVC_CAT 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LU_TICKET_STATUS
--------------------------------------------------------

  CREATE TABLE LU_TICKET_STATUS 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table NODEINSTANCELOG
--------------------------------------------------------

  CREATE TABLE NODEINSTANCELOG 
   (	ID bigint, 
	LOG_DATE TIMESTAMP (6), 
	NODEID VARCHAR(255), 
	NODEINSTANCEID VARCHAR(255), 
	NODENAME VARCHAR(255), 
	PROCESSID VARCHAR(255), 
	PROCESSINSTANCEID bigint, 
	TYPE BIGINT
   ) ;
--------------------------------------------------------
--  DDL for Table NOTIFICATION
--------------------------------------------------------

  CREATE TABLE NOTIFICATION 
   (	DTYPE VARCHAR(31), 
	ID bigint, 
	PRIORITY BIGINT, 
	ESCALATION_NOTIFICATIONS_ID bigint
   ) ;
--------------------------------------------------------
--  DDL for Table NOTIFICATION_BAS
--------------------------------------------------------

  CREATE TABLE NOTIFICATION_BAS 
   (	TASK_ID bigint, 
	ENTITY_ID VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table NOTIFICATION_EMAIL_HEADER
--------------------------------------------------------

  CREATE TABLE NOTIFICATION_EMAIL_HEADER 
   (	NOTIFICATION_ID bigint, 
	EMAILHEADERS_ID bigint, 
	MAPKEY VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table NOTIFICATION_RECIPIENTS
--------------------------------------------------------

  CREATE TABLE NOTIFICATION_RECIPIENTS 
   (	TASK_ID bigint, 
	ENTITY_ID VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table ORGANIZATIONALENTITY
--------------------------------------------------------

  CREATE TABLE ORGANIZATIONALENTITY 
   (	DTYPE VARCHAR(31), 
	ID VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table OWNERSHIP_INFO
--------------------------------------------------------

  CREATE TABLE OWNERSHIP_INFO 
   (	OWNERSHIP_INFO_ID bigint, 
	PROFILE_ID bigint, 
	TICKET_ID bigint, 
	ENTITY_TYP_CD VARCHAR(2), 
	ENTITY_SUBTYP_CD VARCHAR(2), 
	OTH_ENTITY_TYP_DESC VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table OWNER_ASSET
--------------------------------------------------------

  CREATE TABLE OWNER_ASSET 
   (	OWNER_ASSET_ID bigint, 
	TYPE VARCHAR(255), 
	NAME VARCHAR(255), 
	ADDRESS_ID bigint, 
	OWNERSHIP_TYP_CD VARCHAR(2), 
	OWNERSHIP_INFO_ID bigint, 
	IDX BIGINT
   ) ;
--------------------------------------------------------
--  DDL for Table PEOPLEASSIGNMENTS_BAS
--------------------------------------------------------

  CREATE TABLE PEOPLEASSIGNMENTS_BAS 
   (	TASK_ID bigint, 
	ENTITY_ID VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table PEOPLEASSIGNMENTS_EXCLOWNERS
--------------------------------------------------------

  CREATE TABLE PEOPLEASSIGNMENTS_EXCLOWNERS 
   (	TASK_ID bigint, 
	ENTITY_ID VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table PEOPLEASSIGNMENTS_POTOWNERS
--------------------------------------------------------

  CREATE TABLE PEOPLEASSIGNMENTS_POTOWNERS 
   (	TASK_ID bigint, 
	ENTITY_ID VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table PEOPLEASSIGNMENTS_RECIPIENTS
--------------------------------------------------------

  CREATE TABLE PEOPLEASSIGNMENTS_RECIPIENTS 
   (	TASK_ID bigint, 
	ENTITY_ID VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table PEOPLEASSIGNMENTS_STAKEHOLDERS
--------------------------------------------------------

  CREATE TABLE PEOPLEASSIGNMENTS_STAKEHOLDERS 
   (	TASK_ID bigint, 
	ENTITY_ID VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table PERSISTENT_LOGINS
--------------------------------------------------------

  CREATE TABLE PERSISTENT_LOGINS 
   (	USERNAME VARCHAR(64), 
	SERIES VARCHAR(64), 
	TOKEN VARCHAR(64), 
	LAST_USED TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table PROCESSINSTANCEINFO
--------------------------------------------------------

  CREATE TABLE PROCESSINSTANCEINFO 
   (	INSTANCEID bigint, 
	OPTLOCK BIGINT, 
	PROCESSID VARCHAR(255), 
	STARTDATE TIMESTAMP (6), 
	LASTREADDATE TIMESTAMP (6), 
	LASTMODIFICATIONDATE TIMESTAMP (6), 
	STATE BIGINT, 
	PROCESSINSTANCEBYTEARRAY BYTEA, 
	ID bigint
   ) ;
--------------------------------------------------------
--  DDL for Table PROCESSINSTANCELOG
--------------------------------------------------------

  CREATE TABLE PROCESSINSTANCELOG 
   (	ID bigint, 
	END_DATE TIMESTAMP (6), 
	PROCESSID VARCHAR(255), 
	PROCESSINSTANCEID bigint, 
	START_DATE TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table PROFILE_ASSURED_EXT_SVCS
--------------------------------------------------------

  CREATE TABLE PROFILE_ASSURED_EXT_SVCS 
   (	PROFILE_ASSURED_SVC_ID bigint, 
	ELT VARCHAR(2)
   ) ;
--------------------------------------------------------
--  DDL for Table PROFILE_ASSURED_SVC_XREF
--------------------------------------------------------

  CREATE TABLE PROFILE_ASSURED_SVC_XREF 
   (	PROFILE_ASSURED_SVC_ID bigint, 
	EFF_DT TIMESTAMP(0), 
	SVC_ASSURANCE_CD VARCHAR(2), 
	PROFILE_ID bigint, 
	TICKET_ID bigint, 
	STATUS BIGINT
   ) ;
--------------------------------------------------------
--  DDL for Table PROFILE_GRP_XREF
--------------------------------------------------------

  CREATE TABLE PROFILE_GRP_XREF 
   (	PROFILE_GRP_XREF_ID bigint, 
	PRIMARY_IND VARCHAR(1), 
	EFF_DT TIMESTAMP(0), 
	PROFILE_ID bigint, 
	TICKET_ID bigint, 
	OBJECT_TYP VARCHAR(1), 
	TARGET_PROFILE_ID bigint, 
	TARGET_ENTITY_ID bigint, 
	QP_TYP_CD CHAR(2), 
	TERM_IND CHAR(1), 
	TERM_DT TIMESTAMP(0), 
	ACK_ID VARCHAR(200), 
	MHP_TYPE VARCHAR(75)
   ) ;
--------------------------------------------------------
--  DDL for Table PROFILE_NOTES
--------------------------------------------------------

  CREATE TABLE PROFILE_NOTES 
   (	PROVIDER_NOTE_ID bigint, 
	PROFILE_ID bigint, 
	TICKET_ID bigint, 
	NOTE_TXT VARCHAR(255), 
	CREATED_BY VARCHAR(255), 
	CREATE_TS TIMESTAMP(0)
   ) ;
--------------------------------------------------------
--  DDL for Table PROFILE_PAYTO_XREF
--------------------------------------------------------

  CREATE TABLE PROFILE_PAYTO_XREF 
   (	PROFILE_PAYTO_XREF_ID bigint, 
	EFF_DT TIMESTAMP(0), 
	PAYTO_TYP_CD VARCHAR(2), 
	PROFILE_ID bigint, 
	TICKET_ID bigint, 
	TARGET_PROFILE_ID bigint, 
	NAME VARCHAR(200), 
	CONTACT_NAME VARCHAR(200), 
	NPI VARCHAR(10), 
	PHONE_NUMBER VARCHAR(100)
   ) ;
--------------------------------------------------------
--  DDL for Table PROVIDER_AGREEMENT_XREF
--------------------------------------------------------

  CREATE TABLE PROVIDER_AGREEMENT_XREF 
   (	PROVIDER_AGREEMENT_XREF_ID bigint, 
	PROFILEID bigint, 
	TICKETID bigint, 
	ACCEPTED_DATE TIMESTAMP(0), 
	AGREEMENT_DOCUMENT_ID bigint
   ) ;
--------------------------------------------------------
--  DDL for Table PROVIDER_COS
--------------------------------------------------------

  CREATE TABLE PROVIDER_COS 
   (	PROVIDER_COS_ID bigint, 
	PROVIDER_COS_CD VARCHAR(3)
   ) ;
--------------------------------------------------------
--  DDL for Table PROVIDER_COS_XREF
--------------------------------------------------------

  CREATE TABLE PROVIDER_COS_XREF 
   (	PROVIDER_COS_ID bigint, 
	PROFILE_ID bigint DEFAULT 0, 
	TICKET_ID bigint DEFAULT 0, 
	START_DT TIMESTAMP (6), 
	END_DT TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table PROVIDER_PROFILE
--------------------------------------------------------

  CREATE TABLE PROVIDER_PROFILE 
   (	CONTROL_NO bigint, 
	PROFILE_ID bigint DEFAULT 0, 
	TICKET_ID bigint DEFAULT 0, 
	EFFECTIVE_DT TIMESTAMP(0), 
	PROFILE_STATUS_CD VARCHAR(2), 
	REFERENCE_TICKET_ID bigint DEFAULT 0, 
	RESERVATION_EMP_IND VARCHAR(1), 
	PRIVATE_PRACTICE_IND VARCHAR(1), 
	GROUP_PRACTICE_IND VARCHAR(1), 
	CRIMINAL_CONVICTION_IND VARCHAR(1), 
	CIVIL_PENALTY_IND VARCHAR(1), 
	PREV_EXCLUSION_IND VARCHAR(1), 
	ADULT_IND VARCHAR(1), 
	COUNTY_NAME VARCHAR(200), 
	CONT_EMPLY_IND VARCHAR(1), 
	RISK_LEVEL_CD VARCHAR(2), 
	OWNER_ID VARCHAR(45), 
	CREATED_BY VARCHAR(45), 
	CREATE_TS TIMESTAMP (6), 
	LAST_UPDATED_BY VARCHAR(45), 
	LAST_UPDATED_TS TIMESTAMP (6), 
	EMP_CRIMINAL_CONVICTION_IND CHAR(1), 
	EMP_CIVIL_PENALTY_IND CHAR(1), 
	EMP_PREV_EXCLUSION_IND CHAR(1), 
	BED_COUNT DOUBLE PRECISION, 
	BED_COUNT_DT TIMESTAMP(0), 
	FORM_COMPLETED_BY VARCHAR(200), 
	HLTH_BRD_IND CHAR(1), 
	TITLE_18_BED_COUNT DOUBLE PRECISION, 
	TITLE_19_BED_COUNT DOUBLE PRECISION, 
	DUAL_CERT_BED_COUNT DOUBLE PRECISION, 
	ICF_BED_COUNT DOUBLE PRECISION, 
	PT_OT_IND CHAR(1)
   ) ;
--------------------------------------------------------
--  DDL for Table PROVIDER_SETTING
--------------------------------------------------------

  CREATE TABLE PROVIDER_SETTING 
   (	PROVIDER_SETTING_ID bigint, 
	PROVIDER_TYP_CD VARCHAR(255), 
	REL_TYP VARCHAR(2), 
	RELATED_ENTITY_TYP VARCHAR(255), 
	RELATED_ENTITY_CD VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table PROVIDER_STATEMENT
--------------------------------------------------------

  CREATE TABLE PROVIDER_STATEMENT 
   (	PROVIDER_STATEMENT_ID bigint, 
	PROFILEID bigint, 
	TICKETID bigint, 
	NAME VARCHAR(45), 
	TITLE VARCHAR(45), 
	STATEMENT_DT TIMESTAMP(0), 
	SIGN_ATTACHEMENT_ID bigint
   ) ;
--------------------------------------------------------
--  DDL for Table PROVIDER_SVCS
--------------------------------------------------------

  CREATE TABLE PROVIDER_SVCS 
   (	PROVIDER_SVCS_ID bigint, 
	PROFILE_ID bigint, 
	TICKET_ID bigint, 
	SVC_CAT_CD VARCHAR(2)
   ) ;
--------------------------------------------------------
--  DDL for Table PROVIDER_TYPE_REQ_FIELDS
--------------------------------------------------------

  CREATE TABLE PROVIDER_TYPE_REQ_FIELDS 
   (	PROVIDER_TYPE_CD VARCHAR(2), 
	REQUIRED_FIELD_CD VARCHAR(2)
   ) ;
--------------------------------------------------------
--  DDL for Table REASSIGNMENT
--------------------------------------------------------

  CREATE TABLE REASSIGNMENT 
   (	ID bigint, 
	ESCALATION_REASSIGNMENTS_ID bigint
   ) ;
--------------------------------------------------------
--  DDL for Table REASSIGNMENT_POTENTIALOWNERS
--------------------------------------------------------

  CREATE TABLE REASSIGNMENT_POTENTIALOWNERS 
   (	TASK_ID bigint, 
	ENTITY_ID VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table REQUIRED_FLD
--------------------------------------------------------

  CREATE TABLE REQUIRED_FLD 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255), 
	REQUIRED_FLD_TYPE_ID VARCHAR(2)
   ) ;
--------------------------------------------------------
--  DDL for Table REQUIRED_FLD_TYPE
--------------------------------------------------------

  CREATE TABLE REQUIRED_FLD_TYPE 
   (	CODE VARCHAR(2), 
	DESCRIPTION VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table SCREENING_SCHEDULE
--------------------------------------------------------

  CREATE TABLE SCREENING_SCHEDULE 
   (	SCREENING_SCHEDULE_ID bigint, 
	UPCOMING_SCREENING_DT TIMESTAMP (6), 
	INTERVAL_TYPE VARCHAR(255), 
	INTERVAL_VALUE BIGINT DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table SESSIONINFO
--------------------------------------------------------

  CREATE TABLE SESSIONINFO 
   (	ID BIGINT, 
	LASTMODIFICATIONDATE TIMESTAMP (6), 
	RULESBYTEARRAY oid,
	STARTDATE TIMESTAMP (6), 
	OPTLOCK BIGINT
   ) ;
--------------------------------------------------------
--  DDL for Table SUBTASKSSTRATEGY
--------------------------------------------------------

  CREATE TABLE SUBTASKSSTRATEGY 
   (	DTYPE VARCHAR(100), 
	ID bigint, 
	NAME VARCHAR(255), 
	TASK_ID bigint
   ) ;
--------------------------------------------------------
--  DDL for Table TASK
--------------------------------------------------------

  CREATE TABLE TASK 
   (	ID bigint, 
	ARCHIVED INT, 
	ALLOWEDTODELEGATE VARCHAR(255), 
	PRIORITY BIGINT, 
	ACTIVATIONTIME TIMESTAMP (6), 
	CREATEDON TIMESTAMP (6), 
	DOCUMENTACCESSTYPE BIGINT, 
	DOCUMENTCONTENTID bigint, 
	DOCUMENTTYPE VARCHAR(255), 
	EXPIRATIONTIME TIMESTAMP (6), 
	FAULTACCESSTYPE BIGINT, 
	FAULTCONTENTID bigint, 
	FAULTNAME VARCHAR(255), 
	FAULTTYPE VARCHAR(255), 
	OUTPUTACCESSTYPE BIGINT, 
	OUTPUTCONTENTID bigint, 
	OUTPUTTYPE VARCHAR(255), 
	PARENTID bigint, 
	PREVIOUSSTATUS BIGINT, 
	PROCESSID VARCHAR(255), 
	PROCESSINSTANCEID bigint, 
	PROCESSSESSIONID BIGINT, 
	SKIPABLE boolean,
	STATUS VARCHAR(255), 
	WORKITEMID bigint, 
	OPTLOCK BIGINT, 
	TASKINITIATOR_ID VARCHAR(255), 
	ACTUALOWNER_ID VARCHAR(255), 
	CREATEDBY_ID VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table TASK_COMMENT
--------------------------------------------------------

  CREATE TABLE TASK_COMMENT 
   (	ID bigint, 
	ADDEDAT TIMESTAMP (6), 
	TEXT TEXT, 
	ADDEDBY_ID VARCHAR(255), 
	TASKDATA_COMMENTS_ID bigint
   ) ;
--------------------------------------------------------
--  DDL for Table TICKET
--------------------------------------------------------

  CREATE TABLE TICKET 
   (	TICKET_ID bigint, 
	STATUS_CD VARCHAR(2), 
	REQUEST_TYP_CD VARCHAR(2), 
	PROCESS_INSTANCE_ID bigint DEFAULT 0, 
	REF_PROFILE_ID bigint DEFAULT 0, 
	SUBMISSION_TS TIMESTAMP (6), 
	STATUS_TS TIMESTAMP (6), 
	STATUS_NOTE_TXT VARCHAR(1000), 
	SUBMITTED_BY VARCHAR(50), 
	CREATED_BY VARCHAR(50), 
	CREATE_TS TIMESTAMP (6), 
	LAST_UPDATED_BY VARCHAR(50), 
	PROGRESS_PAGE VARCHAR(100), 
	REF_PROFILE_TS TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table VARIABLEINSTANCELOG
--------------------------------------------------------

  CREATE TABLE VARIABLEINSTANCELOG 
   (	ID bigint, 
	LOG_DATE TIMESTAMP (6), 
	PROCESSID VARCHAR(255), 
	PROCESSINSTANCEID bigint, 
	VALUE VARCHAR(255), 
	VARIABLEID VARCHAR(255), 
	VARIABLEINSTANCEID VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table WORKITEMINFO
--------------------------------------------------------

  CREATE TABLE WORKITEMINFO
   (	WORKITEMID bigint,
	CREATIONDATE TIMESTAMP (6),
	NAME VARCHAR(255),
	PROCESSINSTANCEID bigint,
	STATE bigint,
	OPTLOCK BIGINT,
	WORKITEMBYTEARRAY BYTEA
   ) ;

--------------------------------------------------------
--  Constraints for Table REQUIRED_FLD_TYPE
--------------------------------------------------------

  ALTER TABLE REQUIRED_FLD_TYPE ADD CONSTRAINT SYS_C003995 PRIMARY KEY (CODE);
 
  ALTER TABLE REQUIRED_FLD_TYPE ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PROFILE_PAYTO_XREF
--------------------------------------------------------

  ALTER TABLE PROFILE_PAYTO_XREF ADD CONSTRAINT SYS_C003997 PRIMARY KEY (PROFILE_PAYTO_XREF_ID);
 
  ALTER TABLE PROFILE_PAYTO_XREF ALTER PROFILE_PAYTO_XREF_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table NOTIFICATION_BAS
--------------------------------------------------------

  ALTER TABLE NOTIFICATION_BAS ALTER TASK_ID SET NOT NULL;
 
  ALTER TABLE NOTIFICATION_BAS ALTER ENTITY_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_SPECIALTY_TYPE
--------------------------------------------------------

  ALTER TABLE LU_SPECIALTY_TYPE ADD CONSTRAINT SYS_C004001 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_SPECIALTY_TYPE ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table CMS_SEQUENCE
--------------------------------------------------------

  ALTER TABLE CMS_SEQUENCE ADD CONSTRAINT SYS_C0071426 PRIMARY KEY (SEQ_NAME);
 
  ALTER TABLE CMS_SEQUENCE ALTER SEQ_NAME SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PROCESSINSTANCEINFO
--------------------------------------------------------

  ALTER TABLE PROCESSINSTANCEINFO ADD CONSTRAINT SYS_C004006 PRIMARY KEY (INSTANCEID);
 
  ALTER TABLE PROCESSINSTANCEINFO ALTER INSTANCEID SET NOT NULL;
 
  ALTER TABLE PROCESSINSTANCEINFO ALTER STATE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table DEADLINE
--------------------------------------------------------

  ALTER TABLE DEADLINE ADD CONSTRAINT SYS_C004008 PRIMARY KEY (ID);
 
  ALTER TABLE DEADLINE ALTER ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_LICENSE_STATUS
--------------------------------------------------------

  ALTER TABLE LU_LICENSE_STATUS ADD CONSTRAINT SYS_C004010 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_LICENSE_STATUS ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_STATE
--------------------------------------------------------

  ALTER TABLE LU_STATE ADD CONSTRAINT SYS_C004012 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_STATE ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table EXTERNAL_PROFILE_LINK
--------------------------------------------------------

  ALTER TABLE EXTERNAL_PROFILE_LINK ADD CONSTRAINT SYS_C004014 PRIMARY KEY (EXTERNAL_PROFILE_LINK_ID);
 
  ALTER TABLE EXTERNAL_PROFILE_LINK ALTER EXTERNAL_PROFILE_LINK_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PEOPLEASSIGNMENTS_RECIPIENTS
--------------------------------------------------------

  ALTER TABLE PEOPLEASSIGNMENTS_RECIPIENTS ALTER TASK_ID SET NOT NULL;
 
  ALTER TABLE PEOPLEASSIGNMENTS_RECIPIENTS ALTER ENTITY_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_TICKET_STATUS
--------------------------------------------------------

  ALTER TABLE LU_TICKET_STATUS ADD CONSTRAINT SYS_C004018 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_TICKET_STATUS ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PERSISTENT_LOGINS
--------------------------------------------------------

  ALTER TABLE PERSISTENT_LOGINS ADD CONSTRAINT SYS_C004022 PRIMARY KEY (SERIES);
 
  ALTER TABLE PERSISTENT_LOGINS ALTER USERNAME SET NOT NULL;
 
  ALTER TABLE PERSISTENT_LOGINS ALTER SERIES SET NOT NULL;
 
  ALTER TABLE PERSISTENT_LOGINS ALTER TOKEN SET NOT NULL;
 
  ALTER TABLE PERSISTENT_LOGINS ALTER LAST_USED SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table EVENTTYPES
--------------------------------------------------------

  ALTER TABLE EVENTTYPES ALTER INSTANCEID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table DELEGATION_DELEGATES
--------------------------------------------------------

  ALTER TABLE DELEGATION_DELEGATES ALTER TASK_ID SET NOT NULL;
 
  ALTER TABLE DELEGATION_DELEGATES ALTER ENTITY_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table BOOLEANEXPRESSION
--------------------------------------------------------

  ALTER TABLE BOOLEANEXPRESSION ADD CONSTRAINT SYS_C004027 PRIMARY KEY (ID);
 
  ALTER TABLE BOOLEANEXPRESSION ALTER ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_QP_TYP
--------------------------------------------------------

  ALTER TABLE LU_QP_TYP ADD CONSTRAINT SYS_C004028 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_QP_TYP ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PEOPLEASSIGNMENTS_EXCLOWNERS
--------------------------------------------------------

  ALTER TABLE PEOPLEASSIGNMENTS_EXCLOWNERS ALTER TASK_ID SET NOT NULL;
 
  ALTER TABLE PEOPLEASSIGNMENTS_EXCLOWNERS ALTER ENTITY_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table SESSIONINFO
--------------------------------------------------------

  ALTER TABLE SESSIONINFO ADD CONSTRAINT SYS_C004032 PRIMARY KEY (ID);
 
  ALTER TABLE SESSIONINFO ALTER ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_RELATIONSHIP_TYP
--------------------------------------------------------

  ALTER TABLE LU_RELATIONSHIP_TYP ADD CONSTRAINT SYS_C004034 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_RELATIONSHIP_TYP ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table EMAIL_HEADER
--------------------------------------------------------

  ALTER TABLE EMAIL_HEADER ADD CONSTRAINT SYS_C004036 PRIMARY KEY (ID);
 
  ALTER TABLE EMAIL_HEADER ALTER ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table EXTERNAL_ACCOUNT_LINK
--------------------------------------------------------

  ALTER TABLE EXTERNAL_ACCOUNT_LINK ADD CONSTRAINT SYS_C004038 PRIMARY KEY (EXTERNAL_ACCOUNT_LINK_ID);
 
  ALTER TABLE EXTERNAL_ACCOUNT_LINK ALTER EXTERNAL_ACCOUNT_LINK_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PROCESSINSTANCELOG
--------------------------------------------------------

  ALTER TABLE PROCESSINSTANCELOG ADD CONSTRAINT SYS_C004041 PRIMARY KEY (ID);
 
  ALTER TABLE PROCESSINSTANCELOG ALTER ID SET NOT NULL;
 
  ALTER TABLE PROCESSINSTANCELOG ALTER PROCESSINSTANCEID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table ATTACHMENT
--------------------------------------------------------

  ALTER TABLE ATTACHMENT ADD CONSTRAINT SYS_C004044 PRIMARY KEY (ID);
 
  ALTER TABLE ATTACHMENT ALTER ID SET NOT NULL;
 
  ALTER TABLE ATTACHMENT ALTER ATTACHMENTCONTENTID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_COUNTY
--------------------------------------------------------

  ALTER TABLE LU_COUNTY ADD CONSTRAINT SYS_C004269 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_COUNTY ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table DOCUMENT_CONTENT
--------------------------------------------------------

  ALTER TABLE DOCUMENT_CONTENT ADD CONSTRAINT SYS_C004047 PRIMARY KEY (CONTENT_ID);
 
  ALTER TABLE DOCUMENT_CONTENT ALTER CONTENT_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table REASSIGNMENT_POTENTIALOWNERS
--------------------------------------------------------

  ALTER TABLE REASSIGNMENT_POTENTIALOWNERS ALTER TASK_ID SET NOT NULL;
 
  ALTER TABLE REASSIGNMENT_POTENTIALOWNERS ALTER ENTITY_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_SVC_CAT
--------------------------------------------------------

  ALTER TABLE LU_SVC_CAT ADD CONSTRAINT SYS_C004050 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_SVC_CAT ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PROFILE_GRP_XREF
--------------------------------------------------------

  ALTER TABLE PROFILE_GRP_XREF ADD CONSTRAINT SYS_C004052 PRIMARY KEY (PROFILE_GRP_XREF_ID);
 
  ALTER TABLE PROFILE_GRP_XREF ALTER PROFILE_GRP_XREF_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table ESCALATION
--------------------------------------------------------

  ALTER TABLE ESCALATION ADD CONSTRAINT SYS_C004054 PRIMARY KEY (ID);
 
  ALTER TABLE ESCALATION ALTER ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table REASSIGNMENT
--------------------------------------------------------

  ALTER TABLE REASSIGNMENT ADD CONSTRAINT SYS_C004056 PRIMARY KEY (ID);
 
  ALTER TABLE REASSIGNMENT ALTER ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table DESIGNATED_CONTACT
--------------------------------------------------------

  ALTER TABLE DESIGNATED_CONTACT ADD CONSTRAINT SYS_C004058 PRIMARY KEY (CONTROL_NO);
 
  ALTER TABLE DESIGNATED_CONTACT ALTER CONTROL_NO SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_COS
--------------------------------------------------------

  ALTER TABLE LU_COS ALTER CODE SET NOT NULL;
 
  ALTER TABLE LU_COS ADD PRIMARY KEY (CODE);
--------------------------------------------------------
--  Constraints for Table LEGACY_MAPPING
--------------------------------------------------------

  ALTER TABLE LEGACY_MAPPING ADD PRIMARY KEY (LEGACY_MAPPING_ID);
--------------------------------------------------------
--  Constraints for Table SUBTASKSSTRATEGY
--------------------------------------------------------

  ALTER TABLE SUBTASKSSTRATEGY ADD CONSTRAINT SYS_C004061 PRIMARY KEY (ID);
 
  ALTER TABLE SUBTASKSSTRATEGY ALTER DTYPE SET NOT NULL;
 
  ALTER TABLE SUBTASKSSTRATEGY ALTER ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_LICENSE_TYPE
--------------------------------------------------------

  ALTER TABLE LU_LICENSE_TYPE ADD CONSTRAINT SYS_C004063 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_LICENSE_TYPE ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_ISSUING_BOARD
--------------------------------------------------------

  ALTER TABLE LU_ISSUING_BOARD ADD CONSTRAINT SYS_C004065 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_ISSUING_BOARD ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table CONTACT_INFO
--------------------------------------------------------

  ALTER TABLE CONTACT_INFO ADD CONSTRAINT SYS_C004067 PRIMARY KEY (CONTACT_INFO_ID);
 
  ALTER TABLE CONTACT_INFO ALTER CONTACT_INFO_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_PAYTO_TYPE
--------------------------------------------------------

  ALTER TABLE LU_PAYTO_TYPE ADD CONSTRAINT SYS_C004069 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_PAYTO_TYPE ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table TASK
--------------------------------------------------------

  ALTER TABLE TASK ADD CONSTRAINT SYS_C004080 PRIMARY KEY (ID);
 
  ALTER TABLE TASK ALTER ID SET NOT NULL;
 
  ALTER TABLE TASK ALTER PRIORITY SET NOT NULL;
 
  ALTER TABLE TASK ALTER DOCUMENTCONTENTID SET NOT NULL;
 
  ALTER TABLE TASK ALTER FAULTCONTENTID SET NOT NULL;
 
  ALTER TABLE TASK ALTER OUTPUTCONTENTID SET NOT NULL;
 
  ALTER TABLE TASK ALTER PARENTID SET NOT NULL;
 
  ALTER TABLE TASK ALTER PROCESSINSTANCEID SET NOT NULL;
 
  ALTER TABLE TASK ALTER PROCESSSESSIONID SET NOT NULL;
 
  ALTER TABLE TASK ALTER SKIPABLE SET NOT NULL;
 
  ALTER TABLE TASK ALTER WORKITEMID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PROVIDER_AGREEMENT_XREF
--------------------------------------------------------

  ALTER TABLE PROVIDER_AGREEMENT_XREF ADD CONSTRAINT SYS_C004082 PRIMARY KEY (PROVIDER_AGREEMENT_XREF_ID);
 
  ALTER TABLE PROVIDER_AGREEMENT_XREF ALTER PROVIDER_AGREEMENT_XREF_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table HELP_ITEM
--------------------------------------------------------

  ALTER TABLE HELP_ITEM ADD CONSTRAINT SYS_C004084 PRIMARY KEY (HELP_ITEM_ID);
 
  ALTER TABLE HELP_ITEM ALTER HELP_ITEM_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table SCREENING_SCHEDULE
--------------------------------------------------------

  ALTER TABLE SCREENING_SCHEDULE ADD CONSTRAINT SYS_C004087 PRIMARY KEY (SCREENING_SCHEDULE_ID);
 
  ALTER TABLE SCREENING_SCHEDULE ALTER SCREENING_SCHEDULE_ID SET NOT NULL;
 
  ALTER TABLE SCREENING_SCHEDULE ALTER INTERVAL_VALUE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_ROLE
--------------------------------------------------------

  ALTER TABLE LU_ROLE ADD CONSTRAINT SYS_C004089 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_ROLE ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table WORKITEMINFO
--------------------------------------------------------

  ALTER TABLE WORKITEMINFO ADD CONSTRAINT SYS_C004093 PRIMARY KEY (WORKITEMID);
 
  ALTER TABLE WORKITEMINFO ALTER WORKITEMID SET NOT NULL;
 
  ALTER TABLE WORKITEMINFO ALTER PROCESSINSTANCEID SET NOT NULL;
 
  ALTER TABLE WORKITEMINFO ALTER STATE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table NOTIFICATION
--------------------------------------------------------

  ALTER TABLE NOTIFICATION ADD CONSTRAINT SYS_C004097 PRIMARY KEY (ID);
 
  ALTER TABLE NOTIFICATION ALTER DTYPE SET NOT NULL;
 
  ALTER TABLE NOTIFICATION ALTER ID SET NOT NULL;
 
  ALTER TABLE NOTIFICATION ALTER PRIORITY SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_RISK_LEVEL
--------------------------------------------------------

  ALTER TABLE LU_RISK_LEVEL ADD CONSTRAINT SYS_C004099 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_RISK_LEVEL ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table ADDRESS
--------------------------------------------------------

  ALTER TABLE ADDRESS ADD CONSTRAINT SYS_C004101 PRIMARY KEY (ADDRESS_ID);
 
  ALTER TABLE ADDRESS ALTER ADDRESS_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_BEN_OWNER_TYP
--------------------------------------------------------

  ALTER TABLE LU_BEN_OWNER_TYP ADD CONSTRAINT SYS_C004103 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_BEN_OWNER_TYP ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PROVIDER_SVCS
--------------------------------------------------------

  ALTER TABLE PROVIDER_SVCS ADD CONSTRAINT SYS_C004104 PRIMARY KEY (PROVIDER_SVCS_ID);
 
  ALTER TABLE PROVIDER_SVCS ALTER PROVIDER_SVCS_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_PROVIDER_TYPE
--------------------------------------------------------

  ALTER TABLE LU_PROVIDER_TYPE ADD CONSTRAINT SYS_C0072362 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_PROVIDER_TYPE ALTER CODE SET NOT NULL;
 
  ALTER TABLE LU_PROVIDER_TYPE ALTER APPLICANT_TYP SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PROVIDER_PROFILE
--------------------------------------------------------

  ALTER TABLE PROVIDER_PROFILE ADD CONSTRAINT SYS_C004112 PRIMARY KEY (CONTROL_NO);
 
  ALTER TABLE PROVIDER_PROFILE ALTER CONTROL_NO SET NOT NULL;
 
  ALTER TABLE PROVIDER_PROFILE ALTER PROFILE_ID SET NOT NULL;
 
  ALTER TABLE PROVIDER_PROFILE ALTER TICKET_ID SET NOT NULL;
 
  ALTER TABLE PROVIDER_PROFILE ALTER REFERENCE_TICKET_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PROVIDER_COS
--------------------------------------------------------

  ALTER TABLE PROVIDER_COS ALTER PROVIDER_COS_ID SET NOT NULL;
 
  ALTER TABLE PROVIDER_COS ALTER PROVIDER_COS_CD SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table AUDIT_DETAIL
--------------------------------------------------------

  ALTER TABLE AUDIT_DETAIL ADD CONSTRAINT SYS_C004114 PRIMARY KEY (AUDIT_DETAIL_ID);
 
  ALTER TABLE AUDIT_DETAIL ALTER AUDIT_DETAIL_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table OWNER_ASSET
--------------------------------------------------------

  ALTER TABLE OWNER_ASSET ADD CONSTRAINT SYS_C004116 PRIMARY KEY (OWNER_ASSET_ID);
 
  ALTER TABLE OWNER_ASSET ALTER OWNER_ASSET_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table VARIABLEINSTANCELOG
--------------------------------------------------------

  ALTER TABLE VARIABLEINSTANCELOG ADD CONSTRAINT SYS_C004119 PRIMARY KEY (ID);
 
  ALTER TABLE VARIABLEINSTANCELOG ALTER ID SET NOT NULL;
 
  ALTER TABLE VARIABLEINSTANCELOG ALTER PROCESSINSTANCEID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_REQUEST_TYP
--------------------------------------------------------

  ALTER TABLE LU_REQUEST_TYP ADD CONSTRAINT SYS_C004121 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_REQUEST_TYP ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table ENTITY
--------------------------------------------------------

  ALTER TABLE ENTITY ADD CONSTRAINT SYS_C004124 PRIMARY KEY (ENTITY_ID);
 
  ALTER TABLE ENTITY ALTER ENTITY_ID SET NOT NULL;
 
  ALTER TABLE ENTITY ALTER PERSON_IND SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table TICKET
--------------------------------------------------------

  ALTER TABLE TICKET ADD CONSTRAINT SYS_C004128 PRIMARY KEY (TICKET_ID);
 
  ALTER TABLE TICKET ALTER TICKET_ID SET NOT NULL;
 
  ALTER TABLE TICKET ALTER PROCESS_INSTANCE_ID SET NOT NULL;
 
  ALTER TABLE TICKET ALTER REF_PROFILE_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PEOPLEASSIGNMENTS_STAKEHOLDERS
--------------------------------------------------------

  ALTER TABLE PEOPLEASSIGNMENTS_STAKEHOLDERS ALTER TASK_ID SET NOT NULL;
 
  ALTER TABLE PEOPLEASSIGNMENTS_STAKEHOLDERS ALTER ENTITY_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table NOTIFICATION_RECIPIENTS
--------------------------------------------------------

  ALTER TABLE NOTIFICATION_RECIPIENTS ALTER TASK_ID SET NOT NULL;
 
  ALTER TABLE NOTIFICATION_RECIPIENTS ALTER ENTITY_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_OWNERSHIP_TYP
--------------------------------------------------------

  ALTER TABLE LU_OWNERSHIP_TYP ADD CONSTRAINT SYS_C004134 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_OWNERSHIP_TYP ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PROVIDER_SETTING
--------------------------------------------------------

  ALTER TABLE PROVIDER_SETTING ADD CONSTRAINT SYS_C004136 PRIMARY KEY (PROVIDER_SETTING_ID);
 
  ALTER TABLE PROVIDER_SETTING ALTER PROVIDER_SETTING_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table ORGANIZATIONALENTITY
--------------------------------------------------------

  ALTER TABLE ORGANIZATIONALENTITY ADD CONSTRAINT SYS_C004139 PRIMARY KEY (ID);
 
  ALTER TABLE ORGANIZATIONALENTITY ALTER DTYPE SET NOT NULL;
 
  ALTER TABLE ORGANIZATIONALENTITY ALTER ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table CONTENT
--------------------------------------------------------

  ALTER TABLE CONTENT ADD CONSTRAINT SYS_C004141 PRIMARY KEY (ID);
 
  ALTER TABLE CONTENT ALTER ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PEOPLEASSIGNMENTS_BAS
--------------------------------------------------------

  ALTER TABLE PEOPLEASSIGNMENTS_BAS ALTER TASK_ID SET NOT NULL;
 
  ALTER TABLE PEOPLEASSIGNMENTS_BAS ALTER ENTITY_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table REQUIRED_FLD
--------------------------------------------------------

  ALTER TABLE REQUIRED_FLD ADD CONSTRAINT SYS_C004145 PRIMARY KEY (CODE);
 
  ALTER TABLE REQUIRED_FLD ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table CMS_USER
--------------------------------------------------------

  ALTER TABLE CMS_USER ADD CONSTRAINT SYS_C004147 PRIMARY KEY (USER_ID);
 
  ALTER TABLE CMS_USER ALTER USER_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PROFILE_NOTES
--------------------------------------------------------

  ALTER TABLE PROFILE_NOTES ADD CONSTRAINT SYS_C004149 PRIMARY KEY (PROVIDER_NOTE_ID);
 
  ALTER TABLE PROFILE_NOTES ALTER PROVIDER_NOTE_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LICENSE
--------------------------------------------------------

  ALTER TABLE LICENSE ADD CONSTRAINT SYS_C004151 PRIMARY KEY (LICENSE_ID);
 
  ALTER TABLE LICENSE ALTER LICENSE_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table I18NTEXT
--------------------------------------------------------

  ALTER TABLE I18NTEXT ADD CONSTRAINT SYS_C004153 PRIMARY KEY (ID);
 
  ALTER TABLE I18NTEXT ALTER ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_CORP_STRUCTURE_TYP
--------------------------------------------------------

  ALTER TABLE LU_CORP_STRUCTURE_TYP ADD CONSTRAINT SYS_C004155 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_CORP_STRUCTURE_TYP ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PROVIDER_STATEMENT
--------------------------------------------------------

  ALTER TABLE PROVIDER_STATEMENT ADD CONSTRAINT SYS_C004158 PRIMARY KEY (PROVIDER_STATEMENT_ID);
 
  ALTER TABLE PROVIDER_STATEMENT ALTER PROVIDER_STATEMENT_ID SET NOT NULL;
 
  ALTER TABLE PROVIDER_STATEMENT ALTER SIGN_ATTACHEMENT_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PROVIDER_COS_XREF
--------------------------------------------------------

  ALTER TABLE PROVIDER_COS_XREF ALTER PROVIDER_COS_ID SET NOT NULL;
 
  ALTER TABLE PROVIDER_COS_XREF ALTER START_DT SET NOT NULL;
 
  ALTER TABLE PROVIDER_COS_XREF ADD PRIMARY KEY (PROVIDER_COS_ID);
--------------------------------------------------------
--  Constraints for Table AGREEMENT_DOCUMENT
--------------------------------------------------------

  ALTER TABLE AGREEMENT_DOCUMENT ADD CONSTRAINT SYS_C004160 PRIMARY KEY (AGREEMENT_DOCUMENT_ID);
 
  ALTER TABLE AGREEMENT_DOCUMENT ALTER AGREEMENT_DOCUMENT_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table NODEINSTANCELOG
--------------------------------------------------------

  ALTER TABLE NODEINSTANCELOG ADD CONSTRAINT SYS_C004164 PRIMARY KEY (ID);
 
  ALTER TABLE NODEINSTANCELOG ALTER ID SET NOT NULL;
 
  ALTER TABLE NODEINSTANCELOG ALTER PROCESSINSTANCEID SET NOT NULL;
 
  ALTER TABLE NODEINSTANCELOG ALTER TYPE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table BENEFICIAL_OWNER
--------------------------------------------------------

  ALTER TABLE BENEFICIAL_OWNER ADD CONSTRAINT SYS_C004167 PRIMARY KEY (BENEFICIAL_OWNER_ID);
 
  ALTER TABLE BENEFICIAL_OWNER ALTER BENEFICIAL_OWNER_ID SET NOT NULL;
 
  ALTER TABLE BENEFICIAL_OWNER ALTER PERSON_IND SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table TASK_COMMENT
--------------------------------------------------------

  ALTER TABLE TASK_COMMENT ADD CONSTRAINT SYS_C004169 PRIMARY KEY (ID);
 
  ALTER TABLE TASK_COMMENT ALTER ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PEOPLEASSIGNMENTS_POTOWNERS
--------------------------------------------------------

  ALTER TABLE PEOPLEASSIGNMENTS_POTOWNERS ALTER TASK_ID SET NOT NULL;
 
  ALTER TABLE PEOPLEASSIGNMENTS_POTOWNERS ALTER ENTITY_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_DEGREE
--------------------------------------------------------

  ALTER TABLE LU_DEGREE ADD CONSTRAINT SYS_C004173 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_DEGREE ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table CMS_ATTACHMENT
--------------------------------------------------------

  ALTER TABLE CMS_ATTACHMENT ADD CONSTRAINT SYS_C004175 PRIMARY KEY (ATTACHMENT_ID);
 
  ALTER TABLE CMS_ATTACHMENT ALTER ATTACHMENT_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table EVENT
--------------------------------------------------------

  ALTER TABLE EVENT ADD CONSTRAINT SYS_C004177 PRIMARY KEY (EVENT_ID);
 
  ALTER TABLE EVENT ALTER EVENT_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table NOTIFICATION_EMAIL_HEADER
--------------------------------------------------------

  ALTER TABLE NOTIFICATION_EMAIL_HEADER ADD CONSTRAINT SYS_C004181 PRIMARY KEY (NOTIFICATION_ID, MAPKEY);
 
  ALTER TABLE NOTIFICATION_EMAIL_HEADER ALTER NOTIFICATION_ID SET NOT NULL;
 
  ALTER TABLE NOTIFICATION_EMAIL_HEADER ALTER EMAILHEADERS_ID SET NOT NULL;
 
  ALTER TABLE NOTIFICATION_EMAIL_HEADER ALTER MAPKEY SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table AUDIT_RECORD
--------------------------------------------------------

  ALTER TABLE AUDIT_RECORD ADD CONSTRAINT SYS_C004184 PRIMARY KEY (AUDIT_RECORD_ID);
 
  ALTER TABLE AUDIT_RECORD ALTER AUDIT_RECORD_ID SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table LU_PROFILE_STATUS
--------------------------------------------------------

  ALTER TABLE LU_PROFILE_STATUS ADD CONSTRAINT SYS_C004186 PRIMARY KEY (CODE);
 
  ALTER TABLE LU_PROFILE_STATUS ALTER CODE SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table PROVIDER_TYPE_REQ_FIELDS
--------------------------------------------------------

  ALTER TABLE PROVIDER_TYPE_REQ_FIELDS ALTER PROVIDER_TYPE_CD SET NOT NULL;
 
  ALTER TABLE PROVIDER_TYPE_REQ_FIELDS ALTER REQUIRED_FIELD_CD SET NOT NULL;
--------------------------------------------------------
--  Constraints for Table OWNERSHIP_INFO
--------------------------------------------------------

  ALTER TABLE OWNERSHIP_INFO ADD CONSTRAINT SYS_C004190 PRIMARY KEY (OWNERSHIP_INFO_ID);
 
  ALTER TABLE OWNERSHIP_INFO ALTER OWNERSHIP_INFO_ID SET NOT NULL;
--------------------------------------------------------
--  Ref Constraints for Table PROVIDER_COS
--------------------------------------------------------

  ALTER TABLE PROVIDER_COS ADD CONSTRAINT FK7137CA197920405B FOREIGN KEY (PROVIDER_COS_ID)
	  REFERENCES PROVIDER_COS_XREF (PROVIDER_COS_ID);
 
  ALTER TABLE PROVIDER_COS ADD CONSTRAINT FK7137CA19DAE7A092 FOREIGN KEY (PROVIDER_COS_CD)
	  REFERENCES LU_COS (CODE);