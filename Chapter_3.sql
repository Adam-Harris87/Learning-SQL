SHOW DATABASES;
USE bank;
SHOW TABLES;
/* 'account'
'branch'
'business'
'customer'
'department'
'employee'
'individual'
'officer'
'product'
'product_type'
'transaction' */
DESCRIBE employee;
DESCRIBE account;
DESCRIBE product;

-- Exercise 3-1
SELECT emp_id, fname, lname FROM employee 
	ORDER BY lname, fname;

-- Exercise 3-2
SELECT account_id, cust_id, avail_balance 
	FROM account 
    WHERE status = 'ACTIVE' AND avail_balance > 2500;
    
-- Exercise 3-3
SELECT DISTINCT open_emp_id 
	FROM account;
    
-- Exercise 3-4
SELECT p.product_cd, a.cust_id, a.avail_balance
	FROM product p INNER JOIN account a
		ON p.product_cd = a.product_cd
	WHERE p.product_type_cd = 'ACCOUNT'
    ORDER BY product_cd, cust_id;