USE cardealership;

-- QUESTION 3 

SELECT * FROM dealerships
JOIN vehicles ON dealerships.dealership_id = vehicles.VIN
WHERE vin = '5YJRE11B081000394';