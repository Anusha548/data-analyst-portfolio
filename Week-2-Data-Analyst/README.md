# Week 2 – Data Analyst Excel Practice

## Overview

This project contains my **Week 2 Data Analyst Excel practice**, focused on transforming raw sales data into a cleaned, validated, and analysis-ready dataset.

The objective was to strengthen practical Excel skills used by Data Analysts, including data cleaning, formulas, lookups, data quality checks, PivotTables, charts, reconciliation, and business insight generation.

## Dataset

The dataset contains sales transaction/order-line data with the following core columns:

* Order_ID
* Order_Date
* Customer
* Region
* Product
* Category
* Sales
* Profit
* Quantity

**Dataset grain:** One order line or product per row represents the grain of the dataset.

## Week 2 Skills Practiced

### 1. Sorting and Filtering

* Sorted sales data to identify high and low-value records.
* Applied filters to analyze specific customers, products, regions, and categories.
* Used Excel Tables for structured data handling.

### 2. Excel Formulas

Practiced formulas for calculations, validation, and analysis, including:

* `SUM`
* `AVERAGE`
* `COUNT`
* `COUNTA`
* `COUNTIF`
* `IF`
* `YEAR`
* `MONTH`
* `XLOOKUP`
* Profit Margin calculation

### 3. Calculated Columns

Created calculated/helper columns to support analysis, including:

* Profit Margin
* Profit Status
* Order Size
* Year
* Month
* Month-Year
* Lookup-based fields

Example:

```excel
Profit Margin = Profit / Sales
```

```excel
Profit Status = IF(Profit>0,"Profitable","Loss")
```

### 4. Lookup and Data Validation

Practiced:

* XLOOKUP
* INDEX-MATCH concepts
* Lookup-based category validation
* Excel Data Validation
* Checking whether lookup results match the source data

### 5. Data Cleaning and Data Quality

Performed data-quality checks for:

* Duplicate records
* Missing values
* Inconsistent text/data
* Date consistency
* Lookup accuracy
* Calculated-field accuracy

A separate **Data Quality** sheet was created to document the checks and results.

### 6. Business Question Analysis

Analyzed business requests using Excel to convert questions into measurable analysis.

Examples included:

* Which region is performing well?
* Which customers are the best performers?
* Which products are performing well?
* Which region has the highest profit?
* Which month has the highest sales?
* Which category generates the most revenue?
* Which customer segment has the highest sales?

The analysis was structured around dimensions, measures, filters, and relevant time periods.

### 7. PivotTables

Created PivotTables to summarize the sales data by different dimensions and measures, including:

* Sales by Region
* Profit by Region
* Sales by Category
* Profit by Category
* Sales by Product
* Profit by Product
* Monthly Sales
* Quantity by Category

PivotTables were used to convert transaction-level data into business-level summaries.

### 8. Charts and Visualization

Created charts from the PivotTable analysis to make the results easier to understand and communicate.

The visualizations were used to identify:

* Regional performance
* Product performance
* Category performance
* Sales trends
* Profit trends

### 9. Reconciliation and Validation

Performed reconciliation checks between the original **Raw Data** and cleaned **Working Data**.

The reconciliation included:

* Row count
* Total Sales
* Total Profit
* Total Quantity

PivotTable totals were also compared with independently calculated totals to validate the analysis.

Manual spot checks were performed on selected Order IDs to verify that important fields and calculations were accurate.

### 10. Insight Summary

Created an **Insight Summary** based on the completed analysis.

The summary focuses on:

* Business question
* Data used
* Data quality
* Key findings
* Business recommendation
* Dataset limitations

## Final Workflow

The Week 2 workflow followed:

**Raw Data → Cleaning → Calculations → Lookups → Data Quality → Business Questions → PivotTables → Charts → Reconciliation → Validation → Insights → Recommendation**

## Key Learning

Through this project, I practiced the complete Excel-based data analysis workflow:

**Clean → Calculate → Summarize → Validate → Communicate**

This helped me understand how a Data Analyst can transform raw transactional data into validated business insights using Excel.

## Tools Used

* Microsoft Excel
* Excel Tables
* Excel Formulas
* XLOOKUP
* PivotTables
* PivotCharts
* Data Validation
* Data Cleaning and Quality Checks

## Project Structure

The workbook contains:

* Raw Data
* Working Data
* Data Quality
* Business Request Analysis
* PivotTables
* Charts
* Reconciliation
* Insight Summary

## Limitations

The practice dataset is small and contains only a limited number of transaction rows. Therefore, the analysis is intended for **Excel skill development and portfolio practice**, rather than for making statistically reliable business decisions.

## Outcome

Completed Week 2 practical training covering:

* Excel data preparation
* Formula-based analysis
* Lookup logic
* Data cleaning
* Data-quality validation
* PivotTable analysis
* Data visualization
* Reconciliation
* Business insights and recommendations
