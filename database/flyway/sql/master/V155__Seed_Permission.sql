-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V155
-- Description : Seed Data in Permission Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

INSERT INTO master.permission
(
    permission_code,
    permission_name,
    description,
    display_order,
    is_active,
    created_by
)
VALUES

    ('AUTH:LOGIN','Login','Login to application',1,TRUE,'SYSTEM'),

    ('AUTH:REGISTER','Register','Register account',2,TRUE,'SYSTEM'),

    ('AUTH:LOGOUT','Logout','Logout from application',3,TRUE,'SYSTEM'),

    ('PROFILE:VIEW','View Profile','View own profile',4,TRUE,'SYSTEM'),

    ('PROFILE:UPDATE','Update Profile','Update profile',5,TRUE,'SYSTEM'),

    ('MEDICAL_RECORD:VIEW','View Medical Record','View medical record',6,TRUE,'SYSTEM'),

    ('MEDICAL_RECORD:CREATE','Create Medical Record','Create medical record',7,TRUE,'SYSTEM'),

    ('MEDICAL_RECORD:UPDATE','Update Medical Record','Update medical record',8,TRUE,'SYSTEM'),

    ('MEDICAL_RECORD:DELETE','Delete Medical Record','Delete medical record',9,TRUE,'SYSTEM'),

    ('USER:LOCK','Lock User','Lock user account',10,TRUE,'SYSTEM'),

    ('USER:UNLOCK','Unlock User','Unlock user account',11,TRUE,'SYSTEM'),

    ('AUDIT:VIEW','View Audit','View audit logs',12,TRUE,'SYSTEM');