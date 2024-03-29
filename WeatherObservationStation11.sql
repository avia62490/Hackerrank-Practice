-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
/*
Enter your query here.
*/
SELECT DISTINCT city FROM station
WHERE city NOT REGEXP '^[AEIOU]' OR city NOT REGEXP '[aeiou]$'