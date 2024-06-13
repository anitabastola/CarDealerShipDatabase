USE cardealership;

-- QUESTION 6:

SELECT * FROM dealerships
JOIN sales_contracts ON dealerships.dealership_id = sales_contracts.VIN
WHERE contract_date = '2024-06-13';
