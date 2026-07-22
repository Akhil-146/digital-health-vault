-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0034
-- Description : Seed OTP Transaction Status
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

INSERT INTO master.otp_transaction_status
(
    otp_transaction_status_code,
    otp_transaction_status_name,
    description,
    display_order,
    is_active,
    created_by
)
VALUES
    (
        'CREATED',
        'Created',
        'OTP request created',
        1,
        TRUE,
        'SYSTEM'
    ),
    (
        'SENT',
        'Sent',
        'OTP delivered successfully',
        2,
        TRUE,
        'SYSTEM'
    ),
    (
        'VERIFIED',
        'Verified',
        'OTP successfully verified',
        3,
        TRUE,
        'SYSTEM'
    ),
    (
        'FAILED',
        'Failed',
        'OTP verification failed',
        4,
        TRUE,
        'SYSTEM'
    ),
    (
        'EXPIRED',
        'Expired',
        'OTP expired',
        5,
        TRUE,
        'SYSTEM'
    ),
    (
        'CANCELLED',
        'Cancelled',
        'OTP cancelled',
        6,
        TRUE,
        'SYSTEM'
    );