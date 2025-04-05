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
