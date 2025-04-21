-- selecting schema
use northwind;

-- or ## return customer info
SELECT * FROM customers;

-- return columns CustomerName,City and Country
SELECT CustomerName, City, Country FROM customers;

-- product table
select productID, ProductName
 from products;

-- write SQL query to return employee FirstName,LastName and BirthDate. 
select FirstName, LastName,BirthDate 
from employees;

-- write SQL query to return CustomerName,Address and City.
Select CustomerName, Address, City 
From customers;

-- country info
SELECT Country 
FROM Customers;

-- different country
SELECT Distinct Country 
FROM Customers;

-- number of countries (count rows)
SELECT COUNT(Distinct country)
FROM CUSTOMERS;

-- Write SQL QUERY to return Different cities from suppliers table
SELECT Distinct city
From Suppliers;

-- Write sql query to return number of cities from customers table
SELECT COUNT(DISTINCT CITY) FROM Customers;

-- Where Clause
select *
FROM Customers
Where Country = 'Mexico'; 

-- productid= 1
SELECT *
From products
where productid =1;

-- Write SQL query to return customers from London.
Select *
From Customers
where City = "London";


-- Write SQL Query to return number of customers from USA
SELECT COUNT(*) AS number_of_customers
FROM customers
WHERE country = 'USA';

SELECT * FROM Customers
Where CustomerID = 1;

SELECT * FROM Products
Where Price > 100;

SELECT * FROM ORDERS
Where OrderDate > '1996-07-30';

-- customers not from uk
select *
from customers
where country !='UK' ;

-- customers not from UK
select *
from customers
where country <> 'UK';

-- Customers with their customerid is equal to and greater than 15.
Select * from customers
where customerID >=15;

-- return order details where order quantity is less than 3
Select * FROM order_details
Where Quantity < 3;

-- Find details of employees who were born after 1960
SELECT * FROM employees
Where birthdate > '1960-01-01';

-- customers from country is "Germany" AND city is Berlin
SELECT * FROM Customers
WHERE Country = 'Germany' AND City = Berlin;

Select * FROM Suppliers
Where Country = 'Japan' AND City = 'Tokyo';

SELECT *FROM Customers
WHERE City = 'Berlin' or City = 'Stuttgart';

SELECT * FROM Customers
WHERE Country = 'Germany' OR COUNTRY = 'Spain';

select * from customers
where not country = 'Germany';

-- sort by customer country
SELECT * FROM Customers
Order by Country;

-- sort by customer city
SELECT * From Customers
order by city; 

-- write SQL to return names and order by price
select * from products
order by price;

-- country in reverse alphabetical order
SELECT * FROM Customers
ORDER BY Country DESC;

-- Numeric field largest to smallest
SELECT ProductName, Price FROM Products
Order By Price DESC;

-- Sort by several fields
SELECT * FROM Customers
ORDER BY Country,CustomerName;

SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;

-- limit
SELECT * FROM Customers
Limit 3;

-- 5 cheapest products
SELECT * FROM Products
ORDER BY Price
Limit 5;

SELECT * From Products
where categoryID=1
Limit 3;

SELECT MIN(Price) AS SmallestPrice
FROM Products;

SELECT MAX(Price) AS Larestprice
FROM Products;

SELECT avg(Price) AS Larestprice
FROM Products;

SELECT sum(price)
FROM Products;

SELECT Min(productname)
FROM Products;

SELECT max(productname)
FROM Products;

 -- Like operator
 SELECT * FROM Customers
 WHERE CustomerName LIKE 'a%';
 
 -- ending with a
 SELECT * from Customers
 WHERE CustomerName LIKE '%food%';
 
 SELECT * FROM Customers
 WHERE CustomerName LIKE '_r%';
 
 use northwind;
 
SELECT * FROM Customers 
 WHERE CustomerName LIKE 'a__%';
 
 -- Find Customers whose CustomerName does not start with 'a' .
 SELECT * FROM Customers
 WHERE NOT CustomerName LIKE 'a%';
 
  -- Find all suppliers from countries that contain the substring 'land' e.g finland
  SELECT SupplierName, Country
  FROM Suppliers
  Where Country Like '%land%';
  
  -- find all employees whose firstname contains the letter 'n' as the second character
  SELECT * FROM employees
  Where FirstName LIKE '_n%';
  
  -- Find all shipperName contains the word 'Express'
  SELECT * FROM shippers
  WHERE ShipperName LIKE '%Express%';
  
  SELECT * FROM Customers
  WHERE NOT Country IN ('Germany', 'France', 'UK');
  
  SELECT * FROM Products
  WHERE Price Between 10 and 20;
  
  SELECT * FROM Products
  WHERE ProductName Between 'carnervon Tigers' AND 'Mozzarella di Giovanni'
  ORDER BY ProductName;
  
  SELECT * FROM orders
  Where OrderDate BETWEEN '1996-07-01' AND '1996-07-31';
  
  SELECT CustomerName AS Customer, ContactName AS 'Contact Person'
  FROM Customers;
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 
 
 
 


























