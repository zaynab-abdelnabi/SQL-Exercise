#Basic Queries

#1
SELECT Name FROM students;

#2
SELECT * FROM students WHERE Age>30;

#3
SELECT * FROM students WHERE Age=30 AND Gender="F";

#4
SELECT Points FROM students WHERE Name="Alex";

#5
INSERT INTO students VALUES(7,"Zaynab",21,"F",500);

#6
UPDATE students 
SET Points = Points + 100 
WHERE Name = "Basma";

#7
UPDATE students 
SET Points = Points - 100 
WHERE Name = "Alex";

#Creating Tables

#1
CREATE TABLE graduates(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
    Age INT,
    Gender TEXT,
    Points INT,
    Graduation DATE
);

#2
INSERT INTO graduates(Name,Age,Gender,Points)
SELECT name,Age,Gender,Points
FROM students
WHERE name="Layal"

#3
UPDATE graduates 
SET Graduation = DATE('2018-09-08')
WHERE Name = "Layal";

#4
DELETE FROM students WHERE name="Layal";

#Joins

#1
SELECT employees.Name, employees.Company, companies.Date
FROM employees
JOIN companies
ON employees.Company = companies.Name;

#2
SELECT employees.Name
FROM employees
JOIN companies
ON employees.Company = companies.Name
WHERE companies.Date > 2000;

#3
SELECT companies.Name
FROM companies
JOIN employees
ON employees.Company = companies.Name
WHERE employees.Role = "Graphic Designer";