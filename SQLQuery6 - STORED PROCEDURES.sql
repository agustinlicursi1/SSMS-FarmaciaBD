--BUSCAR EMPLEADO POR NOMBRE
--CREATE PROCEDURE BuscarEmpleadoPorNombre
--@NombreBuscado VARCHAR(50)
--AS
--BEGIN
--SELECT EmpleadoID, nombreEmp
--FROM Empleado
--WHERE nombreEmp LIKE '%' + @NombreBuscado + '%';
--END;

--EXEC BuscarEmpleadoPorNombre'Carla';

--MOSTRAR CUÁNTO VENDIÓ CADA EMPLEADO SEGÚN UN FILTRO DE UN MONTO
--CREATE PROCEDURE MontoMinimoXEmpleado
--@dineroMinimo DECIMAL(10,2)
--AS
--BEGIN
--SELECT V.VentaID, E.nombreEmp, SUM(V.total) AS DineroRecaudado
--FROM Venta V
--INNER JOIN Empleado E ON V.EmpleadoID = E.EmpleadoID
--GROUP BY E.nombreEmp
--HAVING SUM(V.total) > @dineroMinimo;
--END;

--CORRECCIÓN DEL SP
--ALTER PROCEDURE MontoMinimoXEmpleado
--@dineroMinimo DECIMAL(10,2)
--AS
--BEGIN
--SELECT E.nombreEmp, SUM(V.total) AS DineroRecaudado
--FROM Venta V
--INNER JOIN Empleado E ON V.EmpleadoID = E.EmpleadoID
--GROUP BY E.nombreEmp
--HAVING SUM(V.total) > @dineroMinimo;
--END;

--EXEC MontoMinimoXEmpleado 11000.00;

--MOSTRAR CANTIDAD DE VECES QUE SE VENDIÓ CADA PRODUCTO
--ALTER PROCEDURE ProductosMasVendidos
--@MinimoDeVentas INT
--AS
--BEGIN
--SELECT M.nombreMedic, COUNT(DV.cantidad) AS CantidadVendida
--FROM Medicamento M
--INNER JOIN DetalleVenta DV ON M.MedicamentoID = DV.MedicamentoID
--WHERE DV.VentaID IN
--(
--SELECT VentaID
--FROM Venta
--WHERE total > 6000
--)
--GROUP BY M.nombreMedic
--HAVING COUNT(DV.cantidad) >= @MinimoDeVentas;
--END;

EXEC ProductosMasVendidos 1;

