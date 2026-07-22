-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Authentication
-- Version     : V0043
-- Description : Create OTP Transaction Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE auth.otp_transaction
(
    otp_transaction_uuid                UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    user_uuid                           UUID,

    identifier_type_code                VARCHAR(30) NOT NULL,

    identifier_value                    CITEXT NOT NULL,

    otp_purpose_code                    VARCHAR(30) NOT NULL,

    otp_channel_code                    VARCHAR(20) NOT NULL,

    otp_transaction_status_code         VARCHAR(30) NOT NULL,

    cognito_request_id                  VARCHAR(150),

    attempt_count                       SMALLINT NOT NULL DEFAULT 1,

    expires_at                          TIMESTAMPTZ NOT NULL,

    verified_at                         TIMESTAMPTZ,

    created_at                          TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by                          VARCHAR(64) NOT NULL,

    updated_at                          TIMESTAMPTZ,

    updated_by                          VARCHAR(64),

    CONSTRAINT chk_attempt_count
        CHECK (attempt_count >= 0),

    CONSTRAINT chk_otp_expiry
        CHECK (expires_at > created_at),

    CONSTRAINT fk_otp_user FOREIGN KEY (user_uuid)
        REFERENCES auth.users(user_uuid)
        ON DELETE CASCADE,

    CONSTRAINT fk_otp_identifier_type FOREIGN KEY (identifier_type_code)
        REFERENCES master.identifier_type(identifier_type_code),

    CONSTRAINT fk_otp_purpose FOREIGN KEY (otp_purpose_code)
        REFERENCES master.otp_purpose(otp_purpose_code),

    CONSTRAINT fk_otp_channel FOREIGN KEY (otp_channel_code)
        REFERENCES master.otp_channel(otp_channel_code),

    CONSTRAINT fk_otp_status FOREIGN KEY (otp_transaction_status_code)
        REFERENCES master.otp_transaction_status(otp_transaction_status_code)
);

CREATE INDEX idx_otp_user
    ON auth.otp_transaction(user_uuid);

CREATE INDEX idx_otp_identifier
    ON auth.otp_transaction(identifier_value);

CREATE INDEX idx_otp_status
    ON auth.otp_transaction(otp_transaction_status_code);

CREATE INDEX idx_otp_expiry
    ON auth.otp_transaction(expires_at);

CREATE INDEX idx_otp_identifier_status
    ON auth.otp_transaction (
         identifier_value,
         otp_transaction_status_code
    );