-- ============================================================================
-- E-Commerce Database - Analytical Queries
-- Useful SQL queries for data analysis and business intelligence
-- ============================================================================

-- ============================================================================
-- 1. CUSTOMER ANALYSIS QUERIES
-- ============================================================================

-- Query 1.1: Customer Lifetime Value (CLV) - RFM Analysis
-- Shows Recency (last purchase), Frequency (order count), Monetary (total spent)
SELECT 
    customer_id,
    CONCAT(first_name, ' ', last_name) as customer_name,
    email,
    customer_since,
    DATEDIFF(CURDATE(), MAX(o.order_date)) as days_since_last_purchase,
    COUNT(DISTINCT o.order_id) as total_orders,
    SUM(o.final_total) as total_spent,
    AVG(o.final_total) as avg_order_value,
    MAX(o.order_date) as last_purchase_date,
    CASE 
        WHEN DATEDIFF(CURDATE(), MAX(o.order_date)) <= 30 THEN 'Active'
        WHEN DATEDIFF(CURDATE(), MAX(o.order_date)) <= 90 THEN 'At Risk'
        ELSE 'Inactive'
    END as customer_status
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.email, c.customer_since
ORDER BY total_spent DESC;

-- Query 1.2: Customer Segmentation by Spending
-- Segment customers into tiers based on spending
SELECT 
    customer_id,
    CONCAT(first_name, ' ', last_name) as customer_name,
    SUM(o.final_total) as total_spending,
    CASE 
        WHEN SUM(o.final_total) >= 1000 THEN 'VIP'
        WHEN SUM(o.final_total) >= 500 THEN 'Gold'
        WHEN SUM(o.final_total) >= 200 THEN 'Silver'
        ELSE 'Bronze'
    END as customer_tier,
    COUNT(DISTINCT o.order_id) as order_count
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spending DESC;

-- Query 1.3: New Customers (Last 30 days)
SELECT 
    customer_id,
    CONCAT(first_name, ' ', last_name) as customer_name,
    email,
    customer_since,
    COUNT(o.order_id) as orders_made,
    COALESCE(SUM(o.final_total), 0) as total_spent
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE customer_since >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
GROUP BY c.customer_id, c.first_name, c.last_name, c.email, c.customer_since
ORDER BY customer_since DESC;

-- ============================================================================
-- 2. PRODUCT ANALYSIS QUERIES
-- ============================================================================

-- Query 2.1: Top Selling Products
-- Products ranked by quantity sold and revenue
SELECT 
    p.product_id,
    p.product_name,
    c.category_name,
    p.price,
    COUNT(DISTINCT oi.order_item_id) as times_sold,
    SUM(oi.quantity) as total_quantity_sold,
    SUM(oi.line_total) as total_revenue,
    ROUND(AVG(COALESCE(r.rating, 0)), 2) as avg_rating,
    COUNT(DISTINCT r.review_id) as review_count
FROM products p
LEFT JOIN categories c ON p.category_id = c.category_id
LEFT JOIN order_items oi ON p.product_id = oi.product_id
LEFT JOIN reviews r ON p.product_id = r.product_id
GROUP BY p.product_id, p.product_name, c.category_name, p.price
ORDER BY total_revenue DESC;

-- Query 2.2: Product Performance with Profit Analysis
-- Shows profit margin and profitability for each product
SELECT 
    p.product_id,
    p.product_name,
    p.price,
    p.cost,
    (p.price - p.cost) as profit_per_unit,
    ROUND((p.price - p.cost) / p.price * 100, 2) as profit_margin_percent,
    SUM(oi.quantity) as units_sold,
    SUM(oi.quantity) * (p.price - p.cost) as total_profit
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name, p.price, p.cost
ORDER BY total_profit DESC;

-- Query 2.3: Low Stock Alert
-- Products with inventory running low
SELECT 
    product_id,
    product_name,
    category_id,
    stock_quantity,
    price,
    CASE 
        WHEN stock_quantity <= 50 THEN 'Critical - Reorder Now'
        WHEN stock_quantity <= 100 THEN 'Low - Monitor'
        ELSE 'Adequate'
    END as stock_status
FROM products
WHERE stock_quantity <= 100
ORDER BY stock_quantity ASC;

