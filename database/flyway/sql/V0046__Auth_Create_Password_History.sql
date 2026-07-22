-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Authentication
-- Version     : V0046
-- Description : Create Password History Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE auth.password_history
(
    password_history_uuid           UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    user_uuid                       UUID NOT NULL,

    password_hash                   TEXT NOT NULL,

    password_algorithm              VARCHAR(50) NOT NULL,

    changed_at                      TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    changed_by                      VARCHAR(64) NOT NULL,

    CONSTRAINT fk_password_user FOREIGN KEY(user_uuid)
        REFERENCES auth.users(user_uuid)
        ON DELETE CASCADE,

    CONSTRAINT chk_password_hash
        CHECK (length(trim(password_hash)) > 0)
);

CREATE INDEX idx_password_user
    ON auth.password_history(user_uuid);

CREATE INDEX idx_password_changed
    ON auth.password_history(changed_at DESC);