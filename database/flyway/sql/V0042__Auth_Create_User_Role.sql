-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Authentication
-- Version     : V0042
-- Description : Create User Role Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE auth.user_role
(
    user_uuid               UUID NOT NULL,

    role_code               VARCHAR(50) NOT NULL,

    assigned_at             TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    assigned_by             VARCHAR(64) NOT NULL,

    is_active               BOOLEAN NOT NULL DEFAULT TRUE,

    PRIMARY KEY (
        user_uuid,
        role_code
    ),

    CONSTRAINT fk_user_role_user FOREIGN KEY (user_uuid)
        REFERENCES auth.users(user_uuid)
        ON DELETE CASCADE,

    CONSTRAINT fk_user_role_role FOREIGN KEY (role_code)
        REFERENCES master.role(role_code)
);

CREATE INDEX idx_user_role_role
    ON auth.user_role(role_code);

CREATE INDEX idx_user_role_active
    ON auth.user_role(is_active);