-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V154
-- Description : Seed Data in Role Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

INSERT INTO master.role
(
    role_code,
    role_name,
    description,
    display_order,
    is_system_role,
    is_active,
    created_by
)
VALUES
    ('PATIENT','Patient','Digital Health Vault user',1,TRUE,TRUE,'SYSTEM'),

    ('DOCTOR','Doctor','Registered doctor',2,TRUE,TRUE,'SYSTEM'),

    ('HOSPITAL_ADMIN','Hospital Administrator','Hospital administrator',3,TRUE,TRUE,'SYSTEM'),

    ('LAB_ADMIN','Laboratory Administrator','Laboratory administrator',4,TRUE,TRUE,'SYSTEM'),

    ('SUPPORT','Support Executive','Customer support',5,TRUE,TRUE,'SYSTEM'),

    ('TESTER','QA Tester','Testing team',6,TRUE,TRUE,'SYSTEM'),

    ('DEVELOPER','Developer','Application developer',7,TRUE,TRUE,'SYSTEM'),

    ('SYSTEM_ADMIN','System Administrator','Platform administrator',8,TRUE,TRUE,'SYSTEM');