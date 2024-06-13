DROP DATABASE IF EXISTS dealership;

CREATE DATABASE dealership;

USE dealership;

-- Table 1: dealerships
CREATE TABLE dealerships (
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50)  NOT NULL,
    address VARCHAR(50),
    phone VARCHAR(12)
);

-- Table 2: vehicles
CREATE TABLE vehicles (
    VIN VARCHAR(50) PRIMARY KEY,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT,
    sold INT,
    price DOUBLE NOT NULL
);

-- Table 3: inventory
CREATE TABLE inventory (
    dealership_id INT NOT NULL,
    VIN VARCHAR(50),
    PRIMARY KEY (dealership_id, VIN),
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

-- Table 4: sales_contracts
CREATE TABLE sales_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    contract_date DATE,
    customer_name VARCHAR(50) NOT NULL,
    total_price DOUBLE,
    VIN VARCHAR(50),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

-- Populate the tables with sample data

INSERT INTO dealerships (name, address, phone) VALUES
('Tesla Pittsburgh', '1001 Clairton Blvd', '469-2100'),
('Acura Spitzer', '2483 Lebanon Church Rd', '466-1466'),
('Cadillac South Hills', '2409 Washington Rd', '754-0560'),
('Mercedes-Benz of Pittsburgh', '4709 Baum Blvd', '683-5000'),
('Audi Pittsburgh', '2050 Liberty Ave', '516-4020'),
('Bentley Pittsburgh', '15001 Perry Hwy', '344-6010');

INSERT INTO vehicles (VIN, make, model, year, sold, price) VALUES 
('JH4CU26629C203149', 'Acura', 'TSX', 2009, 0, 30000.00),
('SCBDP3ZA0AC063709', 'Bentley', 'Continental GTC Speed', 2020, 0, 230000.00),
('5YJRE11B081000394', 'Tesla', 'Roadster', 2008, 0, 5000.00),
('4JGAB54E2YA207931', 'Mercedes Benz', 'M Class', 2000, 0, 80000.00),
('1G6AF5S30E0014207', 'Cadillac', 'ATS', 2014, 0, 75000.00),
('WUAAUAFG2EN000498', 'Audi', 'R8', 2014, 0, 65000.00);

INSERT INTO inventory (dealership_id, VIN) VALUES
(1, 'JH4CU26629C203149'),
(2, 'SCBDP3ZA0AC063709'),
(3, '5YJRE11B081000394'), 
(4, '4JGAB54E2YA207931'),
(5, '1G6AF5S30E0014207'),
(6, 'WUAAUAFG2EN000498');

INSERT INTO sales_contracts (contract_date, customer_name, total_price, VIN) VALUES
('2024-06-13', 'John Doe', 30000.00, 'JH4CU26629C203149'),
('2024-06-03', 'Anita Bastola', 5000.00, 'SCBDP3ZA0AC063709'),
('2011-03-01', 'Bob Hunter', 8000.00, '5YJRE11B081000394'),
('2010-07-09', 'Megan Riley', 4000.00, '4JGAB54E2YA207931'),
('2016-05-04', 'Duka Sharma', 7000.00, '1G6AF5S30E0014207'),
('2009-03-05', 'Divyan Bhattarai', 4000.00, 'WUAAUAFG2EN000498');






















