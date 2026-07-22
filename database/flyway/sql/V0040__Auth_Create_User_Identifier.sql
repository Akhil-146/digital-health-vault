-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Authentication
-- Version     : V0040
-- Description : Create User Identifier Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE auth.user_identifier
(
    identifier_uuid                 UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    user_uuid                       UUID NOT NULL,

    identifier_type_code            VARCHAR(30) NOT NULL,

    identifier_value                CITEXT NOT NULL,

    user_identifier_status_code     VARCHAR(30) NOT NULL,

    is_primary                      BOOLEAN NOT NULL DEFAULT FALSE,

    verified_at                     TIMESTAMPTZ,

    created_at                      TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by                      VARCHAR(64) NOT NULL,

    updated_at                      TIMESTAMPTZ,

    updated_by                      VARCHAR(64),

    CONSTRAINT uk_identifier
        UNIQUE (identifier_type_code, identifier_value),

    CONSTRAINT chk_identifier_value
        CHECK (length(trim(identifier_value)) > 0),

    CONSTRAINT fk_identifier_user
        FOREIGN KEY (user_uuid)
            REFERENCES auth.users(user_uuid)
            ON DELETE CASCADE,

    CONSTRAINT fk_identifier_type
        FOREIGN KEY (identifier_type_code)
            REFERENCES master.identifier_type(identifier_type_code),

    CONSTRAINT fk_identifier_status
        FOREIGN KEY (user_identifier_status_code)
            REFERENCES master.user_identifier_status(user_identifier_status_code)
);

CREATE INDEX idx_identifier_user
    ON auth.user_identifier(user_uuid);

CREATE INDEX idx_identifier_value
    ON auth.user_identifier(identifier_value);

CREATE INDEX idx_identifier_status
    ON auth.user_identifier(user_identifier_status_code);

CREATE INDEX idx_identifier_verified
    ON auth.user_identifier(verified_at);