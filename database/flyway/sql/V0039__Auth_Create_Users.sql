-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Authentication
-- Version     : V0039
-- Description : Create Users Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE auth.users
(
    user_uuid                   UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    user_code                   CITEXT NOT NULL UNIQUE,

    cognito_sub                 VARCHAR(100) UNIQUE,

    account_status_code         VARCHAR(30) NOT NULL,

    user_category_code          VARCHAR(30) NOT NULL,

    registration_completed      BOOLEAN NOT NULL DEFAULT FALSE,

    phone_verified              BOOLEAN NOT NULL DEFAULT FALSE,

    email_verified              BOOLEAN NOT NULL DEFAULT FALSE,

    failed_login_attempts       SMALLINT NOT NULL DEFAULT 0,

    last_login_at               TIMESTAMPTZ,

    last_password_changed_at    TIMESTAMPTZ,

    created_at                  TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by                  VARCHAR(64) NOT NULL,

    updated_at                  TIMESTAMPTZ,

    updated_by                  VARCHAR(64),

    CONSTRAINT chk_users_user_code
        CHECK (
            user_code ~ '^[ABCDEFGHJKMNPQRSTUVWXYZ23456789]{8}$'
        ),

    CONSTRAINT chk_user_code_length
        CHECK (char_length(user_code) = 8),

    CONSTRAINT chk_failed_login_attempts
        CHECK (failed_login_attempts >= 0),

    CONSTRAINT fk_users_account_status
        FOREIGN KEY (account_status_code)
        REFERENCES master.account_status(account_status_code),

    CONSTRAINT fk_users_category
        FOREIGN KEY (user_category_code)
        REFERENCES master.user_category(user_category_code)
);

CREATE INDEX idx_users_user_code
    ON auth.users(user_code);

CREATE INDEX idx_users_account_status
    ON auth.users(account_status_code);

CREATE INDEX idx_users_category
    ON auth.users(user_category_code);

CREATE INDEX idx_users_cognito_sub
    ON auth.users(cognito_sub);