--Lenguaje SQL. Consultas
--Escribe el código SQL necesario para realizar las siguientes operaciones sobre la base de datos
--“NorthWind”
USE Northwind
--De la 1 a la 7 se pueden hacer sin usar funciones de agregados.

--Consultas sobre una sola Tabla
--1. Nombre de la compañía y dirección completa (dirección, cuidad, país) de todos los
--clientes que no sean de los Estados Unidos.
SELECT *
FROM 

--2. La consulta anterior ordenada por país y ciudad.
--3. Nombre, Apellidos, Ciudad y Edad de todos los empleados, ordenados por antigüedad en
--la empresa.
--4. Nombre y precio de cada producto, ordenado de mayor a menor precio.
--5. Nombre de la compañía y dirección completa de cada proveedor de algún país de
--América del Norte.
--6. Nombre del producto, número de unidades en stock y valor total del stock, de los
--productos que no sean de la categoría 4.
--7. Clientes (Nombre de la Compañía, dirección completa, persona de contacto) que no
--residan en un país de América del Norte y que la persona de contacto no sea el
--propietario de la compañía
--8. ID del cliente y número de pedidos realizados por cada cliente, ordenado de mayor a
--menor número de pedidos.
--9. Número de pedidos enviados a cada ciudad, incluyendo el nombre de la ciudad.
--10. Número de productos de cada categoría. 