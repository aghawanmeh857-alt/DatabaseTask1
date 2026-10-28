CREATE TABLE dbo.TemporaryStaf (
    StaffID INT,
    StaffName VARCHAR(50),
    HireDate DATE
);


CREATE TABLE dbo.Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL UNIQUE
);


CREATE TABLE dbo.Employees (
    EmployeeID INT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Salary DECIMAL(10,2),
    DepartmentID INT
);



ALTER TABLE dbo.Employees
ADD PhoneNumber VARCHAR(20);

DROP TABLE dbo.TemporaryStaf;

INSERT INTO dbo.Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'IT'),
    (2, 'HR'),
    (3, 'Finance');


    INSERT INTO dbo.Employees
    (EmployeeID, FullName, Email, Salary, DepartmentID, PhoneNumber)
VALUES
    (1, 'Ahmad Ali', 'ahmad@techworld.com', 1200.00, 1, '0791111111'),
    (2, 'Sara Hassan', 'sara@techworld.com', 950.00, 2, '0792222222'),
    (3, 'Zaid Omar', 'zaid@techworld.com', 1500.00, 1, '0793333333'),
    (4, 'Mona Khaled', 'mona@techworld.com', 800.00, 3, '0794444444');


    
    UPDATE dbo.Employees
SET Salary = 1350.00
WHERE EmployeeID = 1;


DELETE FROM dbo.Employees
WHERE EmployeeID = 4;
   


   SELECT *
FROM dbo.Employees;


SELECT FullName, Salary
FROM dbo.Employees;


SELECT SUM(Salary) AS TotalSalaries
FROM dbo.Employees;


SELECT AVG(Salary) AS AverageSalary
FROM dbo.Employees;



SELECT
    MAX(Salary) AS HighestSalary,
    MIN(Salary) AS LowestSalary
FROM dbo.Employees;


SELECT COUNT(*) AS TotalEmployees
FROM dbo.Employees;