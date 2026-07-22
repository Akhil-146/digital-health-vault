# Digital Health Vault Database

## Overview

This directory contains all PostgreSQL database migrations for the **Digital Health Vault (DHV)** project.

Database schema changes are managed using **Flyway** following an immutable migration strategy.

The goal is to ensure that every environment (Development, QA, UAT, Production) always has an identical database structure and migration history.

---

# Folder Structure

```
database
│
├── flyway
│   ├── conf
│   │     flyway.conf
│   │
│   ├── sql
│   │     V0001__Shared_Create_Extensions.sql
│   │     V0002__Shared_Create_Schemas.sql
│   │     V0003-V0020__Master_Create_*.sql (Master table definitions)
│   │     V0021-V0038__Master_Seed_*.sql (Master seed data)
│   │     V0039-V0047__Auth_Create_*.sql (Authentication schema)
│   │
│   └── README.md
│
├── validation
│     Verify_*.sql (Database validation scripts)
│
└── README.md
```

---

# Current Migration Summary

**Total Migrations: 47**

| Category | Version Range | Count | Purpose |
|----------|--------------|-------|---------|
| Shared | V0001-V0002 | 2 | PostgreSQL extensions and schema creation |
| Master (Create) | V0003-V0020 | 18 | Master/Reference table definitions |
| Master (Seed) | V0021-V0038 | 18 | Seed data for master tables |
| Auth (Create) | V0039-V0047 | 9 | Authentication and authorization tables |

---

# Detailed Migration List

## Shared Migrations (V0001-V0002)

| Version | Description |
|---------|-------------|
| V0001 | Create PostgreSQL Extensions (pgcrypto, citext) |
| V0002 | Create Schemas (flyway_history, shared, master, auth) |

## Master Schema - Table Creation (V0003-V0020)

| Version | Description |
|---------|-------------|
| V0003 | Create Account Status table |
| V0004 | Create User Category table |
| V0005 | Create Gender table |
| V0006 | Create Role table |
| V0007 | Create Permission table |
| V0008 | Create Role Permission table (junction) |
| V0009 | Create Blood Group table |
| V0010 | Create Login Method table |
| V0011 | Create OTP Purpose table |
| V0012 | Create OTP Channel table |
| V0013 | Create Audit Action table |
| V0014 | Create Identifier Type table |
| V0015 | Create User Identifier Status table |
| V0016 | Create OTP Transaction Status table |
| V0017 | Create Authentication Failure Reason table |
| V0018 | Create Device Type table |
| V0019 | Create Language table |
| V0020 | Create Country table |

## Master Schema - Seed Data (V0021-V0038)

| Version | Description |
|---------|-------------|
| V0021 | Seed Account Status reference data |
| V0022 | Seed User Category reference data |
| V0023 | Seed Gender reference data |
| V0024 | Seed Role reference data |
| V0025 | Seed Permission reference data |
| V0026 | Seed Role Permission mappings |
| V0027 | Seed Blood Group reference data |
| V0028 | Seed Login Method reference data |
| V0029 | Seed OTP Purpose reference data |
| V0030 | Seed OTP Channel reference data |
| V0031 | Seed Audit Action reference data |
| V0032 | Seed Identifier Type reference data |
| V0033 | Seed User Identifier Status reference data |
| V0034 | Seed OTP Transaction Status reference data |
| V0035 | Seed Authentication Failure Reason reference data |
| V0036 | Seed Device Type reference data |
| V0037 | Seed Language reference data |
| V0038 | Seed Country reference data |

## Authentication Schema - Table Creation (V0039-V0047)

| Version | Description |
|---------|-------------|
| V0039 | Create Users table (core user accounts) |
| V0040 | Create User Identifier table (phone/email/user_id mappings) |
| V0041 | Create User Profile table (personal information) |
| V0042 | Create User Role table (role assignments) |
| V0043 | Create OTP Transaction table (OTP request tracking) |
| V0044 | Create User Session table (active sessions) |
| V0045 | Create Login History table (audit trail) |
| V0046 | Create Password History table (password change tracking) |
| V0047 | Create Audit Log table (authentication audit events) |

---

# Migration Naming Convention

Every migration must follow the format

```
V<Version>__<Module>_<Action>.sql
```

Example

```
V0001__Shared_Create_Extensions.sql

V0002__Shared_Create_Schemas.sql

V0003__Master_Create_Account_Status.sql

V0021__Master_Seed_Account_Status.sql

V0039__Auth_Create_Users.sql

V0041__Auth_Create_User_Profile.sql
```

---

# Migration Versioning Strategy

The project uses a **single global sequential version number**.

Migration versions are **never grouped by schema**.

Always create the next available version regardless of the module.

**Current Status:** Next available version is **V0048**

Example

```
V0039__Auth_Create_Users.sql

V0040__Auth_Create_User_Identifier.sql

V0041__Auth_Create_User_Profile.sql

V0042__Auth_Create_User_Role.sql

V0043__Auth_Create_OTP_Transaction.sql
```

This is the recommended Flyway approach and avoids version conflicts.

---

# Migration Rules

