-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Authentication
-- Version     : V204
-- Description : Create User Profile Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE auth.user_profile
(
    user_uuid UUID PRIMARY KEY,

    first_name VARCHAR(100) NOT NULL,

    middle_name VARCHAR(100),

    last_name VARCHAR(100),

    gender_code VARCHAR(30),

    blood_group_code VARCHAR(10),

    date_of_birth DATE,

    profile_photo_url VARCHAR(500),

    address_line_1 VARCHAR(255),

    address_line_2 VARCHAR(255),

    city VARCHAR(100),

    state VARCHAR(100),

    country VARCHAR(100),

    postal_code VARCHAR(15),

    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by VARCHAR(64) NOT NULL,

    updated_at TIMESTAMPTZ,

    updated_by VARCHAR(64),

    CONSTRAINT fk_profile_user FOREIGN KEY(user_uuid)
            REFERENCES auth.user(user_uuid),

    CONSTRAINT fk_profile_gender FOREIGN KEY(gender_code)
            REFERENCES master.gender(gender_code),

    CONSTRAINT fk_profile_blood_group FOREIGN KEY(blood_group_code)
            REFERENCES master.blood_group(blood_group_code)
);