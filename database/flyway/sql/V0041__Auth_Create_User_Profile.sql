-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Authentication
-- Version     : V0041
-- Description : Create User Profile Table
-- Author      : Akhil Tandrotu
-- Created On  : 2026-07-22
-- ==========================================================

CREATE TABLE auth.user_profile
(
    user_uuid                   UUID PRIMARY KEY,

    first_name                  VARCHAR(100) NOT NULL,

    middle_name                 VARCHAR(100),

    last_name                   VARCHAR(100),

    display_name                VARCHAR(150),

    gender_code                 VARCHAR(30),

    blood_group_code            VARCHAR(10),

    date_of_birth               DATE,

    profile_photo_url           VARCHAR(500),

    preferred_language_code     VARCHAR(10) DEFAULT 'en-IN',

    time_zone                   VARCHAR(50) DEFAULT 'Asia/Kolkata',

    address_line_1              VARCHAR(255),

    address_line_2              VARCHAR(255),

    city                        VARCHAR(100),

    state                       VARCHAR(100),

    country_code                CHAR(2) NOT NULL DEFAULT 'IN',

    postal_code                 VARCHAR(15),

    created_at                  TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    created_by                  VARCHAR(64) NOT NULL,

    updated_at                  TIMESTAMPTZ,

    updated_by                  VARCHAR(64),

    CONSTRAINT fk_profile_user FOREIGN KEY (user_uuid)
        REFERENCES auth.users(user_uuid)
        ON DELETE CASCADE,

    CONSTRAINT fk_profile_gender FOREIGN KEY (gender_code)
        REFERENCES master.gender(gender_code),

    CONSTRAINT fk_profile_blood_group FOREIGN KEY (blood_group_code)
        REFERENCES master.blood_group(blood_group_code),

    CONSTRAINT fk_profile_language FOREIGN KEY (preferred_language_code)
        REFERENCES master.language(language_code),

    CONSTRAINT fk_profile_country FOREIGN KEY (country_code)
        REFERENCES master.country(country_code),

    CONSTRAINT chk_date_of_birth
        CHECK (
            date_of_birth IS NULL OR date_of_birth <= CURRENT_DATE
        ),

    CONSTRAINT chk_postal_code
        CHECK (
            postal_code IS NULL OR length(trim(postal_code)) BETWEEN 3 AND 15
        )
);

CREATE INDEX idx_profile_gender
    ON auth.user_profile(gender_code);

CREATE INDEX idx_profile_blood_group
    ON auth.user_profile(blood_group_code);

CREATE INDEX idx_profile_city
    ON auth.user_profile(city);

CREATE INDEX idx_profile_state
    ON auth.user_profile(state);

CREATE INDEX idx_profile_country
    ON auth.user_profile(country_code);
