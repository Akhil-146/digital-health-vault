-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V153
-- Description : Seed Data in Gender Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

INSERT INTO master.gender
(
    gender_code,
    gender_name,
    display_order,
    is_active,
    created_by
)
VALUES
    (
        'MALE',
        'Male',
        1,
        TRUE,
        'FLYWAY'
    ),
    (
        'FEMALE',
        'Female',
        2,
        TRUE,
        'FLYWAY'
    ),
    (
        'OTHER',
        'Other',
        3,
        TRUE,
        'FLYWAY'
    ),
    (
        'PREFER_NOT_TO_SAY',
        'Prefer Not To Say',
        4,
        TRUE,
        'FLYWAY'
    );