-- Query 2.4: Products by Category with Metrics
-- Category-level analysis
SELECT 
    c.category_id,
    c.category_name,
    COUNT(DISTINCT p.product_id) as product_count,
    COUNT(DISTINCT oi.order_item_id) as total_items_sold,
    SUM(oi.line_total) as category_revenue,
    ROUND(AVG(COALESCE(r.rating, 0)), 2) as avg_rating
FROM categories c
LEFT JOIN products p ON c.category_id = p.category_id
LEFT JOIN order_items oi ON p.product_id = oi.product_id
LEFT JOIN reviews r ON p.product_id = r.product_id
GROUP BY c.category_id, c.category_name
ORDER BY category_revenue DESC;

-- ============================================================================
-- 3. ORDER & SALES ANALYSIS QUERIES
-- ============================================================================

-- Query 3.1: Daily Sales Summary
-- Revenue, order count, and average order value by day
SELECT 
    o.order_date,
    COUNT(DISTINCT o.order_id) as order_count,
    SUM(o.final_total) as daily_revenue,
    ROUND(AVG(o.final_total), 2) as avg_order_value,
    SUM(o.order_total) as subtotal,
    SUM(o.discount_amount) as total_discounts,
    SUM(o.tax_amount) as total_tax,
    SUM(o.shipping_cost) as total_shipping
FROM orders o
GROUP BY o.order_date
ORDER BY o.order_date DESC;

-- Query 3.2: Monthly Revenue Trend
-- Revenue analysis by month with growth metrics
SELECT 
    YEAR(o.order_date) as year,
    MONTH(o.order_date) as month,
    DATE_TRUNC(o.order_date, MONTH) as month_start,
    COUNT(DISTINCT o.order_id) as orders,
    SUM(o.final_total) as revenue,
    ROUND(AVG(o.final_total), 2) as avg_order_value,
    COUNT(DISTINCT o.customer_id) as unique_customers
FROM orders o
GROUP BY YEAR(o.order_date), MONTH(o.order_date)
ORDER BY year DESC, month DESC;

-- Query 3.3: Order Status Distribution
-- Shows breakdown of orders by status
SELECT 
    order_status,
    COUNT(DISTINCT order_id) as order_count,
    ROUND(COUNT(DISTINCT order_id) * 100 / (SELECT COUNT(*) FROM orders), 2) as percentage,
    SUM(final_total) as total_value,
    AVG(final_total) as avg_value
FROM orders
GROUP BY order_status
ORDER BY order_count DESC;

-- Query 3.4: Orders with Discounts vs Without
-- Analysis of discount impact on orders
SELECT 
    CASE WHEN discount_amount > 0 THEN 'Discounted' ELSE 'No Discount' END as discount_status,
    COUNT(DISTINCT order_id) as order_count,
    SUM(order_total) as subtotal,
    SUM(discount_amount) as total_discounts,
    SUM(final_total) as final_revenue,
    ROUND(AVG(final_total), 2) as avg_order_value,
    ROUND(SUM(discount_amount) / SUM(order_total) * 100, 2) as discount_rate_percent
FROM orders
GROUP BY discount_status;

-- ============================================================================
-- 4. PAYMENT ANALYSIS QUERIES
-- ============================================================================

-- Query 4.1: Payment Method Preference
-- Which payment methods are most popular
SELECT 
    payment_method,
    COUNT(DISTINCT payment_id) as transaction_count,
    SUM(amount_paid) as total_amount,
    ROUND(AVG(amount_paid), 2) as avg_transaction,
    COUNT(CASE WHEN payment_status = 'Completed' THEN 1 END) as completed_payments,
    COUNT(CASE WHEN payment_status = 'Pending' THEN 1 END) as pending_payments,
    ROUND(COUNT(CASE WHEN payment_status = 'Completed' THEN 1 END) * 100 / COUNT(*), 2) as success_rate
FROM payments
GROUP BY payment_method
ORDER BY total_amount DESC;

-- Query 4.2: Payment Status Overview
-- Payment completion status analysis
SELECT 
    payment_status,
    COUNT(DISTINCT payment_id) as count,
    SUM(amount_paid) as total,
    ROUND(COUNT(*) * 100 / (SELECT COUNT(*) FROM payments), 2) as percentage
FROM payments
GROUP BY payment_status;

-- ============================================================================
-- 5. REVIEW & RATING ANALYSIS QUERIES
-- ============================================================================

