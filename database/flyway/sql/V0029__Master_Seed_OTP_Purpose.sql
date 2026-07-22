-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0029
-- Description : Seed Data in OTP Purpose Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

INSERT INTO master.otp_purpose
(
    otp_purpose_code,
    otp_purpose_name,
    description,
    display_order,
    is_active,
    created_by
)
VALUES

    ('LOGIN',
     'Login',
     'OTP used during login',
     1,
     TRUE,
     'FLYWAY'),

    ('PHONE_VERIFICATION',
     'Phone Verification',
     'OTP sent to verify phone number',
     2,
     TRUE,
     'FLYWAY'),

    ('EMAIL_VERIFICATION',
     'Email Verification',
     'OTP sent to verify email',
     3,
     TRUE,
     'FLYWAY'),

    ('PASSWORD_RESET',
     'Password Reset',
     'OTP sent for password reset',
     4,
     TRUE,
     'FLYWAY');