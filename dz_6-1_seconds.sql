
-- 1.Создайте функцию, которая принимает кол-во сек и далее переводит их в кол-во дней, часов, минут, секунд.
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

DROP PROCEDURE IF EXISTS day_number;
DELIMITER //
CREATE PROCEDURE day_number (sec INT)
BEGIN
	DECLARE days INT;
    	DECLARE hours INT;
    	DECLARE minuts INT;
    	DECLARE seconds INT;
	SET days = sec DIV (60*60*24);
	SET hours = (sec MOD (60*60*24)) DIV 3600;
	SET minuts = ((sec MOD (60*60*24)) MOD 3600) DIV 60;
	SET seconds = ((sec MOD (60*60*24)) MOD 3600) MOD 60;
	SELECT CONCAT(sec, ' секунд = ', days, ' дней, ', hours, ' часов, ', minuts, ' минут, ', seconds, ' секунд.') AS result;
END//
DELIMITER ;

CALL day_number (123456);

