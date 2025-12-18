-- 1. Create Database
CREATE DATABASE BikeStore;

-- 2. Use the Database
USE BikeStore;

-- 3. Create Table
CREATE TABLE Bikes (
    BikeID INT PRIMARY KEY,
    Brand VARCHAR(50),
    Model VARCHAR(50),
    Type VARCHAR(30),
    FrameSize INT,
    WheelSize INT,
    Color VARCHAR(30),
    Price DECIMAL(10,2),
    Stock INT,
    Year INT
);
-- 4. Insert 50 Records
INSERT INTO Bikes VALUES
(1, 'Trek', 'Domane AL 2', 'Road', 54, 700, 'Red', 899.99, 12, 2022),
(2, 'Giant', 'Contend 3', 'Road', 56, 700, 'Blue', 799.99, 10, 2023),
(3, 'Specialized', 'Allez', 'Road', 52, 700, 'Black', 999.99, 8, 2023),
(4, 'Cannondale', 'Synapse', 'Road', 54, 700, 'White', 1099.99, 6, 2024),
(5, 'Scott', 'Speedster', 'Road', 56, 700, 'Green', 1199.99, 5, 2024),
(6, 'Trek', 'Marlin 5', 'Mountain', 17, 29, 'Blue', 599.99, 15, 2022),
(7, 'Giant', 'Talon 1', 'Mountain', 18, 29, 'Black', 799.99, 14, 2023),
(8, 'Specialized', 'Rockhopper', 'Mountain', 17, 27, 'Red', 699.99, 13, 2024),
(9, 'Cannondale', 'Trail 6', 'Mountain', 19, 29, 'Green', 729.99, 9, 2022),
(10, 'Scott', 'Aspect 940', 'Mountain', 18, 29, 'Yellow', 849.99, 7, 2023),
(11, 'Trek', 'Verve 1', 'Hybrid', 18, 700, 'Silver', 499.99, 20, 2023),
(12, 'Giant', 'Escape 3', 'Hybrid', 17, 700, 'Black', 479.99, 25, 2023),
(13, 'Specialized', 'Sirrus', 'Hybrid', 19, 700, 'Blue', 599.99, 18, 2022),
(14, 'Cannondale', 'Quick 6', 'Hybrid', 18, 700, 'White', 649.99, 22, 2023),
(15, 'Scott', 'Sub Cross 50', 'Hybrid', 17, 700, 'Red', 689.99, 17, 2022),
(16, 'Trek', 'FX 1', 'Hybrid', 16, 700, 'Gray', 499.99, 19, 2022),
(17, 'Giant', 'ATX', 'Mountain', 17, 27, 'Orange', 579.99, 11, 2023),
(18, 'Specialized', 'Chisel', 'Mountain', 19, 29, 'Red', 1399.99, 4, 2024),
(19, 'Cannondale', 'Scalpel HT', 'Mountain', 20, 29, 'Black', 1599.99, 3, 2024),
(20, 'Scott', 'Spark RC', 'Mountain', 19, 29, 'Blue', 1999.99, 2, 2024),
(21, 'Trek', 'Checkpoint ALR', 'Gravel', 54, 700, 'Brown', 1299.99, 5, 2023),
(22, 'Giant', 'Revolt', 'Gravel', 56, 700, 'Gray', 1399.99, 6, 2023),
(23, 'Specialized', 'Diverge', 'Gravel', 52, 700, 'Black', 1599.99, 4, 2024),
(24, 'Cannondale', 'Topstone', 'Gravel', 54, 700, 'Green', 1499.99, 7, 2022),
(25, 'Scott', 'Speedster Gravel', 'Gravel', 56, 700, 'White', 1349.99, 5, 2023),
(26, 'Trek', 'Fuel EX 5', 'Mountain', 18, 29, 'Blue', 2299.99, 3, 2024),
(27, 'Giant', 'Trance', 'Mountain', 19, 29, 'Black', 2599.99, 2, 2024),
(28, 'Specialized', 'Stumpjumper', 'Mountain', 18, 29, 'Red', 2799.99, 1, 2024),
(29, 'Cannondale', 'Habit', 'Mountain', 19, 29, 'Green', 2499.99, 4, 2023),
(30, 'Scott', 'Genius', 'Mountain', 20, 29, 'Yellow', 2999.99, 1, 2023),
(31, 'Trek', 'Emonda ALR 5', 'Road', 54, 700, 'Black', 1799.99, 3, 2024),
(32, 'Giant', 'Defy Advanced', 'Road', 56, 700, 'Red', 1999.99, 2, 2023),
(33, 'Specialized', 'Roubaix', 'Road', 52, 700, 'White', 2199.99, 4, 2024),
(34, 'Cannondale', 'CAAD13', 'Road', 54, 700, 'Blue', 1899.99, 5, 2022),
(35, 'Scott', 'Addict', 'Road', 56, 700, 'Gray', 2099.99, 3, 2024),
(36, 'Trek', 'Roscoe 7', 'Mountain', 18, 27, 'Green', 1399.99, 7, 2023),
(37, 'Giant', 'Fathom 29', 'Mountain', 19, 29, 'Black', 1499.99, 6, 2024),
(38, 'Specialized', 'Epic HT', 'Mountain', 20, 29, 'Red', 3199.99, 2, 2024),
(39, 'Cannondale', 'F-Si', 'Mountain', 19, 29, 'Blue', 3399.99, 1, 2023),
(40, 'Scott', 'Scale 970', 'Mountain', 18, 29, 'Yellow', 1299.99, 3, 2023),
(41, 'Trek', 'Dual Sport 2', 'Hybrid', 17, 700, 'Black', 699.99, 15, 2022),
(42, 'Giant', 'Roam 3', 'Hybrid', 18, 700, 'Silver', 629.99, 18, 2022),
(43, 'Specialized', 'Crosstrail', 'Hybrid', 17, 700, 'Blue', 719.99, 14, 2023),
(44, 'Cannondale', 'Bad Boy 3', 'Hybrid', 19, 700, 'Black', 799.99, 13, 2024),
(45, 'Scott', 'Metrix 30', 'Hybrid', 18, 700, 'Gray', 849.99, 12, 2023),
(46, 'Trek', '520', 'Touring', 54, 700, 'Green', 1599.99, 3, 2024),
(47, 'Giant', 'Great Journey', 'Touring', 56, 700, 'Blue', 1499.99, 2, 2024),
(48, 'Specialized', 'AWOL', 'Touring', 52, 700, 'Black', 1699.99, 1, 2023),
(49, 'Cannondale', 'Touring 2', 'Touring', 54, 700, 'Red', 1399.99, 2, 2022),
(50, 'Scott', 'Sub Tour', 'Touring', 56, 700, 'White', 1299.99, 3, 2022);

