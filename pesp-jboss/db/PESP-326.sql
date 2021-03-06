CREATE TABLE "CMS"."LU_COS"
  (
    "CODE"        VARCHAR2(3 CHAR) NOT NULL ENABLE,
    "DESCRIPTION" VARCHAR2(255 CHAR),
    PRIMARY KEY ("CODE")
  );
CREATE TABLE "CMS"."PROVIDER_COS_XREF"
  (
    "PROVIDER_COS_ID" NUMBER(19,0) NOT NULL ENABLE,
    "PROFILE_ID"      NUMBER(19,0) DEFAULT 0,
    "TICKET_ID"       NUMBER(19,0) DEFAULT 0,
    "START_DT"        TIMESTAMP (6) NOT NULL ENABLE,
    "END_DT"          TIMESTAMP (6),
    PRIMARY KEY ("PROVIDER_COS_ID")
  );
CREATE TABLE "CMS"."PROVIDER_COS"
  (
    "PROVIDER_COS_ID" NUMBER(19,0) NOT NULL ENABLE,
    "PROVIDER_COS_CD" VARCHAR2(3 CHAR) NOT NULL ENABLE,
    CONSTRAINT "FK7137CA197920405B" FOREIGN KEY ("PROVIDER_COS_ID") REFERENCES "CMS"."PROVIDER_COS_XREF" ("PROVIDER_COS_ID") ENABLE,
    CONSTRAINT "FK7137CA19DAE7A092" FOREIGN KEY ("PROVIDER_COS_CD") REFERENCES "CMS"."LU_COS" ("CODE") ENABLE
  );

CREATE SEQUENCE  "CMS"."PROVIDER_COS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;

Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('001','INPATIENT HOSPITAL GENERAL');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('003','INPATIENT HOSP PSYCHIATRY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('005','CHILD WELFARE TARGETED CASE MGMNT');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('007','OUTPATIENT HOSPITAL SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('011','NURSING FACILITY LEVEL I ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('013','ICF-DD');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('014','INPATIENT HOSPITAL IMD');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('015','INPATIENT LONG TERM HOSPITAL ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('017','NURSING FACILITY LEVEL II ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('019','DAY TRAINING AND HABILITATION ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('020','HOME HEALTH SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('021','CONSUMER DIRECTED CARE ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('022','TRANSITIONAL SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('025','BIRTH-CENTER-FACILITY-FEE');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('028','RTC - DEVELOPMENTAL DISABILITIES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('029','RTC - MENTAL HEALTH ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('030','PHARMACY SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('032','MEDICAL SUPPLY/DME ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('033','MODIFICATIONS AND ADAPTATIONS ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('034','FAMILY COUNSELING & TRAINING ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('035','BEHAVIORAL PROGRAM SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('036','TRANSPORT, SPECIAL ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('037','TRANSPORT, AMBULANCE ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('038','PERSONAL CARE SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('039','CHILD & TEEN CHECKUP OUTREACH ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('040','CHILD AND TEEN CHECKUP ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('041','ANESTHESIA ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('042','PRIMARY CARE UTILIZATION REVIEW ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('043','PHYSICIAN SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('044','CASE MANAGEMENT OTHER ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('045','DENTAL ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('046','MENTAL HEALTH ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('047','HEALTHY MN CONTRIBUTION ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('050','COGNITIVE THERAPY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('051','PHYSICAL THERAPY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('052','NURSING IEP');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('053','SPEECH THERAPY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('054','OCCUPATIONAL THERAPY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('055','PODIATRY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('056','AMBULATORY SURGERY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('057','PRACTIC ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('058','AUDIOLOGY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('062','CHEMICAL-DEPENDENCY CONSOLIDATED TREATMENT FUND ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('063','EXTENDED CARE/HALFWAY HOUSE ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('071','CASE MANAGEMENT MENTAL HEALTH ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('072','HOSPICE ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('073','INPATIENT HOSP NEO-NATAL ICU ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('074','INPT HOSPITAL NON DRG ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('075','EYEGLASSES/CONTACT LENSES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('076','PROSTHETICS AND ORTHOTICS ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('077','HEARING AIDS ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('078','VISION CARE');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('079','RADIOLOGY, TECHNICAL COMPONENT ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('080','LABORATORY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('082','FEDERAL QUALIFIED HEALTH CNTR SVC ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('083','RURAL HEALTH CLINIC SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('084','SWING BED SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('086','OUTPATIENT HOSP EMERGENCY SERVICES');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('087','END-STAGE RENAL DIALYSIS ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('088','PUBLIC HEALTH NURSING ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('089','PRIVATE DUTY NURSING ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('090','NURSE MIDWIFE SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('091','NURSE PRACTITIONER SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('092','NUTRITION SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('093','CHORE');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('094','COMPANION SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('095','HOME DELIVERED MEALS ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('09','HOMEMAKER SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('097','CARE GIVER TRAINING ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('100','ACESS SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('101','ACCESS TO APPEAL ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('102','ADULT DAY CARE ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('103','FOSTER CARE ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('104','EMPLOY SUPPORTED EMPLOYMENT SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('105','SUPPORTED LIVING SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('106','STRUCTURED DAY PROGRAM SVC ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('107','RESPITE CARE ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('108','ASSISTED LIVING SERVICES ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('109','INDEPENDENT LIVING SKILLS ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('110','IN-HOME FAMILY SUPPORT ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('111','ABILITIES SCREENING ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('112','PASARR - DD ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('113','PASARR - MENTAL HEALTH ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('114','EXTENDED HOME HEALTH AIDE ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('115','LTC CONSULTATION-PAS ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('116','EXTENDED MEDICAL SUPPLIES/DME ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('117','EXTENDED MENTAL HEALTH ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('118','EXTENDED OCCUPATIONAL THERAPY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('119','EXTENDED PERSONAL CARE ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('120','EXTENDED PHARMACY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('121','EXTENDED PHYSICAL THERAPY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('122','EXTENDED PRIVATE DUTY NURSING ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('124','EXTENDED RESPIRATORY THERAPY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('125','EXTENDED SPEECH THERAPY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('126','EXTENDED TRANSPORTATION ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('127','PPHP - DPA');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('128','PPHP - GA');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('129','PPHP - MANDATORY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('130','PPHP - SOCIAL HMO ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('131','PPHP - SUPPLEMENTAL HMO ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('132','PPHP - VOLUNTARY AFDC ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('133','PPHP - MSHO ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('134','COST EFFECTIVE HEALTH INS ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('135','CO PAY - MEDICAL SUPPLY/DME ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('136','CO PAY - MENTAL HEALTH ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('137','CO PAY - PHARMACY ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('138','CO PAY - PHYSICIAN ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('139','COLLECTIONS, MISCELLANEOUS ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('140','FINANCIAL TRANSACTION ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('141','SPENDDOWN COLLECTIONS ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('142','BUY-IN PART A ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('143','BUY-IN PART B ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('144','PREMIUM PAYMENTS/COLLECTIONS ');
Insert into CMS.LU_COS (CODE,DESCRIPTION) values ('999','UNDETERMINED OR UNABLE TO DEFINE');