## 1. Never modify an executed migration

Once a migration has been executed in any environment, it becomes immutable.

❌ Never edit

```
V0039__Auth_Create_Users.sql
```

✔ Instead create

```
V0048__Auth_Add_New_Column.sql
```

---

## 2. Never rename an executed migration

Changing the filename changes Flyway's checksum validation.

---

## 3. Never delete executed migrations

Migration history is permanent.

---

## 4. Every schema change must be versioned

Examples

- New table
- New column
- Index
- Constraint
- Function
- Trigger
- View
- Seed data
- Stored procedure

Everything must have its own migration.

---

## 5. Seed data is also version controlled

Reference data changes must always be introduced through Flyway.

Example

```
V0021__Master_Seed_Account_Status.sql
```

---

# Database Schemas

| Schema | Purpose | Status |
|----------|---------|--------|
| flyway_history | Flyway migration metadata | ✅ Active |
| shared | Shared extensions, functions and utilities | ✅ Active |
| master | Reference and lookup tables | ✅ Active |
| auth | Authentication and authorization | ✅ Active |
| consent | Patient consent management | 🔄 Planned |
| medical | Medical records | 🔄 Planned |
| workflow | Business workflows | 🔄 Planned |
| analytics | Reporting and analytics | 🔄 Planned |

---

# Development Workflow

Whenever a database change is required

```
Requirement
        │
        ▼
Create Next Flyway Migration
        │
        ▼
Run Validate
        │
        ▼
Run Migrate
        │
        ▼
Verify Changes
        │
        ▼
Commit Migration
```

---

# Flyway Commands

Validate migrations

```bash
./scripts/flyway.sh validate
```

View migration history

```bash
./scripts/flyway.sh info
```

Execute pending migrations

```bash
./scripts/flyway.sh migrate
```

Repair migration history

```bash
./scripts/flyway.sh repair
```

---

# Rollback Strategy

Flyway Community Edition does not support automatic rollback.

If a migration needs to be reverted, create a new migration that reverses the previous change.

Example

```
V0048__Auth_Remove_Deprecated_Column.sql
```

instead of editing

```
V0039__Auth_Create_Users.sql
```

---

# Best Practices

- Use meaningful migration descriptions.
- Keep one logical change per migration.
- Never combine unrelated changes.
- Keep migrations deterministic and repeatable.
- Always review generated SQL before committing.
- Execute migrations locally before pushing to Git.
- Never commit database credentials.
- Store secrets only in `.env` files or AWS Secrets Manager.
- Always test migrations against a clean database before production deployment.
- Include comment headers with version, description, author, and creation date in each migration script.
- Maintain consistent indentation (4 spaces) in SQL scripts.
- Ensure all constraints have proper comma placement and formatting.

---

# Database Design Principles

The Digital Health Vault database follows these principles:

- Single PostgreSQL RDS instance
- Single database (`dhv_db`)
- Schema-based modularization
- Immutable Flyway migrations
- Reference data centralized in the `master` schema
- Authentication isolated in the `auth` schema
- Business domains separated into dedicated schemas
- Shared utilities maintained in the `shared` schema
- CITEXT extension for case-insensitive text comparisons
- UUIDs for primary keys in transactional tables
- Comprehensive audit logging and change tracking

---

# Current Schema Structure

## Master Schema Tables

**Reference/Lookup Tables:**
- account_status
- user_category
- gender
- role
- permission
- role_permission (junction table)
- blood_group
- login_method
- otp_purpose
- otp_channel
- audit_action
- identifier_type
- user_identifier_status
- otp_transaction_status
- authentication_failure_reason
- device_type
- language
- country

## Auth Schema Tables

**User Management:**
- users (core user accounts)
- user_identifier (phone/email/user_id mappings)
- user_profile (personal information)
- user_role (role assignments)

**Authentication & Security:**
- otp_transaction (OTP request tracking)
- user_session (active sessions)
- login_history (authentication audit trail)
- password_history (password change tracking)
- audit_log (authentication events)

---

# Future Schema Roadmap

```
shared
│
├── Extensions (pgcrypto, citext, etc.)
├── Functions (utility functions)
├── Utilities (common objects)
└── Common Objects

master
│
├── Lookup Tables (20+ reference tables)
├── Roles (RBAC definitions)
├── Permissions (permission definitions)
└── Reference Data (seed data)

auth
│
├── Users (user accounts)
├── User Identifier (multi-factor identifiers)
├── User Profile (personal data)
├── User Role (role assignments)
├── OTP (one-time passwords)
├── Sessions (user sessions)
├── Login History (audit trail)
├── Password History (security tracking)
└── Audit Log (authentication events)

consent (Planned)
│
└── Consent Management (patient consent)

medical (Planned)
│
├── Medical History
├── Prescriptions
├── Lab Reports
├── Allergies
└── Treatments

workflow (Planned)
│
└── Workflow Engine

analytics (Planned)
│
└── Reporting & Analytics
```

---

# Author

**Digital Health Vault**

Enterprise Healthcare Platform

Version: 0.1.0
Created: 2026-07-20
Updated: 2026-07-22

