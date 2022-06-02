--Lenguaje SQL. Consultas
--Escribe el código SQL necesario para realizar las siguientes operaciones sobre la base de datos
--“NorthWind”
USE Northwind
--De la 1 a la 7 se pueden hacer sin usar funciones de agregados.

--Consultas sobre una sola Tabla
--1. Nombre de la compañía y dirección completa (dirección, cuidad, país) de todos los
--clientes que no sean de los Estados Unidos.
SELECT * FROM Customers

SELECT CompanyName, Address, City, Country
FROM Customers
WHERE Country <> 'USA'
GO
--2. La consulta anterior ordenada por país y ciudad.
SELECT CompanyName, Address, City, Country
FROM Customers
WHERE Country <> 'USA'
ORDER BY Country, City
GO
--3. Nombre, Apellidos, Ciudad y Edad de todos los empleados, ordenados por antigüedad en
--la empresa.
SELECT * FROM Employees

SELECT FirstName, LastName, ISNULL(City, 'Sevilla') AS [Ciudad], ISNULL(DATEDIFF(YEAR, BirthDate, CURRENT_TIMESTAMP), 0) AS [EDAD]
FROM Employees
ORDER BY YEAR(BirthDate) 
GO
--4. Nombre y precio de cada producto, ordenado de mayor a menor precio.
SELECT * FROM Products

SELECT ProductName, UnitPrice
FROM Products
GROUP BY ProductName, UnitPrice
ORDER BY UnitPrice DESC
GO
--5. Nombre de la compañía y dirección completa de cada proveedor de algún país de
--América del Norte.
SELECT * FROM Suppliers

SELECT CompanyName, Address--, Country
FROM Suppliers
WHERE Country LIKE 'USA'
GO
--6. Nombre del producto, número de unidades en stock y valor total del stock, de los
--productos que no sean de la categoría 4.
SELECT * FROM Products

SELECT ProductName, COUNT(UnitsInStock) AS [NUMERO DE UNIDADES], SUM(UnitsInStock * UnitPrice) AS [VALOR TOTAL DEL STOCK]
FROM Products
GROUP BY ProductName
GO
--7. Clientes (Nombre de la Compañía, dirección completa, persona de contacto) que no
--residan en un país de América del Norte y que la persona de contacto no sea el
--propietario de la compañía
SELECT * FROM Customers

SELECT CompanyName, Address, ContactName
FROM Customers
WHERE Country NOT LIKE 'USA' AND ContactName <> 'Owner'
GO
--8. ID del cliente y número de pedidos realizados por cada cliente, ordenado de mayor a
--menor número de pedidos.
SELECT * FROM Orders 

SELECT CustomerID, COUNT(*) AS [NUMERO DE PEDIDOS]
FROM Orders
GROUP BY CustomerID
ORDER BY [NUMERO DE PEDIDOS] DESC
GO
--9. Número de pedidos enviados a cada ciudad, incluyendo el nombre de la ciudad.
SELECT * FROM Orders

SELECT ShipCity, COUNT(*) AS [NUMERO DE PEDIDOS]
FROM Orders
GROUP BY ShipCity
GO
--10. Número de productos de cada categoría. 
SELECT * FROM Products

SELECT CategoryID, COUNT(*) AS [NUMERO DE PROUCTOS]
FROM Products
GROUP BY CategoryID