
-- ============================================================
-- E-commerce Business Analytics
-- SQL Basics and Exploratory Analysis
-- Database: SQLite
-- Table: ecommerce_sales
-- ============================================================


-- 1. DATASET INSPECTION
-- Inspect the entire dataset during initial exploration
SELECT *
FROM ecommerce_sales;


-- Count the total number of records
SELECT COUNT(*) AS total_records
FROM ecommerce_sales;


-- 2. TRANSACTION DISTRIBUTION
-- Count records across each product category
SELECT
    product_category,
    COUNT(*) AS transaction_count
FROM ecommerce_sales
GROUP BY product_category
ORDER BY transaction_count DESC;


-- Count records across each region
SELECT
    region,
    COUNT(*) AS transaction_count
FROM ecommerce_sales
GROUP BY region
ORDER BY transaction_count DESC;


-- Count transactions by payment method
SELECT
    payment_method,
    COUNT(*) AS transaction_count
FROM ecommerce_sales
GROUP BY payment_method
ORDER BY transaction_count DESC;


-- 3. REVENUE ANALYSIS
-- Top 3 product categories by total revenue
SELECT
    product_category,
    SUM(revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY product_category
ORDER BY total_revenue DESC
LIMIT 3;


-- 3 individual transactions with the lowest revenue
SELECT
    order_id,
    product_category,
    region,
    revenue
FROM ecommerce_sales
ORDER BY revenue ASC
LIMIT 3;


-- Average revenue per transaction across product categories
SELECT
    product_category,
    ROUND(AVG(revenue), 2) AS avg_revenue
FROM ecommerce_sales
GROUP BY product_category
ORDER BY avg_revenue DESC;


-- Total revenue by product category and region
SELECT
    product_category,
    region,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY product_category, region
ORDER BY total_revenue DESC;


-- 4. CUSTOMER EXPERIENCE
-- Product categories with an average customer rating above 3
SELECT
    product_category,
    ROUND(AVG(customer_rating), 2) AS avg_rating
FROM ecommerce_sales
GROUP BY product_category
HAVING AVG(customer_rating) > 3
ORDER BY avg_rating DESC;


-- 5. TRANSACTION-LEVEL FILTERING
-- Transactions with revenue above 3500 and rating above 3.5
SELECT
    order_id,
    customer_id,
    revenue,
    customer_rating
FROM ecommerce_sales
WHERE revenue > 3500
  AND customer_rating > 3.5
ORDER BY revenue DESC;


-- Transactions with revenue above 4000 or rating above 4.5
SELECT
    order_id,
    customer_id,
    revenue,
    customer_rating
FROM ecommerce_sales
WHERE revenue > 4000
   OR customer_rating > 4.5
ORDER BY revenue DESC;


-- Average revenue by category, excluding the Home category
SELECT
    product_category,
    ROUND(AVG(revenue), 2) AS avg_revenue
FROM ecommerce_sales
WHERE product_category <> 'Home'
GROUP BY product_category
ORDER BY avg_revenue DESC;


-- Beauty product revenue by region
SELECT
    region,
    SUM(revenue) AS total_revenue
FROM ecommerce_sales
WHERE product_category = 'Beauty'
GROUP BY region
ORDER BY total_revenue DESC;


-- Transactions with revenue between 3800 and 4000 inclusive
SELECT
    order_id,
    customer_id,
    revenue
FROM ecommerce_sales
WHERE revenue BETWEEN 3800 AND 4000
ORDER BY revenue DESC;


-- Transactions in the North and South regions
SELECT
    order_id,
    region,
    product_category,
    revenue
FROM ecommerce_sales
WHERE region IN ('North', 'South');


-- Transactions outside the North and South regions
SELECT
    order_id,
    region,
    product_category,
    revenue
FROM ecommerce_sales
WHERE region NOT IN ('North', 'South');


-- 6. PAYMENT METHOD ANALYSIS
-- Count transactions made using Card or COD
SELECT
    payment_method,
    COUNT(*) AS transaction_count
FROM ecommerce_sales
WHERE payment_method IN ('Card', 'COD')
GROUP BY payment_method
ORDER BY transaction_count DESC;


-- 7. REVENUE SEGMENTATION
-- Classify transactions into revenue bands
-- Thresholds are illustrative and analyst-defined
SELECT
    order_id,
    revenue,
    CASE
        WHEN revenue >= 3000 THEN 'High'
        WHEN revenue >= 1500 THEN 'Medium'
        ELSE 'Low'
    END AS revenue_band
FROM ecommerce_sales;


-- 8. REGIONAL PERFORMANCE
-- Regions with total revenue above 100000
SELECT
    region,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY region
HAVING SUM(revenue) > 100000
ORDER BY total_revenue DESC;


-- 9. DATA QUALITY CHECKS
-- Check for missing customer ratings
SELECT
    COUNT(*) AS total_records,
    COUNT(customer_rating) AS ratings_present,
    COUNT(*) - COUNT(customer_rating) AS missing_ratings
FROM ecommerce_sales;


-- Display records with missing customer ratings, if any
SELECT
    order_id,
    customer_id,
    customer_rating
FROM ecommerce_sales
WHERE customer_rating IS NULL;
