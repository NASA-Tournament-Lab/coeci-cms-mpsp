INSERT INTO LU_PROVIDER_TYPE(CODE, APPLICANT_TYP, DESCRIPTION, PRIVATE_OFFICE_FLG, EMPLOYED_CONTRACTED_FLG, ADDITONAL_PRACTICE_FLG, PAYMENT_REQUIRED_FLG, AGREEMENT_FLG, ADDENDUM_FLG) VALUES ('68', 1, 'Renal Dialysis Facility', 'N', 'N', 'N', 'N', 'N', 'N');

INSERT INTO LU_LICENSE_TYPE(CODE, DESCRIPTION) VALUES ('AY', 'RENAL DIALYSIS CENTER CERT');
INSERT INTO LU_LICENSE_TYPE(CODE, DESCRIPTION) VALUES ('AZ', 'Renal Dialysis Facility Approval letter from regional CMS office');
INSERT INTO PROVIDER_SETTING(PROVIDER_SETTING_ID, PROVIDER_TYP_CD, RELATED_ENTITY_TYP, RELATED_ENTITY_CD, REL_TYP)
    VALUES (6801, '68', 'LicenseType', 'AY', 'LO');
INSERT INTO PROVIDER_SETTING(PROVIDER_SETTING_ID, PROVIDER_TYP_CD, RELATED_ENTITY_TYP, RELATED_ENTITY_CD, REL_TYP)
    VALUES (6802, '68', 'LicenseType', 'AZ', 'LO');

INSERT INTO LU_PROVIDER_TYPE(CODE, APPLICANT_TYP, DESCRIPTION, PRIVATE_OFFICE_FLG, EMPLOYED_CONTRACTED_FLG, ADDITONAL_PRACTICE_FLG, PAYMENT_REQUIRED_FLG, AGREEMENT_FLG, ADDENDUM_FLG) VALUES ('69', 1, 'Intermediate Care Facilities For Persons With Developmental Disabilities', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO PROVIDER_SETTING(PROVIDER_SETTING_ID, PROVIDER_TYP_CD, RELATED_ENTITY_TYP, RELATED_ENTITY_CD, REL_TYP)
    VALUES (6901, '69', 'LicenseType', 'AO', 'LO');
    
INSERT INTO LU_PROVIDER_TYPE(CODE, APPLICANT_TYP, DESCRIPTION, PRIVATE_OFFICE_FLG, EMPLOYED_CONTRACTED_FLG, ADDITONAL_PRACTICE_FLG, PAYMENT_REQUIRED_FLG, AGREEMENT_FLG, ADDENDUM_FLG) VALUES ('70', 1, 'Physician Clinic', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO LU_LICENSE_TYPE(CODE, DESCRIPTION) VALUES ('B0', 'Hospital Based Clinic Designation:  approval letter from CMS');

INSERT INTO LU_PROVIDER_TYPE(CODE, APPLICANT_TYP, DESCRIPTION, PRIVATE_OFFICE_FLG, EMPLOYED_CONTRACTED_FLG, ADDITONAL_PRACTICE_FLG, PAYMENT_REQUIRED_FLG, AGREEMENT_FLG, ADDENDUM_FLG) VALUES ('71', 1, 'Dental Clinic', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO LU_PROVIDER_TYPE(CODE, APPLICANT_TYP, DESCRIPTION, PRIVATE_OFFICE_FLG, EMPLOYED_CONTRACTED_FLG, ADDITONAL_PRACTICE_FLG, PAYMENT_REQUIRED_FLG, AGREEMENT_FLG, ADDENDUM_FLG) VALUES ('72', 1, 'Dental Hygienist Clinic', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO LU_PROVIDER_TYPE(CODE, APPLICANT_TYP, DESCRIPTION, PRIVATE_OFFICE_FLG, EMPLOYED_CONTRACTED_FLG, ADDITONAL_PRACTICE_FLG, PAYMENT_REQUIRED_FLG, AGREEMENT_FLG, ADDENDUM_FLG) VALUES ('73', 1, 'Podiatry Clinic', 'N', 'N', 'N', 'N', 'N', 'N');
INSERT INTO LU_PROVIDER_TYPE(CODE, APPLICANT_TYP, DESCRIPTION, PRIVATE_OFFICE_FLG, EMPLOYED_CONTRACTED_FLG, ADDITONAL_PRACTICE_FLG, PAYMENT_REQUIRED_FLG, AGREEMENT_FLG, ADDENDUM_FLG) VALUES ('74', 1, 'Billing Entity For Mental Health', 'N', 'N', 'N', 'N', 'N', 'N');
