-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0005
-- Description : Create Gender Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

CREATE TABLE master.gender
(
    gender_code             VARCHAR(30) PRIMARY KEY,

    gender_name             VARCHAR(100) NOT NULL,

    description             VARCHAR(500),

    display_order           SMALLINT NOT NULL,

    is_active               BOOLEAN NOT NULL DEFAULT TRUE,

    created_at              TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by              VARCHAR(64) NOT NULL,

    updated_at              TIMESTAMPTZ,

    updated_by              VARCHAR(64)
);