-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V110
-- Description : Create OTP Channel Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-20
-- ==========================================================

CREATE TABLE master.otp_channel
(
    otp_channel_code        VARCHAR(20) PRIMARY KEY,

    otp_channel_name        VARCHAR(50) NOT NULL,

    display_order           SMALLINT NOT NULL,

    is_active               BOOLEAN NOT NULL DEFAULT TRUE,

    created_at              TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by              VARCHAR(64) NOT NULL
);