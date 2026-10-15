-- Entire dataset check
SELECT * 
FROM ecommerce_sales;

-- Total rows check
SELECT COUNT(*) as total_record
FROM ecommerce_sales;

-- Number of order across each product category
SELECT product_category, COUNT(*) as item_count
FROM ecommerce_sales
GROUP BY product_category;

-- Number of order across each region
SELECT region, COUNT(*) as item_count
FROM ecommerce_sales
GROUP BY region;

-- Number of order across each payment method
SELECT payment_method, COUNT(*) as transaction_count
FROM ecommerce_sales
GROUP BY payment_method;

-- Top 3 Product Category, Region with highest revenue
SELECT product_category, region, revenue
FROM ecommerce_sales
ORDER BY revenue DESC
LIMIT 3;

-- Lowest 3 Product Category, Region with least revenue
SELECT product_category, region, revenue
FROM ecommerce_sales
ORDER BY revenue ASC
LIMIT 3;

-- Average revenue across each product category
SELECT product_category, AVG(revenue) as avg_revenue
FROM ecommerce_sales
GROUP BY product_category;

-- Total revenue with respect to each product category and region
SELECT product_category, region, SUM(revenue)
FROM ecommerce_sales
GROUP BY product_category, region;

-- Product category with average rating greater than 3
SELECT product_category, ROUND(AVG(customer_rating),2) as avg_rating
FROM ecommerce_sales
GROUP BY product_category
HAVING AVG(customer_rating) > 3;

-- Customer Id revenue greater than 3500 and rating over 3.5
SELECT customer_id, revenue, customer_rating
FROM ecommerce_sales
WHERE revenue > 3500 AND customer_rating > 3.5;

-- Customer Id with revenue over 4000 or rating over 4
SELECT customer_id, revenue, customer_rating
FROM ecommerce_sales
WHERE revenue > 4000 OR customer_rating > 4.5;

-- Average revenue of each product category other than Home
SELECT
    product_category,
    ROUND(AVG(revenue),2) AS avg_revenue
FROM ecommerce_sales
WHERE product_category NOT LIKE 'Ho%'
GROUP BY product_category
ORDER BY avg_revenue DESC;

-- Data with Beauty Product category in each region with total revenue in descending order
SELECT region, product_category, SUM(revenue) as total_revenue
FROM ecommerce_sales
WHERE product_category LIKE '%Beauty%'
GROUP BY region
ORDER BY SUM(revenue) DESC;

-- Customer Id's with Revenue generating between 3800 and 4000
SELECT customer_id, revenue
FROM ecommerce_sales
WHERE revenue BETWEEN 3800 AND 4000;

-- Revenue generated in the South and North region
SELECT region, product_category, revenue
FROM ecommerce_sales
WHERE region IN ('North', 'South');

-- Revenue generated in region other than South and North
SELECT region, product_category, revenue
FROM ecommerce_sales
WHERE region NOT IN ('North','South');

-- Verifying the column with no rating
SELECT customer_id, customer_rating
FROM ecommerce_sales
WHERE customer_rating IS NULL;

-- Transaction made using COD and Card
SELECT payment_method, COUNT(payment_method) as total_payments
FROM ecommerce_sales
WHERE payment_method in ('Card','COD');

-- High, Medium and Low ranking based on the revenue
SELECT
    order_id,
    revenue,
    CASE
        WHEN revenue >= 3000 THEN 'High'
        WHEN revenue >= 1500 THEN 'Medium'
        ELSE 'Low'
    END AS revenue_band
FROM ecommerce_sales;

-- Regions with total revenue over 100,000
SELECT region, SUM(revenue) as total_revenue
FROM ecommerce_sales
GROUP BY region
HAVING SUM(revenue) > 100000;

-- Replacing the missing customer rating with 0
SELECT 
    customer_id,
    COALESCE(customer_rating,0) AS rating_display
FROM ecommerce_sales;