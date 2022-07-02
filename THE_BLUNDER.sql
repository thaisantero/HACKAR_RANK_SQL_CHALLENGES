### This Query calculates the amount of error (i.e.:  average monthly salaries),
 and round it up to the next integer.

SELECT CEIL(AVG(SALARY)-AVG(REPLACE(SALARY,'0','')))
FROM EMPLOYEES
