-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Authentication
-- Version     : V0044
-- Description : Create User Session Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE auth.user_session
(
    session_uuid                    UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    user_uuid                       UUID NOT NULL,

    cognito_session_id              VARCHAR(150),

    login_method_code               VARCHAR(50) NOT NULL,

    ip_address                      INET,

    user_agent                      TEXT,

    device_type_code                VARCHAR(30),

    browser_name                    VARCHAR(100),

    operating_system                VARCHAR(100),

    login_at                        TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    last_activity_at                TIMESTAMPTZ,

    expires_at                      TIMESTAMPTZ,

    logout_at                       TIMESTAMPTZ,

    is_revoked                      BOOLEAN NOT NULL DEFAULT FALSE,

    created_at                      TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by                      VARCHAR(64) NOT NULL,

    CONSTRAINT fk_session_user FOREIGN KEY(user_uuid)
        REFERENCES auth.users(user_uuid)
        ON DELETE CASCADE,

    CONSTRAINT fk_session_login_method FOREIGN KEY(login_method_code)
        REFERENCES master.login_method(login_method_code),

    CONSTRAINT fk_session_device_type FOREIGN KEY (device_type_code)
        REFERENCES master.device_type(device_type_code),

    CONSTRAINT chk_session_expiry
        CHECK (expires_at > created_at)
);

CREATE INDEX idx_session_user
    ON auth.user_session(user_uuid);

CREATE INDEX idx_session_active
    ON auth.user_session(is_revoked);

CREATE INDEX idx_session_expiry
    ON auth.user_session(expires_at);