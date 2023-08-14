-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
/*
Enter your query here.
*/
SELECT DISTINCT city FROM station
WHERE city REGEXP '[aeiou]$';
