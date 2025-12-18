create database try5;

use try5;
drop table sales;
-- Create the Sales table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    ProductID VARCHAR(10),
    SaleDate DATE,
    Amount DECIMAL(10,2)
);

-- Insert sample data into Sales table
INSERT INTO Sales (SaleID, CustomerID, ProductID, SaleDate, Amount) VALUES
(1, 101, 'P1', '2024-01-10', 500),
(2, 102, 'P2', '2024-01-12', 300),
(3, 101, 'P1', '2024-01-15', 200),
(4, 103, 'P3', '2024-01-20', 700),
(5, 102, 'P2', '2024-01-22', 400),
(6, 101, 'P1', '2024-01-25', 600);

select * from sales;

-- Find the running total of sales for each customer ordered by SaleDate
select s1.saleid, s1.customerid, s1.productid, s1.saledate, sum(s1.amount) as total_sales
from sales as s1
join sales as s2
on s1.saleid = s2.saleid
and s2.saledate <= s1.saledate
group by s1.saleid, s1.customerid, s1.productid, s1.saledate
order by s1.saledate;
