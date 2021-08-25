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