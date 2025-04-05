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
