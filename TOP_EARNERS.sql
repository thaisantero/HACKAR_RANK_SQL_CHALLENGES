### This Query findes the maximum total earnings for all employees as well as the total 
### number of employees who have maximum total earnings.

SELECT max(months * salary), count(months * salary) 
FROM Employee 
WHERE (months * salary) = (SELECT max(months * salary) FROM Employee)
