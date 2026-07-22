-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0019
-- Description : Create Language Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE master.language
(
    language_code          VARCHAR(10) PRIMARY KEY,

    language_name          VARCHAR(100) NOT NULL,

    native_name            VARCHAR(100) NOT NULL,

    description            VARCHAR(500),

    display_order          SMALLINT NOT NULL,

    is_default             BOOLEAN NOT NULL DEFAULT FALSE,

    is_active              BOOLEAN NOT NULL DEFAULT TRUE,

    created_at             TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by             VARCHAR(64) NOT NULL,

    updated_at             TIMESTAMPTZ,

    updated_by             VARCHAR(64)
);