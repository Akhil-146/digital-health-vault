-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0010
-- Description : Create Login Method Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

CREATE TABLE master.login_method
(
    login_method_code       VARCHAR(50) PRIMARY KEY,

    login_method_name       VARCHAR(100) NOT NULL,

    description             VARCHAR(500),

    display_order           SMALLINT NOT NULL,

    is_active               BOOLEAN NOT NULL DEFAULT TRUE,

    created_at              TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by              VARCHAR(64) NOT NULL
);