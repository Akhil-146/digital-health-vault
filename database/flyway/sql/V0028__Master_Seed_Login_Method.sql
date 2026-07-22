-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0028
-- Description : Seed Data in Login Method Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

INSERT INTO master.login_method
(
    login_method_code,
    login_method_name,
    description,
    display_order,
    is_active,
    created_by
)
VALUES

    ('PHONE_OTP',
     'Phone OTP',
     'Login using phone number and OTP',
     1,
     TRUE,
     'FLYWAY'),

    ('USER_ID_OTP',
     'User ID OTP',
     'Login using User ID and OTP',
     2,
     TRUE,
     'FLYWAY'),

    ('EMAIL_OTP',
     'Email OTP',
     'Login using email and OTP',
     3,
     TRUE,
     'FLYWAY'),

    ('PHONE_PASSWORD',
     'Phone Password',
     'Login using phone number and password',
     4,
     TRUE,
     'FLYWAY'),

    ('USER_ID_PASSWORD',
     'User ID Password',
     'Login using User ID and password',
     5,
     TRUE,
     'FLYWAY'),

    ('EMAIL_PASSWORD',
     'Email Password',
     'Login using email and password',
     6,
     TRUE,
     'FLYWAY');