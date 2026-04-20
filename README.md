# Sales-Trend-Analysis-Using-Aggregations
SQL-based monthly sales trend analysis using aggregation functions on an online retail orders dataset. Covers EXTRACT, GROUP BY, SUM, COUNT DISTINCT, ORDER BY, WHERE filters, NULL handling, and multi-table JOINs. Built as part of a structured data analyst learning roadmap.

Sales Trend Analysis Using SQL Aggregations
Overview

This project focuses on analyzing monthly sales trends from an online retail dataset using SQL aggregation techniques. It combines date extraction, grouping, filtering, and multi-table joins to derive meaningful insights on revenue and order volume.

Objectives
Extract month and year from order dates for time-based analysis
Calculate monthly revenue using aggregation functions
Measure order volume using distinct order counting
Filter results for specific time periods
Identify top performing months by revenue
Handle NULL values safely in aggregations
Apply multi-table joins combined with GROUP BY
Dataset Used
Online Sales Dataset

orders

order_id
order_date
amount
product_id

order_items

order_id
product_id
quantity
unit_price

products

product_id
product_name

Dataset contains 50 rows spanning January to June 2024 across multiple product categories such as Electronics, Clothing, Books, Home, and Accessories.

Work Completed
Database Setup
Created the orders table with relevant columns
Inserted 50 rows of transactional data
Included NULL values for aggregation practice
Verified data integrity before analysis
Month Extraction
Used EXTRACT(MONTH FROM order_date) to derive month number
Confirmed correct integer output for each record
Observed row-level output without grouping
Grouping by Year and Month
Extracted year using EXTRACT(YEAR FROM order_date)
Applied GROUP BY on year and month expressions
Learned that aliases cannot be used in GROUP BY
Observed aggregation into one row per time period
Monthly Revenue Calculation
Used SUM(amount) to calculate total monthly revenue
Observed aggregation of transactional data into summarized insights
Order Volume Counting
Used COUNT(DISTINCT order_id) to count unique orders
Compared with COUNT(*) to understand differences
Learned how NULL values impact counting
Sorting Results
Used ORDER BY for chronological sorting
Sorted by revenue to identify top-performing months
Applied LIMIT to extract top results
Filtering by Time Period
Used WHERE clause to filter Q1 (Jan–Mar)
Used WHERE clause to filter Q2 (Apr–Jun)
Compared performance across time periods
NULL Handling
Observed SUM() ignores NULL values
Used COALESCE(amount, 0) for explicit handling
Measured NULL count using COUNT(*) minus COUNT(column)
Multi-table JOIN with Aggregations
Joined orders, order_items, and products tables
Calculated revenue using quantity * unit_price
Resolved column errors using DESCRIBE
Fixed incorrect GROUP BY causing row duplication
Achieved clean aggregation at product-month level
Concepts Covered
EXTRACT() for date-based analysis
GROUP BY with multiple columns
SUM() for revenue calculation
COUNT(DISTINCT) vs COUNT(*)
ORDER BY for sorting aggregated data
WHERE for filtering
COALESCE() for NULL handling
Multi-table JOINs with aggregation
Debugging SQL queries using DESCRIBE
Key Findings
Revenue shows a consistent upward trend from January to April 2024
April recorded the highest revenue month
Electronics category generated the highest revenue
Order volume remained stable across months
A small set of products contributed most of the revenue
Tools and Technologies
SQL (MySQL)
MySQL Workbench
Future Enhancements
Add category-wise monthly analysis
Calculate month-over-month growth
Implement window functions for advanced analytics
Build dashboard visualization using Power BI or Tableau
Conclusion

This project demonstrates practical SQL skills for time-series analysis, including aggregation, filtering, and multi-table joins. It reflects a real-world workflow from raw data preparation to business insight generation, making it relevant for data analyst roles.
