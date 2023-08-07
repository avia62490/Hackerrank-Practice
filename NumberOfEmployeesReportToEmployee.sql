-- For this problem, we will consider a manager an employee who has at least 1 other employee reporting to them.

-- Write an SQL query to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.

-- Return the result table ordered by employee_id.

-- The query result format is in the following example.

-- Example 1:

-- Input: 
-- Employees table:
-- +-------------+---------+------------+-----+
-- | employee_id | name    | reports_to | age |
-- +-------------+---------+------------+-----+
-- | 9           | Hercy   | null       | 43  |
-- | 6           | Alice   | 9          | 41  |
-- | 4           | Bob     | 9          | 36  |
-- | 2           | Winston | null       | 37  |
-- +-------------+---------+------------+-----+
-- Output: 
-- +-------------+-------+---------------+-------------+
-- | employee_id | name  | reports_count | average_age |
-- +-------------+-------+---------------+-------------+
-- | 9           | Hercy | 2             | 39          |
-- +-------------+-------+---------------+-------------+

-- # Write your MySQL query statement below
SELECT
  e1.employee_id,
  e1.name,
  COUNT(e2.reports_to) AS reports_count,
  ROUND(AVG(e2.age), 0) AS average_age
FROM employees e1, employees e2
WHERE e2.reports_to = e1.employee_id 
GROUP BY e1.employee_id
HAVING reports_count > 0
ORDER BY e1.employee_id