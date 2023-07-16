/*
Folorunsho Atanda
Homework 1
*/
-- Question 1
SELECT dest, distance
FROM flights 
ORDER BY distance DESC
LIMIT 1;
-- The destination that is furthest away is HNL (Honolulu)

-- Question 2 Part 1
SELECT engines, COUNT(engines)
FROM planes
GROUP BY engines
ORDER BY engines;
-- The different number of engines are 1, 2, 3, 4

-- Question 2 Part 2
SELECT tailnum, model, engines, seats
FROM planes
ORDER BY seats DESC
LIMIT 1;
-- The aircraft with the most number of seats is:
-- Tailnum: N670US | Model: 747-451 | Engines: 4 | Seats: 450

-- Question 3
SELECT COUNT(flight)
FROM flights;
-- The number of flights are 857

-- Question 4
SELECT carrier, COUNT(flight) AS 'No. of Flights'
FROM flights
GROUP BY carrier;

-- Question 5
SELECT carrier, COUNT(flight) AS 'No. of Flights'
FROM flights
GROUP BY carrier
ORDER BY COUNT(flight) DESC;

-- Question 6
SELECT carrier, COUNT(flight) AS 'No. of Flights'
FROM flights
GROUP BY carrier
ORDER BY COUNT(flight) DESC
LIMIT 5;

-- Question 7
SELECT carrier, COUNT(flight) AS 'Flights Greater than 1000miles'
FROM flights
WHERE distance >= 1000
GROUP BY carrier
ORDER BY COUNT(flight) DESC
LIMIT 5;

-- Question 8
-- What is the total distance of all airlines on 1/1/2013
SELECT SUM(distance) AS 'Total Distance on 1/1/2013'
FROM flights
WHERE year = 2013 AND month = 1 AND day = 1;
-- Total distance of all airlines on 1/1/2013 is 907196
