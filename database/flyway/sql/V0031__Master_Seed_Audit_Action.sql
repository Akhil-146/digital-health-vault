-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0031
-- Description : Seed Data in Audit Action Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

INSERT INTO master.audit_action
(
    audit_action_code,
    audit_action_name,
    description,
    display_order,
    is_active,
    created_by
)
VALUES

    ('USER_REGISTER',
     'User Registration',
     'New user registration',
     1,
     TRUE,
     'FLYWAY'),

    ('LOGIN',
     'User Login',
     'Successful login',
     2,
     TRUE,
     'FLYWAY'),

    ('LOGIN_FAILED',
     'Login Failed',
     'Failed login attempt',
     3,
     TRUE,
     'FLYWAY'),

    ('LOGOUT',
     'Logout',
     'User logout',
     4,
     TRUE,
     'FLYWAY'),

    ('REFRESH_TOKEN',
     'Refresh Token',
     'Access token refreshed',
     5,
     TRUE,
     'FLYWAY'),

    ('CHANGE_PASSWORD',
     'Change Password',
     'Password changed',
     6,
     TRUE,
     'FLYWAY'),

    ('RESET_PASSWORD',
     'Reset Password',
     'Password reset',
     7,
     TRUE,
     'FLYWAY'),

    ('VERIFY_PHONE',
     'Verify Phone',
     'Phone number verified',
     8,
     TRUE,
     'FLYWAY'),

    ('VERIFY_EMAIL',
     'Verify Email',
     'Email verified',
     9,
     TRUE,
     'FLYWAY'),

    ('UPDATE_PROFILE',
     'Update Profile',
     'Profile updated',
     10,
     TRUE,
     'FLYWAY'),

    ('LOCK_ACCOUNT',
     'Lock Account',
     'Account locked',
     11,
     TRUE,
     'FLYWAY'),

    ('UNLOCK_ACCOUNT',
     'Unlock Account',
     'Account unlocked',
     12,
     TRUE,
     'FLYWAY'),

    ('DELETE_ACCOUNT',
     'Delete Account',
     'Account soft deleted',
     13,
     TRUE,
     'FLYWAY'),

    ('SEND_OTP',
     'Send OTP',
     'OTP sent to user',
     14,
     TRUE,
     'FLYWAY'),

    ('VERIFY_OTP',
     'Verify OTP',
     'OTP verified successfully',
     15,
     TRUE,
     'FLYWAY'),

    ('RESEND_OTP',
     'Resend OTP',
     'OTP resent',
     16,
     TRUE,
     'FLYWAY'),

    ('TOKEN_REFRESH',
     'Refresh Access Token',
     'OAuth token refreshed',
     17,
     TRUE,
     'FLYWAY'),

    ('ACCOUNT_LOCKED',
     'Account Locked',
     'User account locked after failed attempts',
     18,
     TRUE,
     'FLYWAY'),

    ('ACCOUNT_UNLOCKED',
     'Account Unlocked',
     'User account unlocked',
     19,
     TRUE,
     'FLYWAY');