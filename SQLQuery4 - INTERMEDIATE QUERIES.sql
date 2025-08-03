----MOSTRAR DATOS DE VENTA ORDENADO DE MAYOR A MENOR SEGÚN SU TOTAL
--SELECT V.VentaID, C.nombreCliente AS Cliente, V.fecha, V.total
--FROM Venta V
--JOIN Cliente C ON V.ClienteID = C.ClienteID
--WHERE V.total > 3000
--ORDER BY V.total DESC;

--MOSTRAR MEDICAMENTOS VENDIDOS EN CADA VENTA
--SELECT V.VentaID , V.fecha, M.nombreMedic, DV.cantidad, DV.precio_unitventa, DV.subtotal
--FROM Venta V
--JOIN DetalleVenta DV ON V.VentaID = DV.VentaID
--JOIN Medicamento M ON DV.MedicamentoID = M.MedicamentoID

--MOSTRAR TODOS LOS CLIENTES, Y, SI TIENEN OBRA SOCIAL
--SELECT C.ClienteID, C.nombreCliente AS Cliente, OS.ObraSocialID, OS.nombreOS
--FROM Cliente C
--LEFT JOIN ObraSocial OS ON C.ObraSocialID = OS.ObraSocialID;

--MOSTRAR CLIENTES QUE NO REALIZARON COMPRAS
--SELECT V.VentaID, C.nombreCliente AS Cliente
--FROM Cliente C
--LEFT JOIN Venta V ON C.ClienteID = V.ClienteID
--WHERE V.VentaID IS NULL;

--MOSTRAR MEDICAMENTOS CON SU CANTIDAD VENDIDA
--SELECT M.MedicamentoID, M.nombreMedic, SUM(DV.cantidad) AS TotalVendido
--FROM Medicamento M
--LEFT JOIN DetalleVenta DV ON M.MedicamentoID = DV.MedicamentoID
--GROUP BY M.MedicamentoID, M.nombreMedic;

--TOTAL RECAUDADO POR CADA MEDICAMENTO
--SELECT M.MedicamentoID, M.nombreMedic, SUM(DV.cantidad * DV.precio_unitventa) AS TotalRecaudado
--FROM DetalleVenta DV --Usando el FROM desde DV, aparecen nada más los medicamento que fueron vendidos, no todos los medicamentos
--LEFT JOIN Medicamento M ON DV.MedicamentoID = M.MedicamentoID
--GROUP BY M.MedicamentoID, M.nombreMedic
--ORDER BY TotalRecaudado DESC;