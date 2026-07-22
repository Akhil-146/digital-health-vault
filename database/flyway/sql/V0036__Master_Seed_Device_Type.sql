-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0036
-- Description : Seed Device Type
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

INSERT INTO master.device_type
(
    device_type_code,
    device_type_name,
    description,
    display_order,
    is_active,
    created_by
)
VALUES

    (
        'WEB',
        'Web Browser',
        'Browser based application',
        1,
        TRUE,
        'SYSTEM'
    ),

    (
        'ANDROID',
        'Android App',
        'Native Android application',
        2,
        TRUE,
        'SYSTEM'
    ),

    (
        'IOS',
        'iOS App',
        'Native iOS application',
        3,
        TRUE,
        'SYSTEM'
    ),

    (
        'API',
        'API Client',
        'Third-party or partner API integration',
        4,
        TRUE,
        'SYSTEM'
    ),

    (
        'SYSTEM',
        'System',
        'Internal background processes',
        5,
        TRUE,
        'SYSTEM'
    ),

    (
        'UNKNOWN',
        'Unknown',
        'Unable to determine client platform',
        6,
        TRUE,
        'SYSTEM'
    );