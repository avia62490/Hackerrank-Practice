-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

-- Input Format

-- The STATION table is described as follows:

-- Station.jpg

-- where LAT_N is the northern latitude and LONG_W is the western longitude.
/*
Enter your query here.
*/
SELECT DISTINCT city FROM station
WHERE city REGEXP '^[AEIOU]'