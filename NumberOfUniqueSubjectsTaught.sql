-- Calculate the number of unique subjects each teacher teaches in the university.

-- Return the result table in any order.

-- The result format is shown in the following example.

-- Example 1:

-- Input: 
-- Teacher table:
-- +------------+------------+---------+
-- | teacher_id | subject_id | dept_id |
-- +------------+------------+---------+
-- | 1          | 2          | 3       |
-- | 1          | 2          | 4       |
-- | 1          | 3          | 3       |
-- | 2          | 1          | 1       |
-- | 2          | 2          | 1       |
-- | 2          | 3          | 1       |
-- | 2          | 4          | 1       |
-- +------------+------------+---------+
-- Output:  
-- +------------+-----+
-- | teacher_id | cnt |
-- +------------+-----+
-- | 1          | 2   |
-- | 2          | 4   |
-- +------------+-----+

-- # Write your MySQL query statement below
SELECT
  teacher_id,
  COUNT(DISTINCT subject_id) AS cnt
FROM teacher
GROUP BY teacher_id