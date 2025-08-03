--MOSTRAR MEDICAMENTOS DISPONIBLES:
--SELECT *
--FROM Medicamento;

--MOSTRAR MEDICAMENTOS CON PRECIO MAYOR A $1000
--SELECT nombreMedic, precio_unitario
--FROM Medicamento
--WHERE precio_unitario > 1000;

--MOSTRAR VENTAS CON NOMBRE DEL CLIENTE Y EL EMPLEADO
--SELECT V.VentaID, C.nombreCliente AS Cliente, E.nombreEmp AS Empleado, V.fecha, V.total, V.descuentoAplicado
--FROM Venta V
--JOIN Cliente C ON  V.ClienteID = C.ClienteID
--JOIN Empleado E ON V.EmpleadoID = E.EmpleadoID;

--MOSTRAR MEDICAMENTOS VENDIDOS EN CADA VENTA
--SELECT DV.VentaID, M.nombreMedic AS Medicamento, DV.cantidad, DV.precio_unitventa, DV.subtotal
--FROM DetalleVenta DV
--JOIN Medicamento M ON DV.MedicamentoID = M.MedicamentoID;

----REPORTE COMPLETO DE UNA VENTA
--SELECT V.fecha, V.VentaID, C.nombreCliente AS Cliente, E.nombreEmp AS Empleado, M.nombreMedic AS Medicamento, DV.cantidad, DV.precio_unitventa, DV.subtotal, V.total
--FROM Venta V
--JOIN Cliente C ON V.ClienteID = C.ClienteID
--JOIN Empleado E ON V.EmpleadoID = E.EmpleadoID
--JOIN DetalleVenta DV ON V.VentaID = DV.VentaID
--JOIN Medicamento M ON DV.MedicamentoID = M.MedicamentoID;