-- 5. 15 Subquery Questions (SQL Queries)

-- Q1: Get the bike(s) with the highest price
select * from bikes
where price = (select max(price) 
from bikes);

-- Q2: Get the brand(s) that have bikes priced below average
select avg(price) from  bikes; -- '1400.590000'
-- subquery
select brand, bikeid, price
from bikes
where price < (select avg(price) from  bikes);

-- distinct brands with below-average bike
select distinct brand, price
from bikes 
where price < (select avg(price) from  bikes);

-- Q3: List all bikes that have stock less than the average stock
select avg(stock) from bikes; -- '7.9400'
-- subquery
select * from bikes
where stock < (select avg(stock) from bikes);

-- Q4: Find bikes whose price is more than the average price of Mountain bikes
select avg(price) from bikes; -- '1400.590000'
-- subquery
select * from bikes
where price > (select avg(price) from bikes);

-- Q5: Get all bikes released in the most recent year
select * from bikes
where year = (select max(year) from bikes);

-- Q6: Find bikes with price equal to the minimum price for Hybrid bikes
select min(price)
from bikes
where type = 'Hybrid'; -- '479.99'
-- subquery
select * from bikes
where type = 'hybrid'
and price =
(select min(price)
from bikes
where type = 'Hybrid');

-- Q7: List brands that have more than 3 models in stock (total quantity > 3)
select brand from bikes 
group by brand
having sum(stock)> 3;
-- subquery
select distinct brand , stock 
from bikes 
where brand in (select brand from bikes 
group by brand
having sum(stock)> 3);

-- Q8: Find bike(s) with the largest wheel size
select max(wheelsize) from bikes; -- 700
-- subquery
select * from bikes
where wheelsize = (select max(wheelsize) from bikes)
;
-- Q9: List all models that cost more than the most expensive Hybrid bike
select max(price)
from bikes
where type = 'hybrid';-- '849.99'
-- subquery
select model, price from bikes
where price > (select max(price)
from bikes
where type = 'hybrid');

-- Q10: Find bikes whose frame size is smaller than the smallest Mountain bike
select min(framesize) from bikes
where type = 'mountain'; -- '17'
-- subquery
select * from bikes 
where framesize < (select min(framesize) from bikes
where type = 'mountain');

-- Q11: List all Road bikes that are more expensive than the average Road bike
select avg(price) from bikes 
where type = 'road'; -- '1499.990000'
-- subquery
select bikeid, brand, model , type
from bikes 
where type = 'road' and price > (select avg(price) from bikes 
where type = 'road');

-- Q12: Show all bikes with stock equal to the lowest stock among Touring bikes
select min(stock)
from bikes 
where type = 'Touring'; -- 1
-- subquery
select * 
from bikes 
where stock = (select min(stock)
from bikes 
where type = 'Touring');

-- Q13: Find the bike(s) that cost more than all Road bikes
select max(price)
from bikes 
where type = 'road'; -- '2199.99'
-- subquery
select * from bikes 
where price > (select max(price)
from bikes 
where type = 'road');

-- Q14: Find all bike types that have an average price above $1000
select type, avg(price)  as avg_price
from bikes
group by type
having avg(price) > 1000;

-- Q15: List all bikes from brands that have at least one Touring bike
select * from bikes 
where brand in (select distinct brand
from bikes 
where type = 'Touring');

-- 'in' clause also works as distinct, it removes duplicates from records,
-- you can remove distinct from subquery its optional.
