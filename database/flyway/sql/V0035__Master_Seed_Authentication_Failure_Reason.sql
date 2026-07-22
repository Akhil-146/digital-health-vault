-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0035
-- Description : Seed Authentication Failure Reasons
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

INSERT INTO master.authentication_failure_reason
(
    authentication_failure_reason_code,
    authentication_failure_reason_name,
    description,
    display_order,
    is_active,
    created_by
)
VALUES

    (
        'INVALID_CREDENTIALS',
        'Invalid Credentials',
        'Username or password is incorrect',
        1,
        TRUE,
        'SYSTEM'
    ),

    (
        'INVALID_PASSWORD',
        'Invalid Password',
        'Password does not match',
        2,
        TRUE,
        'SYSTEM'
    ),

    (
        'INVALID_OTP',
        'Invalid OTP',
        'OTP entered is invalid',
        3,
        TRUE,
        'SYSTEM'
    ),

    (
        'OTP_EXPIRED',
        'OTP Expired',
        'OTP validity expired',
        4,
        TRUE,
        'SYSTEM'
    ),

    (
        'USER_NOT_FOUND',
        'User Not Found',
        'No user exists',
        5,
        TRUE,
        'SYSTEM'
    ),

    (
        'ACCOUNT_LOCKED',
        'Account Locked',
        'Account is temporarily locked',
        6,
        TRUE,
        'SYSTEM'
    ),

    (
        'ACCOUNT_DISABLED',
        'Account Disabled',
        'Account is disabled',
        7,
        TRUE,
        'SYSTEM'
    ),

    (
        'ACCOUNT_DELETED',
        'Account Deleted',
        'Account has been deleted',
        8,
        TRUE,
        'SYSTEM'
    ),

    (
        'PHONE_NOT_VERIFIED',
        'Phone Not Verified',
        'Phone number verification pending',
        9,
        TRUE,
        'SYSTEM'
    ),

    (
        'EMAIL_NOT_VERIFIED',
        'Email Not Verified',
        'Email verification pending',
        10,
        TRUE,
        'SYSTEM'
    ),

    (
        'PASSWORD_EXPIRED',
        'Password Expired',
        'Password has expired',
        11,
        TRUE,
        'SYSTEM'
    ),

    (
        'USER_CODE_NOT_FOUND',
        'User Code Not Found',
        'User ID does not exist',
        12,
        TRUE,
        'SYSTEM'
    ),

    (
        'TOO_MANY_ATTEMPTS',
        'Too Many Attempts',
        'Maximum authentication attempts exceeded',
        13,
        TRUE,
        'SYSTEM'
    ),

    (
        'SESSION_EXPIRED',
        'Session Expired',
        'Authentication session expired',
        14,
        TRUE,
        'SYSTEM'
    ),

    (
        'MFA_REQUIRED',
        'MFA Required',
        'Additional authentication is required',
        15,
        TRUE,
        'SYSTEM'
    ),

    (
        'UNKNOWN_ERROR',
        'Unknown Error',
        'Unexpected authentication failure',
        16,
        TRUE,
        'SYSTEM'
    );