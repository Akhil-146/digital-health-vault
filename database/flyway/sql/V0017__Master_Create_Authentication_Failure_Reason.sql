-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0017
-- Description : Create Authentication Failure Reason Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE master.authentication_failure_reason
(
    authentication_failure_reason_code      VARCHAR(50) PRIMARY KEY,

    authentication_failure_reason_name      VARCHAR(150) NOT NULL,

    description                             VARCHAR(500),

    display_order                           SMALLINT NOT NULL,

    is_active                               BOOLEAN NOT NULL DEFAULT TRUE,

    created_at                              TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by                              VARCHAR(64) NOT NULL,

    updated_at                              TIMESTAMPTZ,

    updated_by                              VARCHAR(64)
);