-- Write an SQL query to report the customer ids from the Customer table that bought all the products in the Product table.

-- Return the result table in any order.

-- The query result format is in the following example.

-- Example 1:

-- Input: 
-- Customer table:
-- +-------------+-------------+
-- | customer_id | product_key |
-- +-------------+-------------+
-- | 1           | 5           |
-- | 2           | 6           |
-- | 3           | 5           |
-- | 3           | 6           |
-- | 1           | 6           |
-- +-------------+-------------+
-- Product table:
-- +-------------+
-- | product_key |
-- +-------------+
-- | 5           |
-- | 6           |
-- +-------------+
-- Output: 
-- +-------------+
-- | customer_id |
-- +-------------+
-- | 1           |
-- | 3           |
-- +-------------+

-- # Write your MySQL query statement below
SELECT
  c.customer_id
FROM customer c
JOIN product p
  ON c.product_key = p.product_key
GROUP BY c.customer_id
HAVING COUNT(DISTINCT c.product_key) = (SELECT(COUNT(p.product_key)) FROM product p)