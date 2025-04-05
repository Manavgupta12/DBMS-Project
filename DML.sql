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
