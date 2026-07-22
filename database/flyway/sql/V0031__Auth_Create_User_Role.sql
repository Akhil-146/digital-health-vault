-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Authentication
-- Version     : V203
-- Description : Create User Role Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE auth.user_role
(
    user_uuid UUID NOT NULL,

    role_code VARCHAR(50) NOT NULL,

    assigned_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    assigned_by VARCHAR(64) NOT NULL,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    PRIMARY KEY (
        user_uuid,
        role_code
    ),

    CONSTRAINT fk_user_role_user FOREIGN KEY(user_uuid)
            REFERENCES auth.user(user_uuid),

    CONSTRAINT fk_user_role_role FOREIGN KEY(role_code)
            REFERENCES master.role(role_code)
);