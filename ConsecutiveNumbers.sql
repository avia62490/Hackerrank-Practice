-- Find all numbers that appear at least three times consecutively.

-- Return the result table in any order.

-- The result format is in the following example.

-- Example 1:

-- Input: 
-- Logs table:
-- +----+-----+
-- | id | num |
-- +----+-----+
-- | 1  | 1   |
-- | 2  | 1   |
-- | 3  | 1   |
-- | 4  | 2   |
-- | 5  | 1   |
-- | 6  | 2   |
-- | 7  | 2   |
-- +----+-----+
-- Output: 
-- +-----------------+
-- | ConsecutiveNums |
-- +-----------------+
-- | 1               |
-- +-----------------+

-- # Write your MySQL query statement below
SELECT
  DISTINCT l1.num AS ConsecutiveNums
FROM logs l1, logs l2, logs l3
WHERE 
  l1.id + 1 = l2.id AND
  l2.id + 1 = l3.id AND
  l1.num = l2.num AND
  l2.num = l3.num
  