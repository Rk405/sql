-- find salary
SELECT *
FROM Employees
WHERE Salary > 50000
  AND Department IN ('Sales', 'Marketing');
  -- hire_date
SELECT 
    Employee_ID,
    Employee_Name,
    Hire_Date,
    Salary
FROM Employees
WHERE Hire_Date BETWEEN '2018-01-01' AND '2020-12-31';

 -- match letter

SELECT 
    Employee_ID,
    Employee_Name,
    Hire_Date,
    Salary
FROM Employees
WHERE Employee_Name LIKE 'A%' 
   OR Employee_Name LIKE 'B%'
ORDER BY Employee_Name ASC;

-- specified dept

SELECT 
    Employee_ID,
    Employee_Name,
    Department,
    Job_Title,
    Hire_Date
FROM Employees
WHERE Department IN ('IT', 'Finance', 'HR');
