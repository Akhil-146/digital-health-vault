-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V151
-- Description : Seed Data in Account Status Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

INSERT INTO master.account_status
(
    account_status_code,
    account_status_name,
    description,
    display_order,
    is_active,
    created_by
)
VALUES
    ('PENDING_PHONE_VERIFICATION','Pending Phone Verification','Phone number is yet to be verified.',1,TRUE,'SYSTEM'),

    ('PENDING_PROFILE_COMPLETION','Pending Profile Completion','Registration is not completed.',2,TRUE,'SYSTEM'),

    ('PENDING_EMAIL_VERIFICATION','Pending Email Verification','Email verification is pending.',3,TRUE,'SYSTEM'),

    ('ACTIVE','Active','User account is active.',4,TRUE,'SYSTEM'),

    ('LOCKED','Locked','Account is temporarily locked.',5,TRUE,'SYSTEM'),

    ('DISABLED','Disabled','Account is disabled by operations.',6,TRUE,'SYSTEM'),

    ('DELETED','Deleted','Account is soft deleted.',7,FALSE,'SYSTEM');