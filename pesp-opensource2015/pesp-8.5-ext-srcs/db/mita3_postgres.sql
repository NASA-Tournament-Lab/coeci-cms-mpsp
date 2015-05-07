--------------------------------------------------------
--  File created - Tuesday-December-18-2012   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence HIBERNATE_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  HIBERNATE_SEQUENCE  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 1 CACHE 20 NO CYCLE ;
--------------------------------------------------------
--  DDL for Sequence MITA3_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  MITA3_SEQ  MINVALUE 1 MAXVALUE 9223372036854775807 INCREMENT BY 1 START WITH 2121 CACHE 20 NO CYCLE ;
--------------------------------------------------------
--  DDL for Table AANA_CRIT
--------------------------------------------------------

  CREATE TABLE AANA_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	SSN VARCHAR(255), 
	AANA_NUMBER DECIMAL(19,0), 
	RECERTIFICATION SMALLINT
   ) ;
--------------------------------------------------------
--  DDL for Table BBHT_CRIT
--------------------------------------------------------

  CREATE TABLE BBHT_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	LICENSE_TYPE_LU_ID DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table BLS_CRIT
--------------------------------------------------------

  CREATE TABLE BLS_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	SCOPE BIGINT, 
	FILING_STATUS BIGINT, 
	BUSINESS_NAME VARCHAR(255), 
	FILE_NUMBER VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table CHIROPRACTIC_CRIT
--------------------------------------------------------

  CREATE TABLE CHIROPRACTIC_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	CITY VARCHAR(255), 
	ZIPCODE VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table CRED_STATUS_TYPE
