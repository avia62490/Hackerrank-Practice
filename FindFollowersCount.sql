-- Write an SQL query that will, for each user, return the number of followers.

-- Return the result table ordered by user_id in ascending order.

-- The query result format is in the following example.

-- Example 1:

-- Input: 
-- Followers table:
-- +---------+-------------+
-- | user_id | follower_id |
-- +---------+-------------+
-- | 0       | 1           |
-- | 1       | 0           |
-- | 2       | 0           |
-- | 2       | 1           |
-- +---------+-------------+
-- Output: 
-- +---------+----------------+
-- | user_id | followers_count|
-- +---------+----------------+
-- | 0       | 1              |
-- | 1       | 1              |
-- | 2       | 2              |
-- +---------+----------------+

-- # Write your MySQL query statement below
SELECT
  user_id,
  COUNT(user_id) AS followers_count
FROM followers
GROUP BY user_id
ORDER BY user_id