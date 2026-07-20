# Digital Health Vault Database

## Overview

This directory contains all PostgreSQL database migrations for the Digital Health Vault project.

Database changes are managed using **Flyway**.

---

## Folder Structure

```
database
│
├── flyway
│   └── sql
│
├── validation
│
└── README.md
```

---

## Migration Rules

1. Never edit an executed migration.

2. Every schema change must be a new migration.

3. Never rename executed migrations.

4. Never delete executed migrations.

5. Seed data changes must also be versioned.

---

## Migration Versioning

| Range | Description |
|--------|-------------|
|001-100|Infrastructure|
|101-150|Master Schema|
|151-200|Master Seed Data|
|201-300|Authentication Schema|
|301-400|Medical Schema|
|401-500|Workflow Schema|
|501+|Future Changes|

---

## Naming Convention

```
V001__Create_Extensions.sql

V002__Create_Schemas.sql

V101__Create_Master_Role.sql
```

---

## Rules

### Never modify an executed migration.

Create a new migration.

Example

```
V245__Alter_Users_Add_Middle_Name.sql
```

Never edit

```
V201__Create_Users.sql
```

---

## Flyway Commands

Validate

```
flyway validate
```

Migrate

```
flyway migrate
```

Info

```
flyway info
```

Repair

```
flyway repair
```

---

## Rollback Strategy

Flyway Community Edition does not support automatic rollback.

Rollback migrations should be created manually when required.

---


## Database Schemas

| Schema | Purpose |
|---------|---------|
| flyway_history | Flyway migration metadata |
| shared | Shared database functions |
| master | Lookup and reference data |
| auth | Authentication and authorization |
| medical | Medical records |
| workflow | Workflow engine |
| consent | Patient consent |
| analytics | Reporting and analytics |

---

## Author

Digital Health Vault Team