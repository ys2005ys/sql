
drop database hw_6;
CREATE DATABASE hw_6;

USE hw_6;

/* Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов. 
Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds ' */

delimiter //
CREATE FUNCTION format_seconds(seconds INT)
RETURNS VARCHAR(255)
BEGIN
  DECLARE days INT;
  DECLARE hours INT;
  DECLARE minutes INT;
  DECLARE result VARCHAR(255);
SET days = seconds / (24 * 3600);
SET seconds = seconds % (24 * 3600);
SET hours = seconds / 3600;
SET seconds = seconds % 3600;
SET minutes = seconds / 60;
SET seconds = seconds % 60;   
 
SET result = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds');

RETURN result;
END//
delimiter ;
SELECT format_seconds(123456);
