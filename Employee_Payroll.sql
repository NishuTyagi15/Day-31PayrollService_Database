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