-- Query 5.1: Average Product Ratings
-- Products ranked by customer ratings
SELECT 
    p.product_id,
    p.product_name,
    COUNT(r.review_id) as review_count,
    ROUND(AVG(r.rating), 2) as avg_rating,
    SUM(CASE WHEN r.rating = 5 THEN 1 ELSE 0 END) as five_star_count,
    SUM(CASE WHEN r.rating = 4 THEN 1 ELSE 0 END) as four_star_count,
    SUM(CASE WHEN r.rating = 3 THEN 1 ELSE 0 END) as three_star_count,
    SUM(CASE WHEN r.rating = 2 THEN 1 ELSE 0 END) as two_star_count,
    SUM(CASE WHEN r.rating = 1 THEN 1 ELSE 0 END) as one_star_count
FROM products p
LEFT JOIN reviews r ON p.product_id = r.product_id
GROUP BY p.product_id, p.product_name
HAVING COUNT(r.review_id) > 0
ORDER BY avg_rating DESC;

-- Query 5.2: Helpful Reviews
-- Most helpful reviews based on helpful_count
SELECT 
    r.review_id,
    p.product_name,
    CONCAT(c.first_name, ' ', c.last_name) as customer_name,
    r.rating,
    r.review_text,
    r.helpful_count,
    r.review_date
FROM reviews r
JOIN products p ON r.product_id = p.product_id
JOIN customers c ON r.customer_id = c.customer_id
ORDER BY r.helpful_count DESC
LIMIT 20;

-- Query 5.3: Review Trends
-- Review count and average rating by product
SELECT 
    MONTH(review_date) as month,
    COUNT(review_id) as reviews_count,
    ROUND(AVG(rating), 2) as avg_rating,
    SUM(helpful_count) as total_helpful
FROM reviews
GROUP BY MONTH(review_date)
ORDER BY month;

-- ============================================================================
-- 6. ADVANCED ANALYTICAL QUERIES (CTEs & Window Functions)
-- ============================================================================

-- Query 6.1: Customer Ranking by Spending (Window Function)
-- Rank customers by total spending with running total
SELECT 
    customer_id,
    CONCAT(first_name, ' ', last_name) as customer_name,
    total_spent,
    RANK() OVER (ORDER BY total_spent DESC) as spending_rank,
    ROW_NUMBER() OVER (ORDER BY total_spent DESC) as row_num,
    ROUND(total_spent * 100 / SUM(total_spent) OVER (), 2) as percent_of_total_sales
FROM (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        SUM(o.final_total) as total_spent
    FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
) customer_sales
LIMIT 20;

-- Query 6.2: Cohort Analysis - Customer Cohorts by Signup Month
-- Analyze customer behavior by signup cohort
WITH customer_cohorts AS (
    SELECT 
        customer_id,
        DATE_TRUNC(customer_since, MONTH) as cohort_month,
        MONTH(customer_since) as signup_month
    FROM customers
),
customer_orders AS (
    SELECT 
        cc.customer_id,
        cc.cohort_month,
        DATE_TRUNC(o.order_date, MONTH) as order_month,
        COUNT(DISTINCT o.order_id) as order_count,
        SUM(o.final_total) as revenue
    FROM customer_cohorts cc
    LEFT JOIN orders o ON cc.customer_id = o.customer_id
    GROUP BY cc.customer_id, cc.cohort_month, order_month
)
SELECT 
    cohort_month,
    COUNT(DISTINCT customer_id) as cohort_size,
    ROUND(AVG(order_count), 2) as avg_orders_per_customer,
    ROUND(AVG(revenue), 2) as avg_revenue_per_customer,
    SUM(revenue) as total_cohort_revenue
FROM customer_orders
GROUP BY cohort_month
ORDER BY cohort_month DESC;

-- Query 6.3: Order Analysis with Product Mix
-- Detailed order analysis showing products purchased
SELECT 
    o.order_id,
    o.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) as customer_name,
    o.order_date,
    COUNT(DISTINCT oi.product_id) as product_variety,
    SUM(oi.quantity) as total_items,
    SUM(oi.line_total) as order_subtotal,
    o.discount_amount,
    o.tax_amount,
    o.final_total,
    STRING_AGG(p.product_name, ', ') as products_purchased
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
LEFT JOIN order_items oi ON o.order_id = oi.order_id
LEFT JOIN products p ON oi.product_id = p.product_id
GROUP BY o.order_id, o.customer_id, c.first_name, c.last_name, 
         o.order_date, o.discount_amount, o.tax_amount, o.final_total
