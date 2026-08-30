/* ================================================================
   HackerRank | SQL | Basic Select
   Problem #16 - Employee Names                     Difficulty: Easy
   https://www.hackerrank.com/challenges/name-of-employees/problem
   ----------------------------------------------------------------
   PROBLEM
   Write a query that prints a list of employee names (the name
   attribute) from the Employee table in alphabetical order.

   Employee table
     employee_id  INTEGER
     name         STRING
     months       INTEGER    -- total months employed
     salary       INTEGER    -- monthly salary
   ================================================================ */

-- SOLUTION
SELECT name
FROM Employee
ORDER BY name;
