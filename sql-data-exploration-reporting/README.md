# SQL Data Exploration & Reporting

A PostgreSQL project demonstrating foundational SQL skills for exploring retail data, analysing sales performance, understanding customer behaviour, and monitoring product and inventory activity.

The project builds a relational database and answers 50 progressively challenging business questions using SQL.

## Project Overview

This project uses a retail dataset containing four related tables:

- `customers` — customer profiles, registration dates, and membership tiers
- `products` — product catalogue, prices, categories, and stock levels
- `sales` — customer transactions, quantities, dates, and sales amounts
- `inventory` — product inventory information

The project starts with basic data exploration and gradually progresses to joins, aggregation, date analysis, subqueries, and business-oriented reporting.

## Business Objectives

The analysis was designed to answer questions such as:

- What products and categories are available?
- What are the average, minimum, and maximum product prices?
- Which products generate the most sales?
- How much has each customer spent?
- Which customers are the highest-value customers?
- Which products have low stock levels?
- Which products have been sold recently or remain unsold?
- How did sales perform during 2023?
- Which products perform best by category?
- Which customer and product segments deserve further attention?

## Database Structure

The project creates a PostgreSQL schema named `assignment` containing four tables.

```text
assignment
│
├── customers
├── products
├── sales
└── inventory
```

Key relationships include:

```text
customers  ───<  sales  >───  products
                              │
                              │
                          inventory
```

Relationships:

- `sales.customer_id` → `customers.customer_id`
- `sales.product_id` → `products.product_id`
- `inventory.product_id` → `products.product_id`

## Analytical Coverage

### 1. Data Exploration & Basic Metrics — Q1–Q12

The first section establishes an understanding of the dataset.

Examples include:

- Viewing customer, product, sales, and inventory records
- Counting products
- Calculating average, highest, and lowest prices
- Calculating total sales
- Reviewing membership categories
- Identifying products within specific categories
- Counting sales by product
- Calculating quantities sold

### 2. Relational Analysis & JOINs — Q13–Q20

This section applies relational SQL to combine information across tables.

Examples include:

- Identifying customers who purchased high-priced products
- Combining sales with product information
- Calculating total spending by customer
- Combining customer, sales, and product information
- Comparing customers with the same membership status
- Identifying products with low stock
- Analysing products with higher sales activity

### 3. Grouping, Filtering & Business Analysis — Q21–Q30

This section moves from individual records to grouped business information.

Examples include:

- Customers purchasing from selected product categories
- Total sales by product
- Customers who purchased during 2023
- Highest-spending customers in 2023
- Most expensive products sold
- Gold-tier customer activity
- Low-stock products
- High-purchase customers
- Average quantity sold per product

### 4. Time-Based & Operational Analysis — Q31–Q36

The project applies date-based analysis to understand sales activity and operational conditions.

Examples include:

- Sales in December 2023
- Customer spending during 2023
- Products sold despite low remaining stock
- Total sales by product
- Customers purchasing within seven days of registration
- Products within specific price ranges

### 5. Advanced Reporting Queries — Q37–Q50

The final section combines multiple SQL techniques to answer more targeted business questions.

Examples include:

- Identifying the most frequent customers
- Total product quantities purchased per customer
- Highest- and lowest-stock products
- Product name pattern matching
- Gold-tier sales analysis
- Sales by product category
- Monthly sales analysis
- Sold products with stock remaining
- Top five customers by purchases
- Unique products sold in 2023
- Products not sold within the last six months
- Product performance within price ranges
- Highest-spending customers
- Products meeting sales and price thresholds

## SQL Concepts Demonstrated

- Database schema creation
- Table creation
- Primary and foreign key relationships
- Data insertion
- `SELECT`
- Filtering with `WHERE`
- `DISTINCT`
- Aggregations
- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `GROUP BY`
- `HAVING`
- `ORDER BY`
- `INNER JOIN`
- `LEFT JOIN`
- Self-joins
- Subqueries
- `UNION ALL`
- `LIKE`
- Date filtering and extraction
- Top-N analysis
- Multi-table reporting

## Data Quality & Lessons Learned

One of the useful aspects of this project was learning how small SQL logic choices can change analytical results.

Examples documented during the project include:

- Understanding when to use `WHERE` versus `HAVING`
- Ensuring all non-aggregated selected columns are represented correctly in `GROUP BY`
- Avoiding inappropriate use of `SUM(DISTINCT ...)`
- Choosing appropriate join or exclusion logic for identifying missing relationships

These lessons strengthened the connection between SQL syntax and analytical correctness.

## Project Structure

```text
sql-data-exploration-reporting/
│
├── sql_data_exploration.sql
└── README.md
```

## How to Run

### Prerequisites

- PostgreSQL 13 or later
- PostgreSQL client such as pgAdmin, DBeaver, or `psql`
- Git

### Execution

Clone the repository:

```bash
git clone https://github.com/JNdalamia/LUXDEV.git
cd LUXDEV/sql-data-exploration-reporting
```

Open `sql_data_exploration.sql` in your PostgreSQL client and execute the script.

The script:

1. Creates the `assignment` schema.
2. Creates the required tables.
3. Inserts the project data.
4. Runs exploratory and analytical queries.

## Skills Demonstrated

- SQL
- PostgreSQL
- Data exploration
- Data analysis
- Relational database concepts
- Sales analysis
- Customer analysis
- Product analysis
- Inventory analysis
- Business reporting
- Analytical problem solving
- Git & GitHub

## Project Context

**Training Project — LuxDev Data Analytics Program**

This project was completed as part of practical data analytics training, with an emphasis on building strong SQL foundations and translating business questions into analytical queries.

## Author

**Jason Ndalamia**

Data Analytics | Business Intelligence | AI & Technology

[GitHub](https://github.com/JNdalamia)