-- SQL script that creates a trigger that rsets the valid_email attribute

DROP TRIGGER IF EXISTS valid_email;
DELIMITER $$
CREATE TRIGGER valid_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF Old.email != NEW.email THEN
        SET NEW.valid_email = 0;
    ELSE
        SET NEW.valid_email = NEW.valid_email;
    END IF;
END $$
DELIMITER;
