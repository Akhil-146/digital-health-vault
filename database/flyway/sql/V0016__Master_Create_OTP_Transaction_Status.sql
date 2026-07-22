-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V0016
-- Description : Create OTP Transaction Status Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE master.otp_transaction_status
(
    otp_transaction_status_code      VARCHAR(30) PRIMARY KEY,

    otp_transaction_status_name      VARCHAR(100) NOT NULL,

    description                      VARCHAR(500),

    display_order                    SMALLINT NOT NULL,

    is_active                        BOOLEAN NOT NULL DEFAULT TRUE,

    created_at                       TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by                       VARCHAR(64) NOT NULL,

    updated_at                       TIMESTAMPTZ,

    updated_by                       VARCHAR(64)
);