Use Online_sales;
SELECT 
    EXTRACT(Month FROM order_date) AS Extracted_Month,
    EXTRACT(YEAR FROM order_date) AS Extracted_Year
FROM
    orders
GROUP BY Extracted_Month , Extracted_Year;

SELECT 
    p.product_name, SUM(oi.quantity* oi.unit_price) Total_revenue,
    EXTRACT(MONTH FROM o.order_date) AS Extracted_Month,
    EXTRACT(YEAR FROM o.order_date) AS Extracted_Year
FROM
    order_items oi 
    JOIN orders o ON oi.order_id=o.order_id
    JOIN products p ON p.product_id=oi.product_id
GROUP BY Product_name,Extracted_Month, Extracted_Year;
SELECT 
    p.product_name, SUM(oi.quantity* oi.unit_price) Total_revenue,COUNT(DISTINCT o.order_id),Count(*),
    EXTRACT(MONTH FROM o.order_date) AS Extracted_Month,
    EXTRACT(YEAR FROM o.order_date) AS Extracted_Year
FROM
    order_items oi 
    JOIN orders o ON oi.order_id=o.order_id
    JOIN products p ON p.product_id=oi.product_id
GROUP BY Product_name,Extracted_Month, Extracted_Year
ORDER BY Extracted_Month;

SELECT 
    p.product_name, SUM(oi.quantity* oi.unit_price) Total_revenue,COUNT(DISTINCT o.order_id),Count(*),
    EXTRACT(MONTH FROM o.order_date) AS Extracted_Month,
    EXTRACT(YEAR FROM o.order_date) AS Extracted_Year
FROM
    order_items oi 
    JOIN orders o ON oi.order_id=o.order_id
    JOIN products p ON p.product_id=oi.product_id
GROUP BY Product_name,Extracted_Month, Extracted_Year
ORDER BY Total_revenue DESC;

SELECT 
    p.product_name, SUM(oi.quantity* oi.unit_price) Total_revenue,COUNT(DISTINCT o.order_id),Count(*),
    EXTRACT(MONTH FROM o.order_date) AS Extracted_Month,
    EXTRACT(YEAR FROM o.order_date) AS Extracted_Year
FROM
    order_items oi 
    JOIN orders o ON oi.order_id=o.order_id
    JOIN products p ON p.product_id=oi.product_id
GROUP BY Product_name,Extracted_Month, Extracted_Year
ORDER BY Total_revenue DESC LIMIT 3;

SELECT 
    p.product_name, SUM(oi.quantity* oi.unit_price) Total_revenue,COUNT(DISTINCT o.order_id),Count(*),
    EXTRACT(MONTH FROM o.order_date) AS Extracted_Month,
    EXTRACT(YEAR FROM o.order_date) AS Extracted_Year
FROM
    order_items oi 
    JOIN orders o ON oi.order_id=o.order_id
    JOIN products p ON p.product_id=oi.product_id
 WHERE EXTRACT(MONTH FROM o.order_date) BETWEEN 1 AND 4    
GROUP BY Product_name,Extracted_Month, Extracted_Year

ORDER BY Total_revenue DESC LIMIT 3;

SELECT order_id,amount FROM order_items
WHERE amount is NULL;