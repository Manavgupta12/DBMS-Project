-- ✅ Transaction Control Language: COMMIT and ROLLBACK examples

-- Update and commit
START TRANSACTION;
UPDATE Booking SET Price = Price + 50 WHERE Booking_ID = 101;
COMMIT;

-- Delete and rollback
START TRANSACTION;
DELETE FROM Booking WHERE Booking_ID = 102;
ROLLBACK;
