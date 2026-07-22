-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0009
-- Description : Create Blood Group Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

CREATE TABLE master.blood_group
(
    blood_group_code        VARCHAR(10) PRIMARY KEY,

    blood_group_name        VARCHAR(100) NOT NULL,

    description             VARCHAR(500),

    display_order           SMALLINT NOT NULL,

    is_active               BOOLEAN NOT NULL DEFAULT TRUE,

    created_at              TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by              VARCHAR(64) NOT NULL,

    updated_at              TIMESTAMPTZ,

    updated_by              VARCHAR(64)
);