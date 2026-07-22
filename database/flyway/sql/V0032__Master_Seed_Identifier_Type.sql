-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0032
-- Description : Seed Identifier Type
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

INSERT INTO master.identifier_type
(
    identifier_type_code,
    identifier_type_name,
    description,
    display_order,
    is_active,
    created_by
)
VALUES
    (
        'PHONE',
        'Phone Number',
        'Mobile phone number used for authentication',
        1,
        TRUE,
        'SYSTEM'
    ),

    (
        'EMAIL',
        'Email Address',
        'Email address used for authentication',
        2,
        TRUE,
        'SYSTEM'
    ),

    (
        'USER_ID',
        'Digital Health Vault User ID',
        'System generated unique user identifier',
        3,
        TRUE,
        'SYSTEM'
    );