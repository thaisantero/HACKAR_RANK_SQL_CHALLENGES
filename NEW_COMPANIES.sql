### This Query  prints the company_code, founder name, total number of lead managers,
### total number of senior managers, total number of managers, and total number of employees. 
### Order your output by ascending company_code.

SELECT COMPANY.COMPANY_CODE, FOUNDER, COUNT(DISTINCT(EMPLOYEE.LEAD_MANAGER_CODE)),COUNT(DISTINCT(EMPLOYEE.SENIOR_MANAGER_CODE)),
COUNT(DISTINCT(EMPLOYEE.MANAGER_CODE)), COUNT(DISTINCT(EMPLOYEE.EMPLOYEE_CODE))
FROM COMPANY
JOIN EMPLOYEE ON COMPANY.COMPANY_CODE=EMPLOYEE.COMPANY_CODE 
GROUP BY COMPANY.COMPANY_CODE, FOUNDER
ORDER BY COMPANY.COMPANY_CODE

