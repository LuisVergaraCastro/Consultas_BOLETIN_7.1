--Lenguaje SQL. Consultas
--Escribe el c�digo SQL necesario para realizar las siguientes operaciones sobre la base de datos
--�NorthWind�
USE Northwind
--De la 1 a la 7 se pueden hacer sin usar funciones de agregados.

--Consultas sobre una sola Tabla
--1. Nombre de la compa��a y direcci�n completa (direcci�n, cuidad, pa�s) de todos los
--clientes que no sean de los Estados Unidos.
SELECT * FROM Customers

SELECT CompanyName, Address, City, Country
FROM Customers
WHERE Country <> 'USA'
GO
--2. La consulta anterior ordenada por pa�s y ciudad.
SELECT CompanyName, Address, City, Country
FROM Customers
WHERE Country <> 'USA'
ORDER BY Country, City
GO
--3. Nombre, Apellidos, Ciudad y Edad de todos los empleados, ordenados por antig�edad en
--la empresa.
SELECT * FROM Employees

SELECT FirstName, LastName, ISNULL(City, 'Sevilla') AS [Ciudad], ISNULL(DATEDIFF(YEAR, BirthDate, CURRENT_TIMESTAMP), 0) AS [EDAD]
FROM Employees
ORDER BY YEAR(BirthDate) 
--4. Nombre y precio de cada producto, ordenado de mayor a menor precio.
SELECT * FROM Products

SELECT ProductName, UnitPrice
FROM Products
GROUP BY
--5. Nombre de la compa��a y direcci�n completa de cada proveedor de alg�n pa�s de
--Am�rica del Norte.
--6. Nombre del producto, n�mero de unidades en stock y valor total del stock, de los
--productos que no sean de la categor�a 4.
--7. Clientes (Nombre de la Compa��a, direcci�n completa, persona de contacto) que no
--residan en un pa�s de Am�rica del Norte y que la persona de contacto no sea el
--propietario de la compa��a
--8. ID del cliente y n�mero de pedidos realizados por cada cliente, ordenado de mayor a
--menor n�mero de pedidos.
--9. N�mero de pedidos enviados a cada ciudad, incluyendo el nombre de la ciudad.
--10. N�mero de productos de cada categor�a. 