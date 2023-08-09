-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
-- The STATION table is described as follows:

-- Station.jpg

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- Sample Input

-- For example, CITY has four entries: DEF, ABC, PQRS and WXY.

-- Sample Output

-- ABC 3
-- PQRS 4

/*
Enter your query here.
*/
(SELECT city, LENGTH(city) FROM station
ORDER BY LENGTH(city), city
LIMIT 1)
UNION
(SELECT city, LENGTH(city) FROM station
ORDER BY LENGTH(city)DESC, city
LIMIT 1)