-- ==========================================================
-- Project     : Digital Health Vault
-- Module      : Master
-- Version     : V157
-- Description : Seed Data in Blood Group Table
-- ==========================================================

INSERT INTO master.blood_group
(
    blood_group_code,
    blood_group_name,
    display_order,
    is_active,
    created_by
)
VALUES
    ('A+','A Positive',1,TRUE,'FLYWAY'),
    ('A-','A Negative',2,TRUE,'FLYWAY'),
    ('B+','B Positive',3,TRUE,'FLYWAY'),
    ('B-','B Negative',4,TRUE,'FLYWAY'),
    ('AB+','AB Positive',5,TRUE,'FLYWAY'),
    ('AB-','AB Negative',6,TRUE,'FLYWAY'),
    ('O+','O Positive',7,TRUE,'FLYWAY'),
    ('O-','O Negative',8,TRUE,'FLYWAY');