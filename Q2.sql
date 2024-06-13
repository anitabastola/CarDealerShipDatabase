USE cardealership;

--  QUESTION 2: 

SELECT * FROM dealerships
JOIN vehicles ON dealerships.dealership_id = vehicles.VIN
WHERE name = 'Tesla Pittsburgh';