--------------------------------------------------------

  CREATE TABLE CRED_STATUS_TYPE 
   (	CRED_STATUS_TYPE_LU_ID DECIMAL(19,0), 
	NAME VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table DEATH_MASTER_RECORD
--------------------------------------------------------

  CREATE TABLE DEATH_MASTER_RECORD 
   (	ID DECIMAL(19,0), 
	SSN VARCHAR(9), 
	LAST_NAME VARCHAR(20), 
	NAME_SUFFIX VARCHAR(4), 
	FIRST_NAME VARCHAR(15), 
	MIDDLE_NAME VARCHAR(15), 
	VP_CODE VARCHAR(1), 
	DATE_OF_DEATH TIMESTAMP(0), 
	DATE_OF_BIRTH TIMESTAMP(0)
   ) ;
--------------------------------------------------------
--  DDL for Table DENTISTRY_CRIT
--------------------------------------------------------

  CREATE TABLE DENTISTRY_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	MIDDLENAME VARCHAR(255), 
	CITY VARCHAR(255), 
	LICENSE_TYPE_LU_ID DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table DIETETICS_CRIT
--------------------------------------------------------

  CREATE TABLE DIETETICS_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table DISCIPLINE_TYPE
--------------------------------------------------------

  CREATE TABLE DISCIPLINE_TYPE 
   (	DISCIPLINE_TYPE_LU_ID DECIMAL(19,0), 
	NAME VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table EPLS_CRIT
--------------------------------------------------------

  CREATE TABLE EPLS_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	NPITYPE BIGINT, 
	NAME VARCHAR(255), 
	ACT_FROM_DT TIMESTAMP(0), 
	ACT_TO_DT TIMESTAMP(0), 
	TERM_FROM_DT TIMESTAMP(0), 
	TERM_TO_DT TIMESTAMP(0), 
	CRTE_FROM_DT TIMESTAMP(0), 
	CRTE_TO_DT TIMESTAMP(0), 
	UPDT_FROM_DT TIMESTAMP(0), 
	UPDT_TO_DT TIMESTAMP(0), 
	RECIPROCAL_CD VARCHAR(255), 
	PROCUREMENT_CD VARCHAR(255), 
	NON_PROCUREMENT_CD VARCHAR(255), 
	AGENCY VARCHAR(255), 
	US_STATE VARCHAR(255), 
	COUNTRY VARCHAR(255), 
	DUNS VARCHAR(255), 
	CAGE_CODE VARCHAR(255), 
	EXCLUSION_TYPE_LU_ID DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table EXCLUSION_TYPE_LU
--------------------------------------------------------

  CREATE TABLE EXCLUSION_TYPE_LU 
   (	EXCLUSION_TYPE_LU_ID DECIMAL(19,0), 
	NAME VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table HOPC_CRIT
--------------------------------------------------------

  CREATE TABLE HOPC_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	CITY VARCHAR(255), 
	COUNTY VARCHAR(255), 
	CREDENTIAL_NUMBER DECIMAL(19,0), 
	OCCUPATION_TYPE_LU_ID DECIMAL(19,0), 
	CRED_STATUS_TYPE_LU_ID DECIMAL(19,0), 
	DISCIPLINE_TYPE_LU_ID DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table LICENSE_LEVEL_LU
--------------------------------------------------------

  CREATE TABLE LICENSE_LEVEL_LU 
   (	LICENSE_LEVEL_LU_ID DECIMAL(19,0), 
	NAME VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table LICENSE_TYPE_LU
--------------------------------------------------------

  CREATE TABLE LICENSE_TYPE_LU 
   (	LICENSE_TYPE_LU_ID DECIMAL(19,0), 
	NAME VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table MARRIAGE_FAMILY_CRIT
--------------------------------------------------------

  CREATE TABLE MARRIAGE_FAMILY_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	CRITERIA VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table MEDICAID_CERT_PROV_CRIT
--------------------------------------------------------

  CREATE TABLE MEDICAID_CERT_PROV_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	TYPE VARCHAR(255), 
	CRITERIA VARCHAR(255), 
	VALUE VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table MED_PRACTICE_CRIT
--------------------------------------------------------

  CREATE TABLE MED_PRACTICE_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	CITY VARCHAR(255), 
	ZIPCODE VARCHAR(255), 
	SPECIALTY_LU_ID DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table NURSING_CRIT
--------------------------------------------------------

  CREATE TABLE NURSING_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table OCCUPATION_TYPE
--------------------------------------------------------

  CREATE TABLE OCCUPATION_TYPE 
   (	OCCUPATION_TYPE_LU_ID DECIMAL(19,0), 
	NAME VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table OIG_CRIT
--------------------------------------------------------

  CREATE TABLE OIG_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	BUSINESS_NAME VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table OPTOMETRY_CRIT
--------------------------------------------------------

  CREATE TABLE OPTOMETRY_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ORG_CDP_CRIT
--------------------------------------------------------

  CREATE TABLE ORG_CDP_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	NAME VARCHAR(255), 
	CITY VARCHAR(255), 
	COUNTY VARCHAR(255), 
	ZIP VARCHAR(255), 
	LICENSE_NUMBER DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ORG_CMHC_CRIT
--------------------------------------------------------

  CREATE TABLE ORG_CMHC_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	CRITERIA VARCHAR(255), 
	VALUE VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table ORG_CR_CRIT
--------------------------------------------------------

  CREATE TABLE ORG_CR_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	NAME VARCHAR(255), 
	CITY VARCHAR(255), 
	COUNTY VARCHAR(255), 
	ZIP VARCHAR(255), 
	LICENSE_NUMBER DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ORG_DTHC_CRIT
--------------------------------------------------------

  CREATE TABLE ORG_DTHC_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	NAME VARCHAR(255), 
	CITY VARCHAR(255), 
	COUNTY VARCHAR(255), 
	ZIP VARCHAR(255), 
	LICENSE_NUMBER DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ORG_HOSPICE_CRIT
--------------------------------------------------------

  CREATE TABLE ORG_HOSPICE_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	CRITERIA VARCHAR(255), 
	VALUE VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table ORG_HOSPITAL_CRIT
--------------------------------------------------------

  CREATE TABLE ORG_HOSPITAL_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	CRITERIA VARCHAR(255), 
	VALUE VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table ORG_IRTS_CRIT
--------------------------------------------------------

  CREATE TABLE ORG_IRTS_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	NAME VARCHAR(255), 
	CITY VARCHAR(255), 
	COUNTY VARCHAR(255), 
	ZIP VARCHAR(255), 
	LICENSE_NUMBER DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ORG_PDNG_CRIT
--------------------------------------------------------

  CREATE TABLE ORG_PDNG_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	CRITERIA VARCHAR(255), 
	VALUE VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table ORG_PHARMACY_CRIT
--------------------------------------------------------

  CREATE TABLE ORG_PHARMACY_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	NAME VARCHAR(255), 
	ADDRESS VARCHAR(255), 
	CITY VARCHAR(255), 
	COUNTY VARCHAR(255), 
	ZIP VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table ORG_PHNO_CRIT
--------------------------------------------------------

  CREATE TABLE ORG_PHNO_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	CRITERIA VARCHAR(255), 
	VALUE VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table ORG_PWDDIC_CRIT
--------------------------------------------------------

  CREATE TABLE ORG_PWDDIC_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	NAME VARCHAR(255), 
	CITY VARCHAR(255), 
	COUNTY VARCHAR(255), 
	ZIP VARCHAR(255), 
	LICENSE_NUMBER DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table ORG_RDFS_CRIT
--------------------------------------------------------

  CREATE TABLE ORG_RDFS_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	CRITERIA VARCHAR(255), 
	VALUE VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table PECOS_RECORD
--------------------------------------------------------

  CREATE TABLE PECOS_RECORD 
   (	ID DECIMAL(19,0), 
	NPI VARCHAR(50), 
	LAST_NAME VARCHAR(50), 
	FIRST_NAME VARCHAR(50)
   ) ;
--------------------------------------------------------
--  DDL for Table PHARMACY_CRIT
--------------------------------------------------------

  CREATE TABLE PHARMACY_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	BUSINESS_NAME VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table PHYSICAL_CRIT
--------------------------------------------------------

  CREATE TABLE PHYSICAL_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	CRITERIA VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table POD_MED_LIC_CRIT
--------------------------------------------------------

  CREATE TABLE POD_MED_LIC_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	LICENSE_NUMBER DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table POD_MED_NAME_CRIT
--------------------------------------------------------

  CREATE TABLE POD_MED_NAME_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table RESULT_LOG_ENTRY
--------------------------------------------------------

  CREATE TABLE RESULT_LOG_ENTRY 
   (	RESULT_LOG_ENTRY_ID DECIMAL(19,0), 
	SEARCH_CRITERIA_ID DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SEARCH_CRITERIA
--------------------------------------------------------

  CREATE TABLE SEARCH_CRITERIA 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	IDENTIFIER VARCHAR(255), 
	LAST_NAME VARCHAR(255), 
	FIRST_NAME VARCHAR(255), 
	STATE VARCHAR(255), 
	PAGE_SIZE BIGINT, 
	PAGE_NUMBER BIGINT, 
	SORT_ORDER BIGINT, 
	SORT_COLUMN VARCHAR(255)
   ) ;
--------------------------------------------------------
--  DDL for Table SOCIAL_WORK_LIC_CRIT
--------------------------------------------------------

  CREATE TABLE SOCIAL_WORK_LIC_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	CITY VARCHAR(255), 
	COUNTY VARCHAR(255), 
	LICENSE_NUMBER DECIMAL(19,0), 
	LICENSE_LEVEL_LU_ID DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SOCIAL_WORK_NAME_CRIT
--------------------------------------------------------

  CREATE TABLE SOCIAL_WORK_NAME_CRIT 
   (	SEARCH_CRITERIA_ID DECIMAL(19,0), 
	CITY VARCHAR(255), 
	COUNTY VARCHAR(255), 
	LICENSE_LEVEL_LU_ID DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SOURCE_STATS
--------------------------------------------------------

  CREATE TABLE SOURCE_STATS 
   (	SOURCE_STATS_ID DECIMAL(19,0), 
	NAME VARCHAR(255), 
	SUCCESS_COUNT DECIMAL(19,0), 
	NOT_FOUND_COUNT DECIMAL(19,0), 
	MOVED_COUNT DECIMAL(19,0), 
	ERROR_COUNT DECIMAL(19,0), 
	RELIABILITY DOUBLE PRECISION
   ) ;
--------------------------------------------------------
--  DDL for Table SPECIALTY_LU
--------------------------------------------------------

  CREATE TABLE SPECIALTY_LU 
   (	SPECIALTY_LU_ID DECIMAL(19,0), 
	CODE DECIMAL(19,0), 
	NAME VARCHAR(255), 
	SPECIALTY_TYPE_LU_ID DECIMAL(19,0)
   ) ;
--------------------------------------------------------
--  DDL for Table SPECIALTY_TYPE_LU
--------------------------------------------------------

  CREATE TABLE SPECIALTY_TYPE_LU 
   (	SPECIALTY_TYPE_LU_ID DECIMAL(19,0), 
	NAME VARCHAR(255)
   ) ;

--------------------------------------------------------
--  Constraints for Table EPLS_CRIT
--------------------------------------------------------

  ALTER TABLE EPLS_CRIT ADD CONSTRAINT SYS_C0042328 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE EPLS_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table ORG_PHARMACY_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_PHARMACY_CRIT ADD CONSTRAINT SYS_C0042387 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE ORG_PHARMACY_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table POD_MED_NAME_CRIT
--------------------------------------------------------

  ALTER TABLE POD_MED_NAME_CRIT ADD CONSTRAINT SYS_C0042358 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE POD_MED_NAME_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table BBHT_CRIT
--------------------------------------------------------

  ALTER TABLE BBHT_CRIT ADD CONSTRAINT SYS_C0042314 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE BBHT_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table MED_PRACTICE_CRIT
--------------------------------------------------------

  ALTER TABLE MED_PRACTICE_CRIT ADD CONSTRAINT SYS_C0042340 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE MED_PRACTICE_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table OCCUPATION_TYPE
--------------------------------------------------------

  ALTER TABLE OCCUPATION_TYPE ADD CONSTRAINT SYS_C0042346 PRIMARY KEY (OCCUPATION_TYPE_LU_ID);
 
  ALTER TABLE OCCUPATION_TYPE ALTER OCCUPATION_TYPE_LU_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table DENTISTRY_CRIT
--------------------------------------------------------

  ALTER TABLE DENTISTRY_CRIT ADD CONSTRAINT SYS_C0042322 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE DENTISTRY_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table ORG_CDP_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_CDP_CRIT ADD CONSTRAINT SYS_C0042388 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE ORG_CDP_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table EXCLUSION_TYPE_LU
--------------------------------------------------------

  ALTER TABLE EXCLUSION_TYPE_LU ADD CONSTRAINT SYS_C0042330 PRIMARY KEY (EXCLUSION_TYPE_LU_ID);
 
  ALTER TABLE EXCLUSION_TYPE_LU ALTER EXCLUSION_TYPE_LU_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table SOURCE_STATS
--------------------------------------------------------

  ALTER TABLE SOURCE_STATS ADD CONSTRAINT SYS_C0042368 PRIMARY KEY (SOURCE_STATS_ID);
 
  ALTER TABLE SOURCE_STATS ALTER SOURCE_STATS_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table ORG_CR_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_CR_CRIT ADD CONSTRAINT SYS_C0042389 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE ORG_CR_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table SPECIALTY_TYPE_LU
--------------------------------------------------------

  ALTER TABLE SPECIALTY_TYPE_LU ADD CONSTRAINT SYS_C0042372 PRIMARY KEY (SPECIALTY_TYPE_LU_ID);
 
  ALTER TABLE SPECIALTY_TYPE_LU ALTER SPECIALTY_TYPE_LU_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table CHIROPRACTIC_CRIT
--------------------------------------------------------

  ALTER TABLE CHIROPRACTIC_CRIT ADD CONSTRAINT SYS_C0042318 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE CHIROPRACTIC_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table SOCIAL_WORK_LIC_CRIT
--------------------------------------------------------

  ALTER TABLE SOCIAL_WORK_LIC_CRIT ADD CONSTRAINT SYS_C0042364 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE SOCIAL_WORK_LIC_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table ORG_PWDDIC_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_PWDDIC_CRIT ADD CONSTRAINT SYS_C0042392 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE ORG_PWDDIC_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table LICENSE_TYPE_LU
--------------------------------------------------------

  ALTER TABLE LICENSE_TYPE_LU ADD CONSTRAINT SYS_C0042336 PRIMARY KEY (LICENSE_TYPE_LU_ID);
 
  ALTER TABLE LICENSE_TYPE_LU ALTER LICENSE_TYPE_LU_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table ORG_IRTS_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_IRTS_CRIT ADD CONSTRAINT SYS_C0042391 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE ORG_IRTS_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table ORG_PDNG_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_PDNG_CRIT ADD CONSTRAINT SYS_C0042384 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE ORG_PDNG_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table LICENSE_LEVEL_LU
--------------------------------------------------------

  ALTER TABLE LICENSE_LEVEL_LU ADD CONSTRAINT SYS_C0042334 PRIMARY KEY (LICENSE_LEVEL_LU_ID);
 
  ALTER TABLE LICENSE_LEVEL_LU ALTER LICENSE_LEVEL_LU_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table ORG_HOSPICE_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_HOSPICE_CRIT ADD CONSTRAINT SYS_C0042383 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE ORG_HOSPICE_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table ORG_HOSPITAL_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_HOSPITAL_CRIT ADD CONSTRAINT SYS_C0042381 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE ORG_HOSPITAL_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table POD_MED_LIC_CRIT
--------------------------------------------------------

  ALTER TABLE POD_MED_LIC_CRIT ADD CONSTRAINT SYS_C0042356 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE POD_MED_LIC_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table SOCIAL_WORK_NAME_CRIT
--------------------------------------------------------

  ALTER TABLE SOCIAL_WORK_NAME_CRIT ADD CONSTRAINT SYS_C0042366 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE SOCIAL_WORK_NAME_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table CRED_STATUS_TYPE
--------------------------------------------------------

  ALTER TABLE CRED_STATUS_TYPE ADD CONSTRAINT SYS_C0042320 PRIMARY KEY (CRED_STATUS_TYPE_LU_ID);
 
  ALTER TABLE CRED_STATUS_TYPE ALTER CRED_STATUS_TYPE_LU_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table ORG_PHNO_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_PHNO_CRIT ADD CONSTRAINT SYS_C0042385 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE ORG_PHNO_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table ORG_CMHC_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_CMHC_CRIT ADD CONSTRAINT SYS_C0042382 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE ORG_CMHC_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table PECOS_RECORD
--------------------------------------------------------

  ALTER TABLE PECOS_RECORD ALTER ID SET NOT NULL ;
 
  ALTER TABLE PECOS_RECORD ALTER NPI SET NOT NULL ;
 
  ALTER TABLE PECOS_RECORD ALTER LAST_NAME SET NOT NULL ;
 
  ALTER TABLE PECOS_RECORD ALTER FIRST_NAME SET NOT NULL ;
 
  ALTER TABLE PECOS_RECORD ADD PRIMARY KEY (ID);
--------------------------------------------------------
--  Constraints for Table PHYSICAL_CRIT
--------------------------------------------------------

  ALTER TABLE PHYSICAL_CRIT ADD CONSTRAINT SYS_C0042354 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE PHYSICAL_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table DEATH_MASTER_RECORD
--------------------------------------------------------

  ALTER TABLE DEATH_MASTER_RECORD ALTER ID SET NOT NULL ;
 
  ALTER TABLE DEATH_MASTER_RECORD ALTER SSN SET NOT NULL ;
 
  ALTER TABLE DEATH_MASTER_RECORD ALTER LAST_NAME SET NOT NULL ;
 
  ALTER TABLE DEATH_MASTER_RECORD ALTER NAME_SUFFIX SET NOT NULL ;
 
  ALTER TABLE DEATH_MASTER_RECORD ALTER FIRST_NAME SET NOT NULL ;
 
  ALTER TABLE DEATH_MASTER_RECORD ALTER MIDDLE_NAME SET NOT NULL ;
 
  ALTER TABLE DEATH_MASTER_RECORD ALTER VP_CODE SET NOT NULL ;
 
  ALTER TABLE DEATH_MASTER_RECORD ALTER DATE_OF_DEATH SET NOT NULL ;
 
  ALTER TABLE DEATH_MASTER_RECORD ALTER DATE_OF_BIRTH SET NOT NULL ;
 
  ALTER TABLE DEATH_MASTER_RECORD ADD PRIMARY KEY (ID);
--------------------------------------------------------
--  Constraints for Table ORG_DTHC_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_DTHC_CRIT ADD CONSTRAINT SYS_C0042390 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE ORG_DTHC_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table MEDICAID_CERT_PROV_CRIT
--------------------------------------------------------

  ALTER TABLE MEDICAID_CERT_PROV_CRIT ADD CONSTRAINT SYS_C0042342 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE MEDICAID_CERT_PROV_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table MARRIAGE_FAMILY_CRIT
--------------------------------------------------------

  ALTER TABLE MARRIAGE_FAMILY_CRIT ADD CONSTRAINT SYS_C0042338 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE MARRIAGE_FAMILY_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table PHARMACY_CRIT
--------------------------------------------------------

  ALTER TABLE PHARMACY_CRIT ADD CONSTRAINT SYS_C0042352 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE PHARMACY_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table RESULT_LOG_ENTRY
--------------------------------------------------------

  ALTER TABLE RESULT_LOG_ENTRY ADD CONSTRAINT SYS_C0042360 PRIMARY KEY (RESULT_LOG_ENTRY_ID);
 
  ALTER TABLE RESULT_LOG_ENTRY ALTER RESULT_LOG_ENTRY_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table SPECIALTY_LU
--------------------------------------------------------

  ALTER TABLE SPECIALTY_LU ADD CONSTRAINT SYS_C0042370 PRIMARY KEY (SPECIALTY_LU_ID);
 
  ALTER TABLE SPECIALTY_LU ALTER SPECIALTY_LU_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table DISCIPLINE_TYPE
--------------------------------------------------------

  ALTER TABLE DISCIPLINE_TYPE ADD CONSTRAINT SYS_C0042326 PRIMARY KEY (DISCIPLINE_TYPE_LU_ID);
 
  ALTER TABLE DISCIPLINE_TYPE ALTER DISCIPLINE_TYPE_LU_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table AANA_CRIT
--------------------------------------------------------

  ALTER TABLE AANA_CRIT ADD CONSTRAINT SYS_C0042312 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE AANA_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table OPTOMETRY_CRIT
--------------------------------------------------------

  ALTER TABLE OPTOMETRY_CRIT ADD CONSTRAINT SYS_C0042350 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE OPTOMETRY_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table HOPC_CRIT
--------------------------------------------------------

  ALTER TABLE HOPC_CRIT ADD CONSTRAINT SYS_C0042332 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE HOPC_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table SEARCH_CRITERIA
--------------------------------------------------------

  ALTER TABLE SEARCH_CRITERIA ADD CONSTRAINT SYS_C0042362 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE SEARCH_CRITERIA ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table ORG_RDFS_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_RDFS_CRIT ADD CONSTRAINT SYS_C0042386 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE ORG_RDFS_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table BLS_CRIT
--------------------------------------------------------

  ALTER TABLE BLS_CRIT ADD CONSTRAINT SYS_C0042316 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE BLS_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table NURSING_CRIT
--------------------------------------------------------

  ALTER TABLE NURSING_CRIT ADD CONSTRAINT SYS_C0042344 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE NURSING_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table DIETETICS_CRIT
--------------------------------------------------------

  ALTER TABLE DIETETICS_CRIT ADD CONSTRAINT SYS_C0042324 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE DIETETICS_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Constraints for Table OIG_CRIT
--------------------------------------------------------

  ALTER TABLE OIG_CRIT ADD CONSTRAINT SYS_C0042348 PRIMARY KEY (SEARCH_CRITERIA_ID);
 
  ALTER TABLE OIG_CRIT ALTER SEARCH_CRITERIA_ID SET NOT NULL ;
--------------------------------------------------------
--  Ref Constraints for Table AANA_CRIT
--------------------------------------------------------

  ALTER TABLE AANA_CRIT ADD CONSTRAINT FKF01D0CC65B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table BBHT_CRIT
--------------------------------------------------------

  ALTER TABLE BBHT_CRIT ADD CONSTRAINT FKCF4958ED5B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
 
  ALTER TABLE BBHT_CRIT ADD CONSTRAINT FKCF4958EDD2A09F50 FOREIGN KEY (LICENSE_TYPE_LU_ID)
	  REFERENCES LICENSE_TYPE_LU (LICENSE_TYPE_LU_ID);
--------------------------------------------------------
--  Ref Constraints for Table BLS_CRIT
--------------------------------------------------------

  ALTER TABLE BLS_CRIT ADD CONSTRAINT FKDEFAEEF05B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table CHIROPRACTIC_CRIT
--------------------------------------------------------

  ALTER TABLE CHIROPRACTIC_CRIT ADD CONSTRAINT FKB42FC4F05B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table DENTISTRY_CRIT
--------------------------------------------------------

  ALTER TABLE DENTISTRY_CRIT ADD CONSTRAINT FK5B9A324F5B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
 
  ALTER TABLE DENTISTRY_CRIT ADD CONSTRAINT FK5B9A324FD2A09F50 FOREIGN KEY (LICENSE_TYPE_LU_ID)
	  REFERENCES LICENSE_TYPE_LU (LICENSE_TYPE_LU_ID);
--------------------------------------------------------
--  Ref Constraints for Table DIETETICS_CRIT
--------------------------------------------------------

  ALTER TABLE DIETETICS_CRIT ADD CONSTRAINT FKF91EAC635B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table EPLS_CRIT
--------------------------------------------------------

  ALTER TABLE EPLS_CRIT ADD CONSTRAINT FKC4B2E87467C67F0 FOREIGN KEY (EXCLUSION_TYPE_LU_ID)
	  REFERENCES EXCLUSION_TYPE_LU (EXCLUSION_TYPE_LU_ID);
 
  ALTER TABLE EPLS_CRIT ADD CONSTRAINT FKC4B2E875B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table HOPC_CRIT
--------------------------------------------------------

  ALTER TABLE HOPC_CRIT ADD CONSTRAINT FK1982B1BF31B1B2E6 FOREIGN KEY (CRED_STATUS_TYPE_LU_ID)
	  REFERENCES CRED_STATUS_TYPE (CRED_STATUS_TYPE_LU_ID);
 
  ALTER TABLE HOPC_CRIT ADD CONSTRAINT FK1982B1BF5B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
 
  ALTER TABLE HOPC_CRIT ADD CONSTRAINT FK1982B1BF8A44160 FOREIGN KEY (DISCIPLINE_TYPE_LU_ID)
	  REFERENCES DISCIPLINE_TYPE (DISCIPLINE_TYPE_LU_ID);
 
  ALTER TABLE HOPC_CRIT ADD CONSTRAINT FK1982B1BFD32C3DDA FOREIGN KEY (OCCUPATION_TYPE_LU_ID)
	  REFERENCES OCCUPATION_TYPE (OCCUPATION_TYPE_LU_ID);
--------------------------------------------------------
--  Ref Constraints for Table MARRIAGE_FAMILY_CRIT
--------------------------------------------------------

  ALTER TABLE MARRIAGE_FAMILY_CRIT ADD CONSTRAINT FK2C5AC5E05B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table MEDICAID_CERT_PROV_CRIT
--------------------------------------------------------

  ALTER TABLE MEDICAID_CERT_PROV_CRIT ADD CONSTRAINT FK383085E5B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table MED_PRACTICE_CRIT
--------------------------------------------------------

  ALTER TABLE MED_PRACTICE_CRIT ADD CONSTRAINT FKDC89E12B5B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
 
  ALTER TABLE MED_PRACTICE_CRIT ADD CONSTRAINT FKDC89E12BEE08B7F9 FOREIGN KEY (SPECIALTY_LU_ID)
	  REFERENCES SPECIALTY_LU (SPECIALTY_LU_ID);
--------------------------------------------------------
--  Ref Constraints for Table NURSING_CRIT
--------------------------------------------------------

  ALTER TABLE NURSING_CRIT ADD CONSTRAINT FKC9C2765F5B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table OIG_CRIT
--------------------------------------------------------

  ALTER TABLE OIG_CRIT ADD CONSTRAINT FK723D5D0C5B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table OPTOMETRY_CRIT
--------------------------------------------------------

  ALTER TABLE OPTOMETRY_CRIT ADD CONSTRAINT FK4ADD38925B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table ORG_CDP_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_CDP_CRIT ADD CONSTRAINT FK4D4749AF9A6A0E7 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table ORG_CMHC_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_CMHC_CRIT ADD CONSTRAINT FK4B3476FB4C2EBD8 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table ORG_CR_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_CR_CRIT ADD CONSTRAINT FK4C00301012192E4 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table ORG_DTHC_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_DTHC_CRIT ADD CONSTRAINT FKD18B0588D7FEED9 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table ORG_HOSPICE_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_HOSPICE_CRIT ADD CONSTRAINT FKB30FCD5B7D39D1B FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table ORG_HOSPITAL_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_HOSPITAL_CRIT ADD CONSTRAINT FKC6CFB4AE462A3B5 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table ORG_IRTS_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_IRTS_CRIT ADD CONSTRAINT FK12A61DB31C20521 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table ORG_PDNG_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_PDNG_CRIT ADD CONSTRAINT FKC4D50576368B326 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table ORG_PHARMACY_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_PHARMACY_CRIT ADD CONSTRAINT FKF3FF789F4B784FE FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table ORG_PHNO_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_PHNO_CRIT ADD CONSTRAINT FK6480D6047B9010B FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table ORG_PWDDIC_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_PWDDIC_CRIT ADD CONSTRAINT FK93A7E17D84852DD FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table ORG_RDFS_CRIT
--------------------------------------------------------

  ALTER TABLE ORG_RDFS_CRIT ADD CONSTRAINT FKF768023935D569E FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table PHARMACY_CRIT
--------------------------------------------------------

  ALTER TABLE PHARMACY_CRIT ADD CONSTRAINT FK733C25E65B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table PHYSICAL_CRIT
--------------------------------------------------------

  ALTER TABLE PHYSICAL_CRIT ADD CONSTRAINT FK5BAB80425B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table POD_MED_LIC_CRIT
--------------------------------------------------------

  ALTER TABLE POD_MED_LIC_CRIT ADD CONSTRAINT FKDF014C05B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table POD_MED_NAME_CRIT
--------------------------------------------------------

  ALTER TABLE POD_MED_NAME_CRIT ADD CONSTRAINT FKB48E4FE15B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table RESULT_LOG_ENTRY
--------------------------------------------------------

  ALTER TABLE RESULT_LOG_ENTRY ADD CONSTRAINT FK44DF8E155B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
--------------------------------------------------------
--  Ref Constraints for Table SOCIAL_WORK_LIC_CRIT
--------------------------------------------------------

  ALTER TABLE SOCIAL_WORK_LIC_CRIT ADD CONSTRAINT FK5D72280F5B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
 
  ALTER TABLE SOCIAL_WORK_LIC_CRIT ADD CONSTRAINT FK5D72280FD6BEC610 FOREIGN KEY (LICENSE_LEVEL_LU_ID)
	  REFERENCES LICENSE_LEVEL_LU (LICENSE_LEVEL_LU_ID);
--------------------------------------------------------
--  Ref Constraints for Table SOCIAL_WORK_NAME_CRIT
--------------------------------------------------------

  ALTER TABLE SOCIAL_WORK_NAME_CRIT ADD CONSTRAINT FK554EA6725B2C7000 FOREIGN KEY (SEARCH_CRITERIA_ID)
	  REFERENCES SEARCH_CRITERIA (SEARCH_CRITERIA_ID);
 
  ALTER TABLE SOCIAL_WORK_NAME_CRIT ADD CONSTRAINT FK554EA672D6BEC610 FOREIGN KEY (LICENSE_LEVEL_LU_ID)
	  REFERENCES LICENSE_LEVEL_LU (LICENSE_LEVEL_LU_ID);
--------------------------------------------------------
--  Ref Constraints for Table SPECIALTY_LU
--------------------------------------------------------

  ALTER TABLE SPECIALTY_LU ADD CONSTRAINT FKB5CA646ABD51F1F0 FOREIGN KEY (SPECIALTY_TYPE_LU_ID)
	  REFERENCES SPECIALTY_TYPE_LU (SPECIALTY_TYPE_LU_ID);