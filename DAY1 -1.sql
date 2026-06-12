CREATE DATABASE CompanyDB;
USE CompanyDB;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);
SHOW TABLES;
INSERT INTO Employees (FirstName, LastName, Department, Salary)
VALUES
('John', 'Doe', 'Sales', 60000),
('Jane', 'Smith', 'Marketing', 55000),
('Robert', 'Brown', 'IT', 48000),
('Emily', 'Davis', 'Sales', 45000),
('Michael', 'Wilson', 'Marketing', 70000),
('Sarah', 'Taylor', 'HR', 52000),
('David', 'Clark', 'Sales', 51000);
DESC Employees;
SELECT *
FROM Employees
WHERE Salary > 50000
  AND Department IN ('Sales', 'Marketing');
