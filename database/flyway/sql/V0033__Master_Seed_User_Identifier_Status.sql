-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0033
-- Description : Seed User Identifier Status
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

INSERT INTO master.user_identifier_status
(
    user_identifier_status_code,
    user_identifier_status_name,
    description,
    display_order,
    is_active,
    created_by
)
VALUES

    (
        'PENDING_VERIFICATION',
        'Pending Verification',
        'Identifier added but not yet verified',
        1,
        TRUE,
        'FLYWAY'
    ),

    (
        'VERIFIED',
        'Verified',
        'Identifier successfully verified',
        2,
        TRUE,
        'FLYWAY'
    ),

    (
        'EXPIRED',
        'Expired',
        'Verification expired',
        3,
        TRUE,
        'FLYWAY'
    ),

    (
        'REVOKED',
        'Revoked',
        'Identifier revoked or replaced',
        4,
        TRUE,
        'FLYWAY'
    );