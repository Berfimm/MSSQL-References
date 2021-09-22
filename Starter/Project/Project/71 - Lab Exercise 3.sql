---------------------------------------------------------------------
-- LAB 05
--
-- Exercise 3
---------------------------------------------------------------------

USE TSQL;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- 
-- Write a SELECT statement against the Sales.Orders table and retrieve the orderid and orderdate columns. Retrieve the last 20 orders, based on orderdate ordering.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 72 - Lab Exercise 3 - Task 1 Result.txt.
---------------------------------------------------------------------
SELECT orderid,orderdate
FROM Sales.Orders
WHERE orderdate >= '2008-04-29' and orderid > '11057'
ORDER BY orderdate desc;


---------------------------------------------------------------------
-- Task 2
-- 
-- Write a SELECT statement to retrieve the same result as in task 1, but use the OFFSET-FETCH clause.
--
-- Execute the written statement and compare the results that you got with the results from task 1.
---------------------------------------------------------------------
SELECT orderid,orderdate
FROM Sales.Orders
ORDER BY orderdate DESC 
OFFSET 0 ROWS --ATILMASI GEREKEN SATIR SAYISINI SÖYLÜYOR.
FETCH FIRST 20 ROWS ONLY; --SU KADARINI AL


---------------------------------------------------------------------
-- Task 3
-- 
-- Write a SELECT statement to retrieve the productname and unitprice columns from the Production.Products table.
--
-- Execute the T-SQL statement and notice the number of the rows returned.
-- 
-- Modify the SELECT statement to include only the top 10 percent of products based on unitprice ordering.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 73 - Lab Exercise 3 - Task 2 Result.txt. Notice the number of rows returned.
--
-- Is it possible to implement this task with the OFFSET-FETCH clause?
---------------------------------------------------------------------
--77ROWS
SELECT productname,unitprice FROM Production.Products

--10
SELECT TOP 10 unitprice,productname FROM Production.Products

