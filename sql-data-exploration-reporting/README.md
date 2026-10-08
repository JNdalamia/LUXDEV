# 🗄️ SQL Assignment Part 1 — PostgreSQL

A structured SQL assignment covering schema design, table creation, data insertion, and 50 progressively challenging queries using PostgreSQL.

---

## 🗃️ Database Schema

The assignment uses a single schema (`assignment`) with four tables:

```
assignment
├── customers       — Customer profiles and membership tiers
├── products        — Product catalogue with pricing and stock
├── sales           — Transaction records linking customers to products
└── inventory       — Stock levels per product
```

### Entity Relationship Overview

```
customers ──< sales >── products
                          │
                       inventory
```

- `sales.customer_id` → `customers.customer_id`
- `sales.product_id`  → `products.product_id`
- `inventory.product_id` → `products.product_id`

---

## 🚀 Getting Started

### Prerequisites

- [PostgreSQL](https://www.postgresql.org/download/) 13 or higher
- `psql` CLI or a GUI client such as [pgAdmin](https://www.pgadmin.org/) or [DBeaver](https://dbeaver.io/)

### Setup

1. **Create the database** (run this separately in psql before executing the script)
   ```sql
   CREATE DATABASE sql_assignment_1;
   ```
---

## 📋 Assignment Coverage

### Tables Created
| Table | Rows Inserted | Description |
|-------|:---:|---|
| `customers` | 50 | Customer profiles with membership status (Bronze / Silver / Gold) |
| `products` | 15 | Products across Electronics, Appliances, and Accessories |
| `sales` | 15 | Sales transactions from 2023–2024 |
| `inventory` | 15 | Current stock levels per product |

### Query Topics (Q1–Q50)

| Range | Topics |
|-------|--------|
| Q1–Q12 | Basic SELECT, filtering, aggregates (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`), `DISTINCT`, `CONCAT` |
| Q13–Q20 | `INNER JOIN`, multi-table joins, filtering on joined columns |
| Q21–Q27 | `LEFT JOIN`, self-join, `GROUP BY`, `ORDER BY`, date filtering |
| Q28–Q36 | Inventory checks, `HAVING`, `INTERVAL` date arithmetic, `BETWEEN` |
| Q37–Q50 | Subqueries, `UNION ALL`, `LIKE`, `EXTRACT`, top-N queries, `LIMIT` |

---

## 📝 Key SQL Concepts Practised

- **Schema design** — creating schemas, tables, primary keys, and foreign key constraints
- **Aggregation** — `SUM`, `COUNT`, `AVG`, `MIN`, `MAX` with `GROUP BY` and `HAVING`
- **JOINs** — `INNER JOIN`, `LEFT JOIN`, self-join, three-table joins
- **Date operations** — `BETWEEN`, `EXTRACT(YEAR/MONTH FROM ...)`, `INTERVAL`
- **Pattern matching** — `LIKE`
- **Set operations** — `UNION ALL`
- **Subqueries** — `NOT IN (SELECT ...)` for exclusion logic
- **Window results** — `ORDER BY ... LIMIT` for top-N queries

---

### Common Mistakes Made

- `WHERE` used instead of `HAVING` to filter aggregate results (Q29, Q50)
- `GROUP BY` included `sale_date` accidentally, fragmenting monthly totals (Q43, Q46, Q49)
- `SUM(DISTINCT col)` used instead of `SUM(col)`, silently underreporting totals (Q11)
- `INNER JOIN` used where `NOT IN` / `LEFT JOIN IS NULL` was needed (Q47)

---

## 💡 Tips

> **WHERE vs HAVING** — Use `WHERE` to filter rows *before* aggregation. Use `HAVING` to filter *after* (i.e., on `SUM`, `COUNT`, `AVG` results).

> **GROUP BY completeness** — Every column in `SELECT` that is not inside an aggregate must appear in `GROUP BY`.

> **Case sensitivity** — PostgreSQL `LIKE` is case-sensitive. Use `ILIKE` for case-insensitive matching.

> **Schema prefixes** — Always qualify table names with the schema (`assignment.customers`) for clarity and portability.

---

## 📄 License

This project is for educational purposes only.
