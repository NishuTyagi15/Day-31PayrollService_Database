CREATE DATABASE employee_payroll;
show databases;
USE payroll_service;
SELECT DATABASE();

CREATE TABLE employee_payroll (
	id					INT unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name				VARCHAR(255) NOT NULL,
    salary				DOUBLE NOT NULL,
    start				DATE NOT NULL
);
DESCRIBE employee_payroll;

INSERT INTO employee_payroll (name, salary, start) VALUES
	('Nishu', 600000.0, '2021-01-08'),
    ('Krati', 700000.0, '2021-07-07'),
    ('Shivam', 800000.0, '2020-10-08');
    
SELECT * FROM employee_payroll;

SELECT salary FROM employee_payroll WHERE name = 'Krati';
SELECT * FROM employee_payroll 
	WHERE start BETWEEN CAST('2021-07-07' AS DATE) AND DATE(NOW());
    
ALTER TABLE employee_payroll ADD gender CHAR(6) AFTER name;
UPDATE employee_payroll set gender = 'Female' WHERE name = 'Nishu' OR name = 'Krati';
UPDATE employee_payroll set gender = 'Male' WHERE name = 'Shivam';
DESCRIBE employee_payroll;
SELECT * FROM employee_payroll;
UPDATE employee_payroll set salary = 900000.0 WHERE name = 'Nishu';
SELECT * FROM employee_payroll;

SELECT gender, SUM(salary) FROM employee_payroll WHERE gender = 'Female' GROUP BY gender;
SELECT AVG(salary) FROM employee_payroll WHERE gender = 'Female' GROUP BY gender;
SELECT gender, COUNT(name) FROM employee_payroll GROUP BY gender;

ALTER TABLE employee_payroll ADD phone VARCHAR(255) AFTER name;
ALTER TABLE employee_payroll ADD address VARCHAR(255) AFTER phone;
ALTER TABLE employee_payroll ADD department VARCHAR(255) AFTER address;
describe employee_payroll;
select * from employee_payroll;

UPDATE employee_payroll set phone = '8787667879' WHERE id = 2;
UPDATE employee_payroll set phone = '9877656545' WHERE id = 1;
UPDATE employee_payroll set phone = '7876566656' WHERE id = 3;
UPDATE employee_payroll set address = 'Ghaziabad' WHERE id = 1;
UPDATE employee_payroll set address = 'Kanpur' WHERE id = 2;
UPDATE employee_payroll set address = 'Laxmi Nagar' WHERE id = 3;
UPDATE employee_payroll set department = 'Content' WHERE id = 1;
UPDATE employee_payroll set department = 'Content' WHERE id = 2;
UPDATE employee_payroll set department = 'Technology' WHERE id = 3;
select * from employee_payroll;

ALTER TABLE employee_payroll ADD basic_pay float AFTER salary;
ALTER TABLE employee_payroll ADD deductions float AFTER basic_pay;
ALTER TABLE employee_payroll ADD taxable_pay float AFTER deductions;
ALTER TABLE employee_payroll ADD income_tax float AFTER taxable_pay;
ALTER TABLE employee_payroll ADD net_pay float AFTER income_tax;
describe employee_payroll;
select * from employee_payroll;

UPDATE employee_payroll set basic_pay = 40000.0 WHERE id = 2;
UPDATE employee_payroll set basic_pay = 50000.0 WHERE id = 1;
UPDATE employee_payroll set basic_pay = 45000.0 WHERE id = 3;
UPDATE employee_payroll set deductions = 3000.0 WHERE id = 1;
UPDATE employee_payroll set deductions = 1000.0 WHERE id = 2;
UPDATE employee_payroll set deductions = 20000.0 WHERE id = 3;
UPDATE employee_payroll set taxable_pay = 300.0 WHERE id = 1;
UPDATE employee_payroll set taxable_pay = 150.0 WHERE id = 2;
UPDATE employee_payroll set taxable_pay = 250.0 WHERE id = 3;
UPDATE employee_payroll set income_tax = 2500.0 WHERE id = 1;
UPDATE employee_payroll set income_tax = 1500.0 WHERE id = 2;
UPDATE employee_payroll set income_tax = 2000.0 WHERE id = 3;
UPDATE employee_payroll set net_pay = 52000.0 WHERE id = 1;
UPDATE employee_payroll set net_pay = 42000.0 WHERE id = 2;
UPDATE employee_payroll set net_pay = 47000.0 WHERE id = 3;
select * from employee_payroll;