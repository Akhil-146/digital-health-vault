-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0038
-- Description : Seed Country Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

INSERT INTO master.country
(
    country_code,
    iso3_code,
    country_name,
    display_order,
    is_default,
    is_active,
    created_by
)
VALUES
    (
        'IN',
        'IND',
        'India',
        1,
        TRUE,
        TRUE,
        'SYSTEM'
    );