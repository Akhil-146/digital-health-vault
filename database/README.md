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
│   │     ...
│   │
│   └── README.md
│
├── validation
│     Validation_Scripts.sql
│
└── README.md
```

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

V0016__Master_Seed_Account_Status.sql

V0027__Auth_Create_User.sql

V0035__Medical_Create_Patient_Record.sql

V0108__Workflow_Add_Status_Index.sql
```

---

# Migration Versioning Strategy

The project uses a **single global sequential version number**.

Migration versions are **never grouped by schema**.

Always create the next available version regardless of the module.

Example

```
V0027__Auth_Create_User.sql

V0028__Auth_Create_User_Profile.sql

V0029__Medical_Create_Prescription.sql

V0030__Master_Create_Device_Type.sql

V0031__Workflow_Create_Task.sql
```

This is the recommended Flyway approach and avoids version conflicts.

---

# Migration Rules

## 1. Never modify an executed migration

Once a migration has been executed in any environment, it becomes immutable.

❌ Never edit

```
V0027__Auth_Create_User.sql
```

✔ Instead create

```
V0045__Auth_Add_Last_Login_Time.sql
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
V0038__Master_Seed_Device_Type.sql
```

---

# Database Schemas

| Schema | Purpose |
|----------|----------------------------------------------|
| flyway_history | Flyway migration metadata |
| shared | Shared extensions, functions and utilities |
| master | Reference and lookup tables |
| auth | Authentication and authorization |
| consent | Patient consent management |
| medical | Medical records |
| workflow | Business workflows |
| analytics | Reporting and analytics |

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
V0027__Auth_Create_User.sql
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

---

# Future Schema Roadmap

```
shared
│
├── Extensions
├── Functions
├── Utilities
└── Common Objects

master
│
├── Lookup Tables
├── Roles
├── Permissions
└── Reference Data

auth
│
├── User
├── User Identifier
├── User Profile
├── User Role
├── Login History
├── OTP
└── Sessions

consent
│
└── Consent Management

medical
│
├── Medical History
├── Prescriptions
├── Lab Reports
├── Allergies
└── Treatments

workflow
│
└── Workflow Engine

analytics
│
└── Reporting
```

---

# Author

**Digital Health Vault**

Enterprise Healthcare Platform
