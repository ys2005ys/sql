drop database hw_6_1;
CREATE DATABASE hw_6_1;

USE hw_6_1;
DELIMITER //
CREATE PROCEDURE get_even_numbers()
BEGIN
  DECLARE num INT;

SET num = 1;

WHILE num <= 10 DO
IF num % 2 = 0 THEN
SELECT num;
END IF;

SET num = num + 1;
END WHILE;
end //
DELIMITER ;


CALL get_even_numbers();

