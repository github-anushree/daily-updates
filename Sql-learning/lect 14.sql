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
