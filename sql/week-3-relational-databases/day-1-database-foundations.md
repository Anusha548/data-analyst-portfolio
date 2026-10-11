# Day 1 — Database Foundations

## Overview

These notes cover the fundamental database concepts required for SQL-based data analysis and relational database design.

## 1. Database

A database is an organized collection of data that can be stored, accessed, managed, and retrieved efficiently.

**Example:** A sales database stores information about customers, products, orders, sales, and profits.

## 2. Schema

A schema defines the logical structure of a database, including its tables, columns, relationships, and constraints.

**Example:** A sales schema may contain `Customers`, `Products`, and `Orders` tables.

## 3. Table

A table organizes data into rows and columns.

- **Row:** Represents one record.
- **Column:** Represents an attribute of a record.

**Example:** A sales table may contain `Order_ID`, `Customer`, `Sales`, and `Profit` columns.

## 4. Primary Key

A primary key uniquely identifies each row in a table. It must contain unique, non-NULL values.

**Example:** `Customer_ID` in a Customers table.

## 5. Foreign Key

A foreign key is a column or set of columns that references a primary key or another eligible unique key in a related table.

**Example:** `Customer_ID` in an Orders table can reference `Customer_ID` in a Customers table.

## 6. Relationship

A relationship defines how records in different tables are associated.

Common relationship types:

- One-to-one (1:1)
- One-to-many (1:M)
- Many-to-many (M:N)

**Example:** One customer can place multiple orders, creating a one-to-many relationship.

## 7. Cardinality

Cardinality describes how many records in one table can be associated with records in another table.

**Example:** One customer may have many orders, while each order belongs to one customer.

## 8. Fact Table

A fact table stores measurable business events, transactions, or observations, along with keys that connect to dimension tables.

**Example:** A Sales fact table may contain `Order_Date_Key`, `Product_Key`, `Customer_Key`, `Sales`, `Profit`, and `Quantity`.

## 9. Dimension Table

A dimension table stores descriptive information used to categorize, filter, and analyze business events.

**Example:** A Product dimension may contain `Product_Key`, `Product_Name`, and `Category`.

## 10. Table Grain

Table grain defines exactly what one row in a table represents.

**Example:** One row represents one order line or product record.

Defining the grain helps prevent duplicate counting and incorrect calculations when analyzing data.

## Key Takeaways

- Databases organize and manage data.
- Schemas define database structure.
- Primary and foreign keys support identification and relationships.
- Relationships connect related records across tables.
- Fact tables store business events and measures.
- Dimension tables provide descriptive context.
- Table grain defines the meaning of one row.

## Interview Practice

**Q1. What is the difference between a primary key and a foreign key?**

A primary key uniquely identifies a record in its own table. A foreign key references a key in another table to establish a relationship.

**Q2. What is the difference between a fact table and a dimension table?**

A fact table stores business events and measurable values, while a dimension table stores descriptive attributes used to analyze those events.

**Q3. What is table grain?**

Table grain specifies exactly what one row represents in a table, such as one order line or one product record.
