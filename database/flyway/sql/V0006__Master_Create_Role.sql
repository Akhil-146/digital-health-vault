-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V104
-- Description : Create Role Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

CREATE TABLE master.role
(
    role_code               VARCHAR(50) PRIMARY KEY,

    role_name               VARCHAR(100) NOT NULL,

    parent_role_code        VARCHAR(50),

    description             VARCHAR(500),

    display_order           SMALLINT NOT NULL,

    is_system_role          BOOLEAN NOT NULL DEFAULT TRUE,

    is_active               BOOLEAN NOT NULL DEFAULT TRUE,

    created_at              TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by              VARCHAR(64) NOT NULL,

    updated_at              TIMESTAMPTZ,

    updated_by              VARCHAR(64),

    CONSTRAINT fk_role_parent
        FOREIGN KEY(parent_role_code)
            REFERENCES master.role(role_code)
);