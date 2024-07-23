USE CSE_3B_320

--Lab 7  Perform SQL queries for Aggerate function and group by (without having) 


CREATE TABLE EMP(
EID INT,
EName VARCHAR(25),
Department VARCHAR(25),
Salary INT,
JoiningDate DATETIME,
City VARCHAR(25)
)

INSERT INTO EMP VALUES(101,'Rahul','Admin',56000, '1-Jan-90', 'Rajkot')
INSERT INTO EMP VALUES(102,'Hardik','IT',18000, '25-Sep-90 ', 'Ahmedabad')
INSERT INTO EMP VALUES(103,'Bhavin','HR',25000, '14-May-91', 'Baroda')
INSERT INTO EMP VALUES(104,'Bhoomi','Admin',39000, '8-Feb-91 ', 'Rajkot')
INSERT INTO EMP VALUES(105,'Rohit','IT',17000, '23-Jul-90', 'Jamnagar')
INSERT INTO EMP VALUES(106,'Priya','IT',9000, '18-Oct-90', 'Ahmedabad')
INSERT INTO EMP VALUES(107,'Bhoomi','HR',34000, '25-Dec-91', 'Rajkot')
 

--Part A
--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.SELECT MAX(SALARY) AS MAXIMUM,MIN(SALARY) AS MINIMUM FROM EMP--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.SELECT SUM(SALARY) AS TOTAL_SAL,AVG(SALARY) AS AVRAGE_SAL FROM EMP--3. Find total number of employees of EMPLOYEE table.SELECT COUNT(EID) FROM EMP--4. Find highest salary from Rajkot city.SELECT MAX(SALARY) FROM EMP WHERE City = 'RAJKOT'--5. Give maximum salary from IT department.SELECT MAX(SALARY) FROM EMP WHERE Department = 'IT'--6. Count employee whose joining date is after 8-feb-91.SELECT COUNT(EID) FROM EMP WHERE JoiningDate > '8-feb-91'--7. Display average salary of Admin department.SELECT AVG(SALARY) FROM EMP WHERE Department = 'ADMIN'--8. Display total salary of HR departmentSELECT SUM(SALARY) FROM EMP WHERE Department = 'HR'--9. Count total number of cities of employee without duplication.SELECT COUNT(DISTINCT CITY) FROM EMP--10. Count unique departments.SELECT COUNT(DISTINCT Department) FROM EMP--11. Give minimum salary of employee who belongs to Ahmedabad.SELECT MIN(SALARY) FROM EMP WHERE CITY='Ahmedabad'--12. Find city wise highest salary.SELECT MAX(Salary) FROM EMP GROUP BY City--13. Find department wise lowest salary.SELECT MIN(SALARY),Department FROM EMP GROUP BY Department--14. Display city with the total number of employees belonging to each city.SELECT COUNT(EID),CITY FROM EMP GROUP BY CITY --15. Give total salary of each department of EMP table.SELECT SUM(SALARY),Department FROM EMP GROUP BY Department--16. Give average salary of each department of EMP table without displaying the respective department name.SELECT AVG(SALARY) FROM EMP GROUP BY Department--Part B--1. Count the number of employees living in RajkotSELECT COUNT(EID) FROM EMP WHERE City='RAJKOT'--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.SELECT MAX(SALARY) - MIN(SALARY) AS DIFFERENCE FROM EMP --3. Display the total number of employees hired before 1st January, 1991.SELECT COUNT(EID) FROM EMP WHERE JoiningDate < '1-JAN-91'--Part C--1. Count the number of employees living in Rajkot or BarodaSELECT COUNT(EID) FROM EMP WHERE City='RAJKOT' OR City = 'Baroda'--2. Display the total number of employees hired before 1st January, 1991 in IT department.SELECT COUNT(EID) FROM EMP WHERE JoiningDate < '1-JAN-91' AND Department = 'IT'--3. Find the Joining Date wise Total Salaries.SELECT SUM(SALARY),JOININGDATE FROM EMP GROUP BY JoiningDate--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.SELECT MAX(SALARY),Department FROM EMP WHERE CITY LIKE 'R%' GROUP BY Department