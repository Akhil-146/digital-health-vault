-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V101
-- Description : Create Account Status Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

CREATE TABLE master.account_status
(
    account_status_code     VARCHAR(50) PRIMARY KEY,

    account_status_name     VARCHAR(100) NOT NULL,

    description             VARCHAR(500),

    display_order           SMALLINT NOT NULL,

    is_active               BOOLEAN NOT NULL DEFAULT TRUE,

    created_at              TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by              VARCHAR(64) NOT NULL,

    updated_at              TIMESTAMPTZ,

    updated_by              VARCHAR(64)
);