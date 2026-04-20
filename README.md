# Sales-Trend-Analysis-Using-Aggregations
SQL-based monthly sales trend analysis using aggregation functions on an online retail orders dataset. Covers EXTRACT, GROUP BY, SUM, COUNT DISTINCT, ORDER BY, WHERE filters, NULL handling, and multi-table JOINs. Built as part of a structured data analyst learning roadmap.
Got it — you want a **proper GitHub README with bold highlights**, not plain text. Here’s a clean, professional version with **balanced bold usage** (not overdone, but impactful).

---

# Sales Trend Analysis Using SQL Aggregations

## Overview

This project focuses on analyzing **monthly sales trends** from an online retail dataset using SQL aggregation techniques. It combines **date extraction, grouping, filtering, and multi-table joins** to derive meaningful insights on **revenue and order volume**.

---

## Objectives

* Extract **month and year** from order dates
* Calculate **monthly revenue** using aggregation
* Measure **order volume** using distinct counting
* Filter results for **specific time periods**
* Identify **top-performing months**
* Handle **NULL values safely**
* Apply **multi-table joins with GROUP BY**

---

## Dataset Used

### Online Sales Dataset

**orders**

* order_id
* order_date
* amount
* product_id

**order_items**

* order_id
* product_id
* quantity
* unit_price

**products**

* product_id
* product_name

The dataset contains **50 rows** spanning **January to June 2024** across categories such as **Electronics, Clothing, Books, Home, and Accessories**.

---

## Work Completed

### Database Setup

* Created tables with relevant schema
* Inserted **50 transactional records**
* Included **NULL values** for practice
* Verified data integrity before analysis

---

### Month Extraction

* Used **EXTRACT(MONTH FROM order_date)**
* Derived month values (1–12)
* Observed row-level output without grouping

---

### Grouping by Year and Month

* Used **EXTRACT(YEAR FROM order_date)**
* Applied **GROUP BY on year and month**
* Learned that **aliases cannot be used in GROUP BY**
* Aggregated data into **time-based summaries**

---

### Monthly Revenue Calculation

* Applied **SUM(amount)** to compute revenue
* Converted raw transactions into **monthly totals**

---

### Order Volume Counting

* Used **COUNT(DISTINCT order_id)**
* Compared with **COUNT(*)**
* Understood handling of **duplicates and NULLs**

---

### Sorting Results

* Used **ORDER BY** for chronological sorting
* Sorted by **revenue (descending)**
* Applied **LIMIT** for top results

---

### Filtering by Time Period

* Used **WHERE clause** for Q1 and Q2 filtering
* Compared **quarter-wise performance**

---

### Multi-table JOIN with Aggregations

* Joined **orders, order_items, and products**
* Calculated revenue using **quantity × unit_price**
* Debugged errors using **DESCRIBE**
* Fixed incorrect **GROUP BY issues**
* Achieved **clean product-month level aggregation**

---

## Concepts Covered

* **EXTRACT()** for date transformation
* **GROUP BY** for aggregation
* **SUM()** for revenue
* **COUNT(DISTINCT)** vs **COUNT(*)**
* **ORDER BY** for sorting
* **WHERE** for filtering
* **COALESCE()** for NULL handling
* **JOIN operations** with aggregation
* **Query debugging techniques**

---

## Key Findings

* Revenue shows a **consistent upward trend** from January to April
* **April** recorded the highest revenue
* **Electronics category** contributed the most revenue
* Order volume remained **stable across months**
* A **small set of products drives most revenue**

---

## Tools and Technologies

* **SQL (MySQL)**
* **MySQL Workbench**

---

## Future Enhancements

* Add **category-wise monthly analysis**
* Calculate **month-over-month growth**
* Use **window functions** for advanced insights
* Build **Power BI or Tableau dashboard**

---

## Conclusion

This project demonstrates the use of **core SQL techniques** for time-series analysis, including aggregation, filtering, and joins. It reflects a **real-world analytical workflow**, making it highly relevant for **data analyst roles**.

---
