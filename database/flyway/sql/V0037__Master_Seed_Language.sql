-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0037
-- Description : Seed Language Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

INSERT INTO master.language
(
    language_code,
    language_name,
    native_name,
    description,
    display_order,
    is_default,
    is_active,
    created_by
)
VALUES

    (
        'en-IN',
        'English',
        'English',
        'English (India)',
        1,
        TRUE,
        TRUE,
        'SYSTEM'
    ),

    (
        'hi-IN',
        'Hindi',
        'हिन्दी',
        'Hindi',
        2,
        FALSE,
        TRUE,
        'SYSTEM'
    ),

    (
        'te-IN',
        'Telugu',
        'తెలుగు',
        'Telugu',
        3,
        FALSE,
        TRUE,
        'SYSTEM'
    ),

    (
        'ta-IN',
        'Tamil',
        'தமிழ்',
        'Tamil',
        4,
        FALSE,
        TRUE,
        'SYSTEM'
    ),

    (
        'kn-IN',
        'Kannada',
        'ಕನ್ನಡ',
        'Kannada',
        5,
        FALSE,
        TRUE,
        'SYSTEM'
    ),

    (
        'ml-IN',
        'Malayalam',
        'മലയാളം',
        'Malayalam',
        6,
        FALSE,
        TRUE,
        'SYSTEM'
    ),

    (
        'mr-IN',
        'Marathi',
        'मराठी',
        'Marathi',
        7,
        FALSE,
        TRUE,
        'SYSTEM'
    ),

    (
        'bn-IN',
        'Bengali',
        'বাংলা',
        'Bengali',
        8,
        FALSE,
        TRUE,
        'SYSTEM'
    ),

    (
        'gu-IN',
        'Gujarati',
        'ગુજરાતી',
        'Gujarati',
        9,
        FALSE,
        TRUE,
        'SYSTEM'
    ),

    (
        'pa-IN',
        'Punjabi',
        'ਪੰਜਾਬੀ',
        'Punjabi',
        10,
        FALSE,
        TRUE,
        'SYSTEM'
    );