-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0030
-- Description : Seed Data in OTP Channel Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

INSERT INTO master.otp_channel
(
    otp_channel_code,
    otp_channel_name,
    display_order,
    is_active,
    created_by
)
VALUES

    ('SMS',
     'SMS',
     1,
     TRUE,
     'FLYWAY'),

    ('EMAIL',
     'Email',
     2,
     TRUE,
     'FLYWAY');