USE cardealership;

-- STEP 4 : QUESTION 1: 

SELECT * FROM dealerships
JOIN vehicles ON dealership.dealership_id = vehicles.VIN;