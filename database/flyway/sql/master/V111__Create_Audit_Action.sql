-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V111
-- Description : Create Audit Action Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

CREATE TABLE master.audit_action
(
    audit_action_code      VARCHAR(100) PRIMARY KEY,

    audit_action_name      VARCHAR(150) NOT NULL,

    description            VARCHAR(500),

    display_order          SMALLINT NOT NULL,

    is_active              BOOLEAN NOT NULL DEFAULT TRUE,

    created_at             TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by             VARCHAR(64) NOT NULL,

    updated_at             TIMESTAMPTZ,

    updated_by             VARCHAR(64)
);