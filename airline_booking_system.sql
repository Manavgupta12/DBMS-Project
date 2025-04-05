-- ✅ DDL: Create Tables

-- ✅ Create all required tables for Airline Booking System

CREATE TABLE Booking (
    Booking_ID INT PRIMARY KEY,
    Booking_Date DATE,
    Seat_no VARCHAR(5),
    ID_no INT,
    Price DECIMAL(10,2)
);

CREATE TABLE Aircraft (
    Aircraft_ID INT PRIMARY KEY,
    Model VARCHAR(50),
    Capacity INT,
    Maf_Date DATE,
    Status VARCHAR(20)
);

CREATE TABLE Flight (
    Flight_ID INT PRIMARY KEY,
    Dep_Time TIME,
    Arrival_Time TIME,
    Aircode VARCHAR(10),
    Air_ID INT,
    FOREIGN KEY (Air_ID) REFERENCES Aircraft(Aircraft_ID)
);

CREATE TABLE Airport (
    Airport_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    Country VARCHAR(50),
    Timezone VARCHAR(50)
);

CREATE TABLE Passenger (
    Passenger_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    D_O_B DATE,
    Age INT,
    Book_ID INT,
    FOREIGN KEY (Book_ID) REFERENCES Booking(Booking_ID)
);


-- ✅ DML: Insert Data

-- ✅ Inserting records into all tables

-- Booking data
INSERT INTO Booking VALUES
(101, '2025-04-01', '12A', 1, 350.00),
(102, '2025-04-02', '7C', 2, 450.00),
(103, '2025-04-03', '18B', 3, 600.00);

-- Aircraft data
INSERT INTO Aircraft VALUES
(301, 'Boeing 737', 180, '2015-06-01', 'Active'),
(302, 'Airbus A320', 160, '2018-09-12', 'Active'),
(303, 'Boeing 777', 250, '2020-01-20', 'Under Maintenance');

-- Flight data
INSERT INTO Flight VALUES
(201, '10:30:00', '14:00:00', 'AA101', 301),
(202, '15:45:00', '18:20:00', 'BA202', 302),
(203, '08:00:00', '11:30:00', 'LH303', 303);

-- Airport data
INSERT INTO Airport VALUES
(401, 'Indira Gandhi International', 'Delhi', 'India', 'GMT+5:30'),
(402, 'Heathrow', 'London', 'UK', 'GMT+0'),
(403, 'John F. Kennedy', 'New York', 'USA', 'GMT-5');

-- Passenger data
INSERT INTO Passenger VALUES
(1, 'John', 'Doe', '1990-05-14', 34, 101),
(2, 'Alice', 'Smith', '1985-11-20', 39, 102),
(3, 'Michael', 'Brown', '1992-07-08', 32, 103);


-- ✅ DCL: Permissions

-- ✅ Data Control Language: Granting and revoking privileges

-- Grant permissions to a user
GRANT SELECT, INSERT ON Booking TO 'airline_user'@'localhost';

-- Revoke permission
REVOKE INSERT ON Booking FROM 'airline_user'@'localhost';


-- ✅ TCL: Transactions

-- ✅ Transaction Control Language: COMMIT and ROLLBACK examples

-- Update and commit
START TRANSACTION;
UPDATE Booking SET Price = Price + 50 WHERE Booking_ID = 101;
COMMIT;

-- Delete and rollback
START TRANSACTION;
DELETE FROM Booking WHERE Booking_ID = 102;
ROLLBACK;


-- ✅ Aggregate Functions

-- ✅ Aggregate queries for insights

-- Count total passengers
SELECT COUNT(*) AS Total_Passengers FROM Passenger;

-- Count total flights
SELECT COUNT(*) AS Total_Flights FROM Flight;

-- Total booking revenue
SELECT SUM(Price) AS Total_Revenue FROM Booking;

-- Average ticket price
SELECT AVG(Price) AS Average_Ticket_Price FROM Booking;

-- Join passengers with bookings
SELECT p.First_Name, p.Last_Name, b.Seat_no, b.Price
FROM Passenger p
JOIN Booking b ON p.Book_ID = b.Booking_ID;
