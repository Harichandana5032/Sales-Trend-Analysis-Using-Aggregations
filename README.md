# Sales-Trend-Analysis-Using-Aggregations
SQL-based monthly sales trend analysis using aggregation functions on an online retail orders dataset. Covers EXTRACT, GROUP BY, SUM, COUNT DISTINCT, ORDER BY, WHERE filters, NULL handling, and multi-table JOINs. Built as part of a structured data analyst learning roadmap.
Sales Trend Analysis Using SQL Aggregations
Overview
This project focuses on analyzing monthly sales trends from an online retail orders dataset using SQL aggregation techniques. It combines date extraction, grouping, filtering, and multi-table joins to derive meaningful revenue and order volume insights from transactional data.
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

orders - order_id, order_date, amount, product_id
order_items - order_id, product_id, quantity, unit_price
products - product_id, product_name

Dataset contains 50 rows spanning January to June 2024 across multiple product categories including Electronics, Clothing, Books, Home, and Accessories.
Work Completed
Database Setup

Created the orders table with relevant columns
Inserted 50 rows of sample transactional data
Included 4 intentional NULL amount rows for NULL handling practice
Verified data loaded correctly before beginning analysis

Month Extraction

Used EXTRACT(MONTH FROM order_date) to derive month number from date column
Confirmed each row returns a month integer between 1 and 12
Understood that without GROUP BY every row is returned individually

Grouping by Year and Month

Added EXTRACT(YEAR FROM order_date) alongside month extraction
Applied GROUP BY on both year and month expressions
Learned that SQL aliases cannot be used in GROUP BY and full expressions must be repeated
Observed how rows collapse into one row per time period after grouping

Monthly Revenue Calculation

Added SUM(amount) with alias total_revenue to the grouped query
Observed how individual transaction amounts aggregate into monthly totals
Understood how SUM works in combination with GROUP BY

Order Volume Counting

Added COUNT(DISTINCT order_id) to count unique orders per month
Added COUNT(*) alongside it to compare results
Understood the difference between COUNT(*) which counts all rows and COUNT(DISTINCT col) which counts only unique non-null values

Sorting Results

Applied ORDER BY to sort results by month ascending for chronological trend view
Sorted by total_revenue descending to identify highest revenue months
Used LIMIT 3 to extract the top 3 performing months

Filtering by Time Period

Applied WHERE clause to filter results to Q1 January to March
Applied WHERE clause to filter results to Q2 April to June
Compared performance across both quarters

NULL Handling

Observed that SUM() automatically skips NULL values
Practiced using COALESCE(amount, 0) to explicitly treat NULLs as zero
Used COUNT(*) minus COUNT(amount) to measure how many NULL rows exist

Multi-table JOIN with Aggregations

Extended analysis to a normalized three-table schema
Joined orders, order_items, and products tables
Calculated revenue as quantity multiplied by unit_price inside SUM()
Debugged unknown column error by running DESCRIBE on the table to confirm exact column names
Identified and fixed incorrect GROUP BY by removing quantity column which was splitting product rows unnecessarily
Arrived at one clean row per product per month as the correct output

Concepts Covered

EXTRACT() for deriving year and month from date columns
GROUP BY with multiple columns for time-based aggregation
SUM() for calculating total revenue per group
COUNT(DISTINCT col) versus COUNT(*) for accurate volume measurement
ORDER BY on aggregated columns for sorting trends
WHERE clause for filtering specific time periods
COALESCE() for NULL-safe aggregation
Multi-table JOINs combined with GROUP BY aggregations
Debugging column errors using DESCRIBE

Key Findings

Revenue shows a consistent upward trend from January through April 2024
April recorded the highest revenue month in the dataset
Electronics category products contributed the highest revenue across all months
Order volume remained relatively stable at 3 to 4 orders per month throughout the period
A small number of products drive the majority of total revenue

Tools and Technologies

SQL (MySQL)
MySQL Workbench

Future Enhancements

Add category-wise monthly breakdown for deeper trend analysis
Include month-over-month revenue growth percentage calculation
Implement window functions for running totals and ranking
Visualize results using Power BI or Tableau dashboard

Conclusion
This task demonstrates the ability to perform time-series aggregation analysis using core SQL techniques. It covers the full workflow from raw data setup to grouped trend analysis and multi-table joins, building practical skills directly applicable to data analyst roles.
