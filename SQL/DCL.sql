-- ✅ Data Control Language: Granting and revoking privileges

-- Grant permissions to a user
GRANT SELECT, INSERT ON Booking TO 'airline_user'@'localhost';

-- Revoke permission
REVOKE INSERT ON Booking FROM 'airline_user'@'localhost';