ORDER BY o.order_date DESC;

-- Query 6.4: Churn Analysis - Inactive Customers
-- Identify customers who haven't purchased recently
WITH customer_activity AS (
    SELECT 
        c.customer_id,
        CONCAT(c.first_name, ' ', c.last_name) as customer_name,
        c.email,
        c.customer_since,
        MAX(o.order_date) as last_purchase_date,
        DATEDIFF(CURDATE(), MAX(o.order_date)) as days_inactive,
        COUNT(DISTINCT o.order_id) as lifetime_orders,
        SUM(o.final_total) as lifetime_value
    FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name, c.email, c.customer_since
)
SELECT 
    customer_id,
    customer_name,
    email,
    last_purchase_date,
    days_inactive,
    lifetime_orders,
    lifetime_value,
    CASE 
        WHEN days_inactive > 180 THEN 'Churned'
        WHEN days_inactive > 90 THEN 'At High Risk'
        WHEN days_inactive > 30 THEN 'At Risk'
        ELSE 'Active'
    END as churn_status
FROM customer_activity
WHERE days_inactive > 30
ORDER BY days_inactive DESC;

-- ============================================================================
-- 7. BUSINESS METRICS DASHBOARD QUERIES
-- ============================================================================

-- Query 7.1: Key Performance Indicators (KPIs)
-- Overall business metrics
SELECT 
    COUNT(DISTINCT c.customer_id) as total_customers,
    COUNT(DISTINCT o.order_id) as total_orders,
    SUM(o.final_total) as total_revenue,
    ROUND(AVG(o.final_total), 2) as avg_order_value,
    ROUND(SUM(o.final_total) / COUNT(DISTINCT c.customer_id), 2) as revenue_per_customer,
    COUNT(DISTINCT MONTH(o.order_date)) as active_months,
    ROUND(COUNT(DISTINCT o.order_id) / COUNT(DISTINCT c.customer_id), 2) as avg_orders_per_customer
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- Query 7.2: Weekly Performance
-- Sales metrics by week
SELECT 
    WEEK(order_date) as week_num,
    YEAR(order_date) as year,
    COUNT(DISTINCT order_id) as weekly_orders,
    SUM(final_total) as weekly_revenue,
    COUNT(DISTINCT customer_id) as unique_customers,
    ROUND(SUM(final_total) / COUNT(DISTINCT order_id), 2) as avg_order_value
FROM orders
GROUP BY WEEK(order_date), YEAR(order_date)
ORDER BY year DESC, week_num DESC;

-- Query 7.3: Customer Acquisition & Retention
-- Track new customer acquisition and repeat purchase rate
SELECT 
    DATE_TRUNC(customer_since, MONTH) as acquisition_month,
    COUNT(DISTINCT customer_id) as new_customers,
    SUM(CASE WHEN total_orders > 1 THEN 1 ELSE 0 END) as repeat_customers,
    ROUND(SUM(CASE WHEN total_orders > 1 THEN 1 ELSE 0 END) * 100 / COUNT(*), 2) as retention_rate,
    SUM(lifetime_value) as total_clv
FROM customers
GROUP BY DATE_TRUNC(customer_since, MONTH)
ORDER BY acquisition_month DESC;

-- ============================================================================
-- SQL SKILLS SHOWCASED IN THESE QUERIES:
-- ============================================================================
-- ✓ Aggregate Functions: COUNT, SUM, AVG, MAX, MIN
-- ✓ JOINs: INNER JOIN, LEFT JOIN, multiple joins
-- ✓ GROUP BY & HAVING clauses
-- ✓ CASE WHEN for conditional logic
-- ✓ Window Functions: ROW_NUMBER, RANK, DENSE_RANK, SUM OVER
-- ✓ CTEs (WITH clause) for complex queries
-- ✓ Subqueries & nested queries
-- ✓ Date functions: DATE_TRUNC, MONTH, YEAR, DATEDIFF
-- ✓ String aggregation: STRING_AGG, CONCAT
-- ✓ COALESCE for NULL handling
-- ✓ ORDER BY & LIMIT
-- ============================================================================
