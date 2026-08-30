/* ================================================================
   HackerRank | SQL | Aggregation
   Problem #28 - Top Earners                        Difficulty: Medium
   https://www.hackerrank.com/challenges/earnings-of-employees/problem
   ----------------------------------------------------------------
   PROBLEM
   An employee's total earnings = salary * months. Find the maximum
   total earnings, and the number of employees who have that maximum.
   Print the two values as space-separated integers.

   Employee table
     employee_id  INTEGER
     name         STRING
     months       INTEGER
     salary       INTEGER
   ----------------------------------------------------------------
   Note: MS SQL Server uses TOP (not LIMIT). Group by the earnings
   expression, count per group, order descending, take the top row.
   ================================================================ */

-- SOLUTION
SELECT TOP 1 salary * months AS earnings, COUNT(*)
FROM Employee
GROUP BY salary * months
ORDER BY earnings DESC;
