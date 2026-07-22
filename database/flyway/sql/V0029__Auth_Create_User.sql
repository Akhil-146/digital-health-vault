-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Authentication
-- Version     : V201
-- Description : Create User Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE auth.user
(
    user_uuid UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    cognito_sub UUID UNIQUE,

    account_status_code VARCHAR(30) NOT NULL,

    user_category_code VARCHAR(30) NOT NULL,

    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by VARCHAR(64) NOT NULL,

    updated_at TIMESTAMPTZ,

    updated_by VARCHAR(64),

    CONSTRAINT fk_user_account_status FOREIGN KEY(account_status_code)
            REFERENCES master.account_status(account_status_code),

    CONSTRAINT fk_user_category FOREIGN KEY(user_category_code)
            REFERENCES master.user_category(user_category_code)
);