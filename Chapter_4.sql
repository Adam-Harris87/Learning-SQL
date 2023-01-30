-- Exercise 4-1
-- The transactions returned are
-- # 1, 2, 3, 5, 6, 7

-- Exercise 4-2
-- The transactions returned are
-- 4, 9

USE bank;
SHOW TABLES;
DESCRIBE account;
SELECT * FROM individual LIMIT 1;

-- Exercise 4-3
SELECT * FROM account WHERE open_date LIKE '2002%';

-- Exercise 4-4
SELECT * FROM individual WHERE lname LIKE '_a%' 
	AND (lname LIKE '_ae%' OR lname LIKE '_a%e' OR lname LIKE '_a%e%');
