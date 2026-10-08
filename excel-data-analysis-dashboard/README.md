\# Excel Data Cleaning \& Sales Analysis



!\[Dashboard Preview](./dashboard.png)



A Microsoft Excel data analytics project focused on data cleaning, validation, transformation, and business insight generation from raw sales data.



The project demonstrates how a structured data-cleaning workflow can improve data quality before analysis and reporting.



\## Project Overview



The project begins with raw sales data and applies a controlled cleaning process using a staging-table approach.



The workflow focuses on:



\- Preserving the original raw data

\- Identifying data-quality issues

\- Standardising data types

\- Handling missing values

\- Investigating duplicate records

\- Correcting invalid or suspicious values

\- Validating date logic

\- Creating derived analytical measures

\- Extracting business insights from the cleaned dataset



\## Business Objectives



The analysis was designed to:



\- Improve the quality and consistency of the sales dataset

\- Identify and document data-quality problems

\- Apply transparent correction rules

\- Prepare reliable data for analysis

\- Identify sales performance patterns

\- Generate business insights from the cleaned data



\## Data Quality Workflow



\### 1. Staging \& Data Protection



A separate staging table was created so that cleaning and transformation activities could be performed without altering the original raw dataset.



This approach preserves the raw data as a reference and provides a safer basis for analysis.



\### 2. Duplicate Assessment



Duplicate detection was based on an exact-match approach, where a row was considered a duplicate only when all columns matched.



The analysis also identified a repeated Order ID:



```text

ORD-2023-521818

```



The repeated ID was investigated further because the associated line details differed.



The project documentation concluded that the transactions appeared to be distinct and therefore no rows were removed.



\### 3. Missing-Value Handling



Missing categorical values were replaced with consistent analytical placeholders:



| Field | Replacement |

|---|---|

| City | `Unknown` |

| Channel | `Unspecified` |

| Salesperson | `Unassigned` |



This approach allows the records to remain available for analysis instead of being removed because of missing categorical information.



\### 4. Data-Type Standardisation



The dataset was standardised to improve consistency and prevent unintended Excel formatting.



Examples included:



\- IDs and relevant text fields stored as Text

\- Unit Price and Revenue formatted as Currency

\- Discount formatted as Percentage

\- Quantity formatted as Number



\### 5. Price Validation



Suspicious or negative unit prices were identified.



A derived field named `CorrectedUnitPrice` was introduced to store corrected values based on review of the affected records.



\### 6. Discount Validation



Discount values above 30% were identified as potentially erroneous or outside the approved rule.



A corrected discount field was created using the rule:



```excel

=IF(Discount>0.3,0.3,Discount)

```



This capped discounts at 30%.



\### 7. Date Logic Validation



Records were checked for impossible date relationships where:



```text

Required Date < Order Date

```



For these records, a standard seven-day turnaround was assumed.



A corrected required date was calculated using:



```excel

=IF(Required<Order,Order+7,Required)

```



\### 8. Derived Fulfilment Metric



A `LeadTimeDays` metric was created to measure the number of days between the order date and corrected required date.



```excel

=DATEDIF(OrderDate,CorrectedRequiredDate,"D")

```



This provides an additional operational metric for analysing fulfilment performance.



\## Business Insights



The analysis produced several documented findings.



\### Sales Performance



\- \*\*2024\*\* was identified as the best-performing year.

\- \*\*2025\*\* was identified as the weakest year in the analysed data.



\### Product Performance



\- Product/SKU `CMP-8851` was identified as the highest revenue generator.



\### Sales Channel



\- Direct sales outperformed Retail sales across all regions in the analysis.



\### Seasonality



\- The analysis identified \*\*April to August\*\* as the peak revenue period.



\## Analytical Workflow



```text

Raw Sales Data

&#x20;      │

&#x20;      ▼

Staging Copy

&#x20;      │

&#x20;      ▼

Data Quality Assessment

&#x20;      │

&#x20;      ├── Duplicate Checks

&#x20;      ├── Missing Values

&#x20;      ├── Data Types

&#x20;      ├── Price Validation

&#x20;      ├── Discount Validation

&#x20;      └── Date Validation

&#x20;      │

&#x20;      ▼

Corrected \& Enriched Dataset

&#x20;      │

&#x20;      ▼

Business Analysis

&#x20;      │

&#x20;      ▼

Dashboard \& Insights

```



\## Dashboard



The project includes an Excel dashboard visualising the analysed sales data.



The dashboard provides a visual layer for communicating the results of the cleaned and enriched dataset.



\## Project Structure



```text

excel-data-analysis-dashboard/

│

├── dashboard.png

├── excel\_data\_analysis\_dashboard.xlsx

└── README.md

```



\## How to Use



1\. Open `excel\_data\_analysis\_dashboard.xlsx` in Microsoft Excel.

2\. Review the raw and staging data.

3\. Examine the applied data-cleaning and validation logic.

4\. Review the derived fields and analytical results.

5\. Use the dashboard to explore the reported sales patterns and findings.



\## Tools \& Technologies



\- Microsoft Excel

\- Data Cleaning

\- Data Validation

\- Data Transformation

\- Data Analysis

\- Dashboard Development

\- Business Reporting

\- Git \& GitHub



\## Skills Demonstrated



\- Data quality assessment

\- Data cleaning

\- Missing-value handling

\- Duplicate investigation

\- Data validation

\- Error correction

\- Derived metric creation

\- Business analysis

\- Excel-based reporting

\- Data visualization

\- Analytical problem solving



\## Project Context



\*\*Training Project — LuxDev Data Analytics Program\*\*



This project was completed as part of practical data analytics training focused on developing strong data-cleaning, analysis, and reporting skills using Microsoft Excel.



\## Author



\*\*Jason Ndalamia\*\*



Data Analytics | Business Intelligence | AI \& Technology



\[GitHub](https://github.com/JNdalamia)
