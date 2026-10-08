# 🛒 PostgreSQL Advanced Analytics Assignment (Part 2)

This repository contains a comprehensive suite of advanced PostgreSQL queries (Questions 51-100) designed to solve real-world business and data analysis problems. The script initializes a custom retail database schema and demonstrates proficiency in complex data manipulation and extraction.

## 🗄️ Database Schema

The project uses a custom `assignment` schema comprising four normalized tables:

* **`customers`**: Stores customer demographic and membership information (Bronze, Silver, Gold).
* **`products`**: Contains product details, pricing, categories, and supplier information.
* **`sales`**: A transactional table recording purchases, including quantities and total amounts.
* **`inventory`**: Tracks current stock levels linked to specific products.

## 🚀 Key SQL Concepts Demonstrated

The SQL script is structured into four main analytical sections, showcasing progressive query complexity:

1.  **Subqueries (Q51 - Q60):** Utilizing correlated and uncorrelated subqueries for dynamic filtering (e.g., finding customers spending above the overall average, or products that have never been sold).
2.  **Common Table Expressions (CTEs) (Q61 - Q70):** Creating modular, readable intermediate result sets for multi-step aggregations (e.g., determining the highest revenue-generating months and categorizing top spenders).
3.  **Window Functions (Q71 - Q80):** Applying `RANK()`, `DENSE_RANK()`, `LAG()`, `LEAD()`, and `NTILE()` to calculate running totals, period-over-period differences, and customer segmentations.
4.  **Advanced Analytical Problems (Q81 - Q100):** Combining multi-table joins, CTEs, and Window Functions to solve complex business operations (e.g., identifying products contributing to the top 50% of revenue, analyzing cross-category purchases, and tracking consecutive month buying habits).

## 🛠️ Getting Started

### Prerequisites
* [PostgreSQL](https://www.postgresql.org/download/) installed on your local machine or server.
* A SQL client like **pgAdmin**, **DBeaver**, or the `psql` command-line tool.
* Git for version control.

### Installation & Execution
1.  Clone this repository to your local machine:
    ```bash
    git clone <your-repository-url>
    cd <your-repository-directory>
    ```
2.  Open your preferred PostgreSQL client and connect to your target database.
3.  Load and execute the `SQL_Assignment(51-100)_part2.sql` file. 
    * *Note: The script will automatically create the `assignment` schema, build the tables, insert sample data, and run all 50 analytical queries. The search path is automatically set to `assignment`.*

## 👤 Author
**Jason Ndalamia**
*Focusing on Data Science, Analysis, and AI*
