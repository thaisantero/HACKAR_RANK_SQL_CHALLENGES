### This Query the Manhattan Distance between points  and  and round it to a 
### scale of  decimal places.

SELECT ROUND(ABS(MAX(LAT_N)-MIN(LAT_N)) + ABS(MAX(LONG_W)-MIN(LONG_W)),4)
FROM STATION