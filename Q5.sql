USE cardealership;

-- QUESTION 5:
SELECT * FROM dealerships
JOIN vehicles ON dealerships.dealerships_id = vehicles.VIN
WHERE make - 'Tesla';