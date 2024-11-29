SELECT product.name AS "Product", product_type.name AS "Type"
FROM product JOIN product_type
ON product.product_type_cd = product_type.product_type_cd;

SELECT branch.name, branch.city, employee.last_name, employee.title
from branch JOIN employee
ON branch.branch_id = employee.assigned_branch_id;

SELECT DISTINCT TITLE from employee;

SELECT employee.LAST_NAME, employee.TITLE, boss.LAST_NAME, boss.TITLE
FROM employee LEFT JOIN employee boss
ON employee.SUPERIOR_EMP_ID = boss.EMP_ID;

SELECT product.NAME, account.AVAIL_BALANCE, individual.LAST_NAME
FROM account INNER JOIN product on account.PRODUCT_CD = product.PRODUCT_CD
LEFT JOIN customer on account.CUST_ID = customer.CUST_ID
LEFT JOIN individual ON customer.CUST_ID = INDIVIDUAL.CUST_ID;

SELECT ACC_TRANSACTION.*, INDIVIDUAL.LAST_NAME
FROM ACC_TRANSACTION
INNER JOIN account ON ACC_TRANSACTION.ACCOUNT_ID = ACCOUNT.ACCOUNT_ID
INNER JOIN CUSTOMER ON ACCOUNT.CUST_ID = CUSTOMER.CUST_ID
INNER JOIN INDIVIDUAL ON customer.CUST_ID = INDIVIDUAL.CUST_ID
WHERE INDIVIDUAL.LAST_NAME LIKE 'T%';

