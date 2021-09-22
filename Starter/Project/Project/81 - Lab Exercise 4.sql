---------------------------------------------------------------------
-- LAB 05
--
-- Exercise 4
---------------------------------------------------------------------

USE TSQL;
GO

---------------------------------------------------------------------
-- Task 1
-- 
--
-- Write a SELECT statement to retrieve the custid, orderid, and orderdate columns from the Sales.Orders table. Order the rows by orderdate and orderid. Retrieve the first 20 rows.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 82 - Lab Exercise 4 - Task 1 Result.txt.
---------------------------------------------------------------------
SELECT custid,orderid,orderdate 
FROM Sales.Orders
ORDER BY orderid,orderdate
OFFSET 0 ROW
FETCH FIRST 20 ROW ONLY; --SU KADARINI AL

---------------------------------------------------------------------
-- Task 2 <> FARKLIDIR DEMEK.
-- 
-- Copy the SELECT statement in task 1 and modify the OFFSET-FETCH clause to skip the first 20 rows and fetch the next 20 rows.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 83 - Lab Exercise 4 - Task 2 Result.txt. 
---------------------------------------------------------------------

SELECT custid,orderid,orderdate 
FROM Sales.Orders
ORDER BY orderid,orderdate
OFFSET 20 ROW
FETCH FIRST 20 ROW ONLY; --SU KADARINI AL

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Task 3
-- 
-- You are given the parameters 
--@pagenum for requested page number 
--and @pagesize for requested page size. 
--Can you figure out how to write a generic form 
--of the OFFSET-FETCH clause using those parameters?
--(Do not worry about not being familiar with those parameters yet.)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

declare @pagenum int = 2 , @pagesize int =5