-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Authentication
-- Version     : V0045
-- Description : Create Login History Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE auth.login_history
(
    login_history_uuid                  UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    user_uuid                           UUID,

    login_method_code                   VARCHAR(50) NOT NULL,

    identifier_value                    CITEXT NOT NULL,

    is_success                          BOOLEAN NOT NULL,

    authentication_failure_reason_code  VARCHAR(50),

    ip_address                          INET,

    user_agent                          TEXT,

    device_type_code                    VARCHAR(30),

    browser_name                        VARCHAR(100),

    operating_system                    VARCHAR(100),

    login_at                            TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    logout_at                           TIMESTAMPTZ,

    CONSTRAINT fk_login_user FOREIGN KEY(user_uuid)
        REFERENCES auth.users(user_uuid)
        ON DELETE SET NULL,

    CONSTRAINT fk_login_method FOREIGN KEY(login_method_code)
        REFERENCES master.login_method(login_method_code),

    CONSTRAINT fk_login_failure_reason FOREIGN KEY(authentication_failure_reason_code)
        REFERENCES master.authentication_failure_reason(authentication_failure_reason_code),

    CONSTRAINT fk_login_device_type FOREIGN KEY (device_type_code)
        REFERENCES master.device_type(device_type_code)
);

CREATE INDEX idx_login_user
    ON auth.login_history(user_uuid);

CREATE INDEX idx_login_time
    ON auth.login_history(login_at DESC);

CREATE INDEX idx_login_success
    ON auth.login_history(is_success);

CREATE INDEX idx_login_failure_reason
    ON auth.login_history(authentication_failure_reason_code);

CREATE INDEX idx_login_identifier
    ON auth.login_history(identifier_value);