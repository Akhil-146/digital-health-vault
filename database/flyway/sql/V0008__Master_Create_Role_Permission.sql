-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0008
-- Description : Create Role Permission Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

CREATE TABLE master.role_permission
(
    role_code               VARCHAR(50) NOT NULL,

    permission_code         VARCHAR(100) NOT NULL,

    created_at              TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by              VARCHAR(64) NOT NULL,

    PRIMARY KEY
    (
        role_code,
        permission_code
    ),

    CONSTRAINT fk_role_permission_role
        FOREIGN KEY (role_code)
            REFERENCES master.role(role_code),

    CONSTRAINT fk_role_permission_permission
        FOREIGN KEY (permission_code)
            REFERENCES master.permission(permission_code)
);