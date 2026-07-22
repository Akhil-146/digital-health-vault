-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0020
-- Description : Create Country Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE master.country
(
    country_code          CHAR(2) PRIMARY KEY,

    iso3_code             CHAR(3) UNIQUE NOT NULL,

    country_name          VARCHAR(100) NOT NULL,

    display_order         SMALLINT NOT NULL,

    is_default            BOOLEAN NOT NULL DEFAULT FALSE,

    is_active             BOOLEAN NOT NULL DEFAULT TRUE,

    created_at            TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by            VARCHAR(64) NOT NULL,

    updated_at            TIMESTAMPTZ,

    updated_by            VARCHAR(64)
);