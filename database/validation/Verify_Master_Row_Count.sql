SELECT
    'account_status' table_name,
    COUNT(*)
FROM master.account_status

UNION ALL

SELECT
    'user_category',
    COUNT(*)
FROM master.user_category

UNION ALL

SELECT
    'role',
    COUNT(*)
FROM master.role

UNION ALL

SELECT
    'permission',
    COUNT(*)
FROM master.permission

UNION ALL

SELECT
    'role_permission',
    COUNT(*)
FROM master.role_permission

UNION ALL

SELECT
    'login_method',
    COUNT(*)
FROM master.login_method

UNION ALL

SELECT
    'otp_channel',
    COUNT(*)
FROM master.otp_channel

UNION ALL

SELECT
    'otp_purpose',
    COUNT(*)
FROM master.otp_purpose

UNION ALL

SELECT
    'gender',
    COUNT(*)
FROM master.gender

UNION ALL

SELECT
    'blood_group',
    COUNT(*)
FROM master.blood_group

UNION ALL

SELECT
    'audit_action',
    COUNT(*)
FROM master.audit_action;