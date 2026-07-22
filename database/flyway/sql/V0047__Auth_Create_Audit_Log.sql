-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Authentication
-- Version     : V0047
-- Description : Create Authentication Audit Log Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE auth.audit_log
(
    audit_uuid                      UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    user_uuid                       UUID,

    audit_action_code               VARCHAR(100) NOT NULL,

    performed_by                    VARCHAR(64) NOT NULL,

    performed_at                    TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    ip_address                      INET,

    user_agent                      TEXT,

    details                         JSONB,

    CONSTRAINT fk_audit_user FOREIGN KEY(user_uuid)
        REFERENCES auth.users(user_uuid)
        ON DELETE SET NULL,

    CONSTRAINT fk_audit_action FOREIGN KEY(audit_action_code)
        REFERENCES master.audit_action(audit_action_code)
);

CREATE INDEX idx_audit_user
    ON auth.audit_log(user_uuid);

CREATE INDEX idx_audit_action
    ON auth.audit_log(audit_action_code);

CREATE INDEX idx_audit_time
    ON auth.audit_log(performed_at DESC);

CREATE INDEX idx_audit_details
    ON auth.audit_log
    USING GIN(details);