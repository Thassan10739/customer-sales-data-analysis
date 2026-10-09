-- Customer Sales Data Analysis
-- Tool: SQLite
-- Purpose: Analyze customer purchasing behavior, sales performance,
-- regional performance, product performance, and monthly sales trends.

-- 1. Overall Sales Performance
SELECT
    COUNT(order_id) AS total_orders,
    SUM(quantity * unit_price) AS total_revenue,
    ROUND(SUM(quantity * unit_price) * 1.0 / COUNT(order_id), 2) AS average_order_value
FROM orders;

-- 2. Customer Revenue Analysis
SELECT
    c.customer_id,
    c.customer_name,
    c.region,
    COUNT(o.order_id) AS total_orders,
    SUM(o.quantity * o.unit_price) AS total_revenue
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.region
ORDER BY total_revenue DESC;

-- 3. Repeat Customer Analysis
SELECT
    c.customer_name,
    c.region,
    COUNT(o.order_id) AS total_orders,
    SUM(o.quantity * o.unit_price) AS total_revenue
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
GROUP BY c.customer_name, c.region
HAVING COUNT(o.order_id) > 1
ORDER BY total_orders DESC;

-- 4. Regional Sales Analysis
SELECT
    c.region,
    COUNT(o.order_id) AS total_orders,
    SUM(o.quantity * o.unit_price) AS total_revenue
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
GROUP BY c.region
ORDER BY total_revenue DESC;

-- 5. Product Performance Analysis
SELECT
    product,
    SUM(quantity) AS units_sold,
    COUNT(order_id) AS total_orders,
    SUM(quantity * unit_price) AS total_revenue
FROM orders
GROUP BY product
ORDER BY total_revenue DESC;

-- 6. Monthly Sales Analysis
SELECT
    strftime('%Y-%m', order_date) AS sales_month,
    COUNT(order_id) AS total_orders,
    SUM(quantity * unit_price) AS total_revenue
FROM orders
GROUP BY strftime('%Y-%m', order_date)
ORDER BY sales_month;

-- 7. Top Customer Revenue Ranking
SELECT
    c.customer_name,
    c.region,
    SUM(o.quantity * o.unit_price) AS total_revenue
FROM customers AS c
JOIN orders AS o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, c.region
ORDER BY total_revenue DESC;

