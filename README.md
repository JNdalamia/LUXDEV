# SQL & Sales Analytics Power BI Dashboard

## Project Overview
This repository contains a comprehensive Power BI Dashboard (`SQL_BI_Assignment_Power_BI_Dashboards.pbix`) developed to analyze sales, product performance, customer behavior, and inventory status. The dashboard is built upon a relational SQL database schema designed for a retail/e-commerce environment.

## Data Source
The dashboard utilizes four primary tables from the `sql_assignment_1` database:
- **Customers**: Demographic information and membership status (Gold, Silver, Bronze).
- **Products**: Catalog of items across various categories (Electronics, Appliances, Accessories).
- **Sales**: Transactional records including quantities, sale dates, and total amounts.
- **Inventory**: Real-time stock levels for all products.

## Dashboard Features

### 1. Sales Performance
- **Revenue Trends**: Line charts visualizing sales growth over time.
- **Key Metrics**: High-level KPIs for Total Sales, Total Quantity Sold, and Average Order Value (AOV).

### 2. Product Analysis
- **Category Performance**: Breakdown of revenue by product category (e.g., Electronics vs. Appliances).
- **Top Performers**: Identification of the highest-grossing products using Tree Maps and Bar Charts.

### 3. Customer Insights
- **Segmentation**: Analysis of spending habits based on membership tiers.
- **Top Spenders**: A dedicated view of the most valuable customers to assist in loyalty targeting.

### 4. Inventory Management
- **Stock Levels**: Visual tracking of current inventory counts versus sales velocity.
- **Low Stock Alerts**: Indicators for products that have fallen below critical stock thresholds.

## Technical Implementation

### Data Modeling
- **Star Schema**: The model uses a central `Sales` fact table connected to `Customers` and `Products` dimension tables.
- **Relationships**: 
    - `sales` (*:1) `customers` via `customer_id`
    - `sales` (*:1) `products` via `product_id`
    - `inventory` (1:1) `products` via `product_id`

### Key DAX Measures
The dashboard utilizes custom DAX measures for advanced calculations, including:
- `Total Sales = SUM(sales[total_amount])`
- `Total Qty = SUM(sales[quantity_sold])`
- `AOV = DIVIDE([Total Sales], COUNT(sales[sale_id]))`

## How to Use
1. Ensure you have **Power BI Desktop** installed.
2. Download and open the `SQL_BI_Assignment_Power_BI_Dashboards.pbix` file.
3. To refresh the data, update the data source settings to point to your local or cloud SQL Server instance hosting the `sql_assignment_1` database.

---
**Developed by:** Jason Ndalamia  
**Tools Used:** PostgreSQL Server, Power BI Desktop, DAX, Power Query.
