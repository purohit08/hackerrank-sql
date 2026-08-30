/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #17 - Salary of Employees                Difficulty: Easy
   https://www.hackerrank.com/challenges/salary-of-employees/problem
   ----------------------------------------------------------------
   PROBLEM
   Write a query that prints a list of employee names (the name
   attribute) for employees in Employee having a salary greater than
   $2000 per month who have been employees for less than 10 months.
   Sort your result by ascending employee_id.

   Employee table
     employee_id  INTEGER
     name         STRING
     months       INTEGER    -- total months employed
     salary       INTEGER    -- monthly salary
   ================================================================ */

-- SOLUTION 1 -- single query (simplest)
SELECT name
FROM Employee
WHERE salary > 2000
  AND months < 10
ORDER BY employee_id;


-- SOLUTION 2 -- derived table (filter months inside, salary outside)
SELECT name
FROM (
    SELECT name, salary, employee_id
    FROM Employee
    WHERE months < 10
) a
WHERE salary > 2000
ORDER BY employee_id;
