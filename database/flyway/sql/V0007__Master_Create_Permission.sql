-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0007
-- Description : Create Permission Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

CREATE TABLE master.permission
(
    permission_code         VARCHAR(100) PRIMARY KEY,

    permission_name         VARCHAR(150) NOT NULL,

    description             VARCHAR(500),

    display_order           SMALLINT NOT NULL,

    is_active               BOOLEAN NOT NULL DEFAULT TRUE,

    created_at              TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by              VARCHAR(64) NOT NULL,

    updated_at              TIMESTAMPTZ,

    updated_by              VARCHAR(64)
);