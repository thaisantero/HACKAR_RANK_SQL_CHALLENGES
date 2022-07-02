### This Query the Western Longitude (LONG_W) for the largest Northern Latitudes (LAT_N) 
### from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.

SELECT ROUND(LONG_W,4) FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION
 WHERE LAT_N<137.2345)