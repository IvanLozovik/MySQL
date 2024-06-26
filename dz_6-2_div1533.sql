-- 2.Cоздайте процедуру, которая выведет только числа, делящиеся на 15 или 33 в промежутке от 1 до 1000. 
-- В данной процедуре реализована возможность указания верхнего предела диапазона обрабатываемых чисел при вызове процедуры :) 
-- Пример: 15,30,33,45...

DROP PROCEDURE IF EXISTS div1533;
DELIMITER //
CREATE PROCEDURE div1533 (n INT)
BEGIN
	DECLARE i INT DEFAULT 1;
    DECLARE result VARCHAR(1000) DEFAULT '';
    	WHILE i < n DO
		IF (i MOD 33 = 0 OR i MOD 15 = 0)
		THEN 
        -- SELECT i;
			IF result = ''
                	THEN SET result = CONCAT(result, i);
               		ELSE SET result = CONCAT(result, ", ", i);
                	END IF;
        	END IF;
        SET i = i + 1;
	END WHILE;
    SELECT result;
END//
DELIMITER ;

CALL div1533 (1000);
