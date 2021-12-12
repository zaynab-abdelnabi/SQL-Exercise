#Basic Queries

#1
SELECT Name FROM students;

#2
SELECT * FROM students WHERE Age>30;

#3
SELECT * FROM students WHERE Age>30 AND Gender="F";

#4
SELECT Points FROM students WHERE Name="Alex";

#5
INSERT INTO students VALUES(7,"Zaynab",21,"F",500);

#6
UPDATE students 
SET Points = 400 
WHERE Name = "Basma";

#7
UPDATE students 
SET Points = 100 
WHERE Name = "Alex";
