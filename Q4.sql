USE cardealership;

-- QUESTION 4: 
SELECT * FROM dealerships
JOIN vehicles ON dealerships.dealership_id = vehicles.VIN
WHERE VIN = '5YJRE11B081000394';