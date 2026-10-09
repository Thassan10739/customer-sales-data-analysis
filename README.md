# Customer Sales Data Analysis

**Tools:** SQL, SQLite  
**Project Type:** Beginner Data Analytics Portfolio Project

## Project Overview

This project uses SQL and SQLite to analyze customer and order data. The goal is to understand sales performance, customer purchasing behavior, product revenue, regional performance, and monthly sales trends.

## Project Objective

Use SQL queries to transform order data into meaningful business insights and identify opportunities to improve sales performance and customer retention.

## Business Questions

1. What are the company's total revenue and average order value?
2. Which customers generate the most revenue?
3. Which customers make repeat purchases?
4. Which region generates the most revenue?
5. Which products generate the most revenue?
6. Which months generate the most revenue?
7. Who are the highest-revenue customers?

## Tools and SQL Skills

- SQLite
- SELECT statements
- INNER JOINs
- Aggregate functions: COUNT, SUM, ROUND
- GROUP BY and HAVING
- ORDER BY
- Date functions using STRFTIME()
- Revenue calculations
- Data validation and reconciliation

## Key Business Findings

| Metric | Result |
|---|---:|
| Total Revenue | $7,010.00 |
| Total Orders | 15 |
| Average Order Value | $467.33 |
| Top Revenue-Generating Product | Laptop — $4,500 |
| Top Revenue-Generating Region | South — $3,260 |
| Highest-Revenue Customer | James Smith — $1,400 |
| Highest-Revenue Month | May 2025 — $1,650 |
| Repeat Customers | 4 |

## Methodology

1. Reviewed customer and order data stored in SQLite.
2. Calculated order revenue by multiplying quantity by unit price.
3. Joined the customer and order tables using `customer_id`.
4. Used aggregate functions to calculate revenue and order counts.
5. Grouped data by customers, regions, products, and months.
6. Used `HAVING` to identify customers with multiple orders.
7. Used `STRFTIME()` to group orders by month.
8. Sorted results to rank customers, products, and regions.
9. Validated the results by comparing total revenue with monthly and regional totals.

## Business Recommendations

1. **Maintain a focus on laptop sales.** Laptops generated the highest product revenue in this dataset.
2. **Investigate regional performance.** Study factors contributing to the South's leading revenue and explore whether useful strategies could be applied elsewhere.
3. **Encourage repeat purchases.** Consider customer retention offers and follow-up promotions.
4. **Explore cross-selling.** Test whether bundling accessories with laptops could increase order value.
5. **Investigate monthly fluctuations.** Examine why monthly revenue varied and determine whether seasonality or other factors may explain the differences.

## Project Conclusion

This project demonstrates how SQL can be used to analyze customer and order data and answer practical business questions. The results highlight product, customer, regional, and monthly revenue patterns that can support further investigation and data-informed business decisions.

## Project Files

- [`customer_sales_analysis.sql`](./customer_sales_analysis.sql) — SQL queries used for the analysis.

## Data Note

This is a practice project using sample customer and order data. The results demonstrate SQL analysis techniques and should not be interpreted as actual business performance.
