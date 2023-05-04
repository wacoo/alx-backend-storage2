-- create a function that devides and returns the first ny the second number or 0
DELIMITER ||
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT
DETERMINISTIC
	BEGIN
		IF b == 0 THEN
			RETURN 0;
		ELSE
			RETURN a / b;
	END; ||
DELIMITER ;

