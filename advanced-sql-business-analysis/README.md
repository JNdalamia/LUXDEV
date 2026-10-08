# Advanced SQL Business Analysis

A PostgreSQL project demonstrating advanced SQL techniques for analysing customer behaviour, product performance, sales activity, revenue concentration, and inventory operations.

The project contains 50 analytical problems covering subqueries, Common Table Expressions (CTEs), window functions, ranking, segmentation, time-based analysis, and multi-step business analysis.

## Project Overview

This project extends foundational SQL skills into more advanced analytical scenarios using a retail business dataset.

The database contains four related entities:

- `customers` — customer profiles, registration dates, and membership status
- `products` — product information, categories, prices, and stock levels
- `sales` — customer purchase transactions, quantities, dates, and amounts
- `inventory` — product inventory information

The SQL script creates the database schema, loads the data, and executes analytical queries Q51–Q100.

## Business Questions

The analysis explores questions such as:

- Which customers spend more than the average customer?
- Which customers have never made a purchase?
- Which products have never been sold?
- Which products are priced above their category average?
- Who are the highest-spending customers?
- Which product categories generate the most revenue?
- Which products sell the highest quantities?
- Which customers purchase across multiple categories?
- Which customers buy shortly after registering?
- Which customers have purchases in consecutive months?
- Which products contribute to the top 50% of total revenue?
- Which customers rank in the top 10% of spending?
- Which products perform best within their categories?
- Which customers spend above the average of their membership tier?
- Which products generate sales consistently across all years in the dataset?

## Analytical Approach

### 1. Subqueries — Q51–Q60

The first section uses subqueries to compare individual records against overall or grouped benchmarks.

Examples include:

- Customers spending above the overall average
- Products priced above the overall average
- Customers with no purchase history
- Products that have never been sold
- Products exceeding average sales or quantity thresholds

### 2. Common Table Expressions — Q61–Q70

CTEs are used to break complex analysis into readable intermediate steps.

Examples include:

- Ranking the top five customers by total spending
- Identifying the top three products by quantity sold
- Comparing revenue across product categories
- Identifying frequent purchasers
- Calculating monthly revenue
- Comparing products against average sales quantities

### 3. Window Functions — Q71–Q80

Window functions are used for ranking, sequential analysis, and customer segmentation.

Techniques demonstrated include:

- Customer ranking by spending
- Product ranking by quantity sold
- Identifying the second- and third-ranked records
- Ranking products within categories
- Ranking customers by purchase frequency
- Running sales totals
- Previous and next transaction comparisons
- Dividing customers into four spending groups

### 4. Advanced Analytical Queries — Q81–Q90

This section combines joins, aggregation, filtering, and subqueries to answer more complex business questions.

Examples include:

- Cross-category purchasing behaviour
- Purchase timing relative to customer registration
- Inventory levels below the average
- Repeat purchases of the same product
- Revenue by product category
- Unique customer counts by product
- Purchases above average transaction values

### 5. Advanced Window & Analytical Problems — Q91–Q100

The final section combines multiple analytical techniques to solve more advanced problems.

Examples include:

- Top 10% of customers by spending
- Products contributing to the top 50% of revenue
- Consecutive monthly purchasing behaviour
- Stock versus sales comparisons
- Spending relative to membership-tier averages
- Category-level performance comparisons
- Highest single purchase relative to customer spending
- Top three products within each category
- Tied highest-spending customers
- Products generating sales across every year in the dataset

## SQL Techniques Demonstrated

This project demonstrates practical use of:

- Subqueries
- Common Table Expressions (CTEs)
- Window functions
- `RANK()`
- `DENSE_RANK()`
- `LAG()`
- `LEAD()`
- `NTILE()`
- Aggregations
- `GROUP BY`
- `HAVING`
- Multi-table joins
- Conditional filtering
- Date-based analysis
- Customer segmentation
- Ranking and benchmarking
- Revenue contribution analysis

## Data Model

```text
assignment
│
├── customers
│
├── products
│
├── sales
│
└── inventory
```

Key relationships:

```text
customers  ───<  sales  >───  products
                              │
                              │
                          inventory
```

The `sales` table links customers and products and provides the transactional basis for most of the analysis.

## Project Structure

```text
advanced-sql-business-analysis/
│
├── advanced_sql_business_analysis.sql
└── README.md
```

## How to Run

### Prerequisites

- PostgreSQL
- PostgreSQL client such as pgAdmin, DBeaver, or `psql`
- Git

### Execution

Clone the repository:

```bash
git clone https://github.com/JNdalamia/LUXDEV.git
cd LUXDEV/advanced-sql-business-analysis
```

Open `advanced_sql_business_analysis.sql` in your PostgreSQL client and execute the script.

The script:

1. Creates the `assignment` schema.
2. Creates the required tables.
3. Inserts the project data.
4. Sets the appropriate search path.
5. Executes the analytical queries.

## Skills Demonstrated

- Advanced SQL
- PostgreSQL
- Data analysis
- Business problem solving
- Relational data analysis
- Customer analytics
- Product analytics
- Sales analysis
- Revenue analysis
- Inventory analysis
- Analytical thinking
- Git & GitHub

## Project Context

**Training Project — LuxDev Data Analytics Program**

This project was completed as part of practical data analytics training focused on developing advanced SQL and analytical problem-solving skills.

## Author

**Jason Ndalamia**

Data Analytics | Business Intelligence | AI & Technology

[GitHub](https://github.com/JNdalamia)