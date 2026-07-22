-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0022
-- Description : Seed Data into User Category Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

INSERT INTO master.user_category
(
    user_category_code,
    user_category_name,
    description,
    display_order,
    is_active,
    created_by
)
VALUES
    (
        'BUSINESS',
        'Business User',
        'Users who access Digital Health Vault services.',
        1,
        TRUE,
        'SYSTEM'
    ),
    (
        'OPERATIONAL',
        'Operational User',
        'Internal users responsible for support, testing and administration.',
        2,
        TRUE,
        'SYSTEM'
    );