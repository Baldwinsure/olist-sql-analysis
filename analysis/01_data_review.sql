/* =========================================================
   01_data_cleaning.sql
   Data quality review of the Olist e-commerce dataset

   Key findings:
   - 8 orders are marked 'delivered' but have no customer delivery date
   - ~610 products have no category name
   - 3 payments have payment_type = 'not_defined'
   - No NULLs in customers, sellers, or order_items
   ========================================================= */


-- =========================================================
-- ORDERS
-- =========================================================

-- Preview the table
SELECT *
FROM olist_orders
LIMIT 5;

-- How many orders are in each status?
SELECT
    order_status,
    COUNT(*) AS order_count
FROM olist_orders
GROUP BY order_status
ORDER BY order_count DESC;

-- Are there orders marked 'delivered' with no delivery date?
SELECT *
FROM olist_orders
WHERE order_status = 'delivered'
  AND order_delivered_customer_date IS NULL;
-- Finding: 8 orders. These will be excluded from delivery-time analysis.


-- =========================================================
-- CUSTOMERS
-- =========================================================

SELECT *
FROM olist_customers
LIMIT 5;

-- Any missing customer values?
SELECT *
FROM olist_customers
WHERE customer_id IS NULL
   OR customer_unique_id IS NULL
   OR customer_city IS NULL
   OR customer_state IS NULL;
-- Finding: No missing customer values


-- =========================================================
-- PRODUCTS
-- =========================================================

SELECT *
FROM olist_products
LIMIT 5;

-- How many products are missing a category?
SELECT COUNT(*) AS missing_category
FROM olist_products
WHERE product_category_name IS NULL;
-- Finding: About 610 products missing category this will be taken into consideration when doing product analysis



-- =========================================================
-- SELLERS
-- =========================================================

SELECT *
FROM olist_sellers
LIMIT 5;

SELECT *
FROM olist_sellers
WHERE seller_zip_code_prefix IS NULL
   OR seller_city IS NULL
   OR seller_state IS NULL;
-- Finding: no NULLs in the sellers table.


-- =========================================================
-- ORDER ITEMS
-- =========================================================

SELECT *
FROM olist_order_items
LIMIT 5;

SELECT *
FROM olist_order_items
WHERE product_id IS NULL
   OR seller_id IS NULL
   OR shipping_limit_date IS NULL
   OR price IS NULL
   OR freight_value IS NULL;
-- Finding: no NULLs in the order items table.


-- =========================================================
-- PAYMENTS
-- =========================================================

SELECT *
FROM olist_order_payments
LIMIT 5;

-- How many payments of each type?
SELECT
    payment_type,
    COUNT(*) AS payment_count
FROM olist_order_payments
GROUP BY payment_type
ORDER BY payment_count DESC;
--Findings: There are 3 not defined payments this will be taken into consideration during cost analysis
