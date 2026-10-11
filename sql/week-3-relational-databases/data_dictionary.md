# Week 3 SQL — Data Dictionary

## Dataset Overview

- **Database:** SQLite
- **Table:** `sales_data_recovered`
- **Domain:** Sales transactions
- **Grain:** One order line or product per row represents the grain of this dataset.
- **Expected row count:** 6 data rows
- **Column count:** 9

## Column Definitions

| Column | Recommended Type | Meaning | Key / Role | Notes |
|---|---|---|---|---|
| `Order_ID` | INTEGER | Identifier for an order | Potential primary key | Verify uniqueness before treating it as a primary key |
| `Order_Date` | TEXT | Date of the order | Date attribute | Prefer `YYYY-MM-DD` format |
| `Customer` | TEXT | Customer name | Descriptive attribute | Check for missing values |
| `Region` | TEXT | Sales region | Dimension attribute | Expected values include North, South, East, West |
| `Product` | TEXT | Product name | Descriptive attribute | Used to analyze product sales |
| `Category` | TEXT | Product category | Dimension attribute | Example: Electronics, Furniture |
| `Sales` | REAL | Sales amount | Measure | Used for sales analysis |
| `Profit` | REAL | Profit amount | Measure | Used for profit analysis |
| `Quantity` | INTEGER | Number of units | Measure | Should contain whole numbers |

## Dimensions and Measures
## Dimensions

Order_Date — used for time-based analysis.
Customer — used for customer-level analysis.
Region — used for regional comparisons.
Product — used for product-level analysis.
Category — used for category-level analysis.

## Measures

Sales — used to calculate total revenue.
Profit — used to calculate total profit.
Quantity — used to calculate units sold.

## Common Business Metrics

Metric

Definition

Total Sales

Sum of all sales values.

Total Profit

Sum of all profit values.

Total Quantity

Sum of all units sold.

Average Sales

Average sales value per row.

Profit Margin (%)

Total Profit divided by Total Sales, multiplied by 100.

Order Count

Count of distinct order IDs, when each ID represents an order.
## Data Quality and Assumptions

- The source data should remain unchanged.
- Confirm the actual row count before analysis.
- Check for missing values, duplicate identifiers, and invalid numeric values.
- Confirm declared and actual storage types in SQLite.
- Confirm sales, profit, and quantity totals against the Excel source.
- The table grain and uniqueness of `Order_ID` should be verified against the business meaning of the data.
- No foreign keys or relationships are documented for this single-table exercise.

## Limitations

The accuracy and usefulness of the analysis depend on the completeness, consistency, and size of the dataset. Conclusions should be interpreted in the context of the available records.

## Week 3 Scope

This dataset was used to practice SELECT, aliases, DISTINCT, LIMIT, ORDER BY, arithmetic expressions, WHERE, AND, OR, NOT, IN, BETWEEN, LIKE, NULL handling, typeof(), and CAST.

The queries demonstrate foundational SQL skills and do not represent a full multi-table relational model.
