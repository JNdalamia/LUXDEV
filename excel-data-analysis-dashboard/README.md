Project: Sales Data Cleaning & Preparation Log
Analyst: Jason Ndalamia
Date: January 30, 2026
Source: Raw Sales Data
"dashboard.png"
1. Executive Summary
This dataset has been processed to correct data quality issues including missing values, date logic errors, and pricing outliers. A staging table approach was used to preserve the integrity of the original raw data.

2. Data Cleaning Rules & Logic Applied
A. Staging & Architecture
Action: Created a Staging Table sheet.

Rule: All cleaning and manipulation were performed on the staging copy; the original raw data remains untouched for backup purposes.

B. Duplicate Management
Criteria Used: "Exact Match" (Row is a duplicate only if ALL columns match).

Findings: No exact row duplicates were found.

Anomaly Note: Duplicate Order ID found (ORD-2023-521818).

Resolution: Upon inspection, line details (SKU, Qty, etc.) differed for this ID.

Assumption: The duplicate ID represents a data entry error on the ID field, but the transactions themselves are valid and unique. No rows were removed.

C. Missing Data Handling
To ensure complete analysis without dropping rows, missing categorical data was imputed using the following standard placeholders:

City: Nulls replaced with "Unknown".

Channel: Nulls replaced with "Unspecified".

Salesperson: Nulls replaced with "Unassigned".

D. Data Type Standardization
Text: Columns 1, 4-11 (IDs, Region, Country, etc.) formatted as Text to prevent Excel from auto-formatting IDs.

Currency: Unit Price (Col 12) and Revenue (Col 13) formatted as Currency.

Percentage: Discount (Col 14) formatted as Percentage.

Numeric: Quantity (Col 5) formatted as Number.

E. Outlier & Error Correction
Unit Price: Negative or suspicious prices were flagged. A new column CorrectedUnitPrice contains the fixed values (corrected via absolute value/manual verification).

Discount Cap:

Issue: Discounts > 30% were identified as erroneous or unapproved.

Rule: Capped at 30%.

Formula: =IF(Discount > 0.3, 0.3, Discount) stored in CorrectedDiscount.

F. Date Logic & Lead Time
Invalid Dates: Identified rows where RequiredDate < OrderDate (Impossible logic).

Correction Rule: Assumed a standard 7-day turnaround for these errors.

Formula: =IF(Required < Order, Order + 7, Required).

New Metric: Added LeadTimeDays to track fulfillment speed.

Formula: =DATEDIF(OrderDate, CorrectedRequiredDate, "D").

3. Key Insights Summary
Performance:

Best Year: 2024

Worst Year: 2025

Product: SKU CMP-8851 is the highest revenue generator.

Channel: Direct sales outperformed Retail sales across all regions.

Seasonality: Peak revenue period identified between April and August.