-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
/*
Enter your query here.
*/
SELECT DISTINCT city FROM station
WHERE city REGEXP '^[AEIOU]' AND city REGEXP '[aeiou]$'