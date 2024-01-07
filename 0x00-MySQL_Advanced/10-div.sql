-- SQL script that creates a function SafeDiv that divides (and returns)
-- the first by second number or returns 0 if the second number === 0

DROP FUNCTION IF EXITS SafeDiv;
DELIMITER $$
CREATE FUNCTION SafeDiv (a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE result FLOAT DEFAULT 0;

    IF b != 0 THEN  
        SET result = a / b;
    END IF;
    RETURN result;
END $$
DELIMITER;