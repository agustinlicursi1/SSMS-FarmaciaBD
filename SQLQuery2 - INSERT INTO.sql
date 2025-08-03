--INSERT INTO ObraSocial (ObraSocialID, nombreOS, descuento)
--VALUES
--(1, 'PAMI', 40.00),
--(2, 'OSDE', 25.00),
--(3, 'Swiss Medical', 30.00),
--(4, 'IOMA', 20.00),
--(5, 'Particular', 0.00);

--INSERT INTO Empleado (EmpleadoID, nombreEmp, dniEmp)
--VALUES
--(1, 'Carla Ramírez', 40567897),
--(2, 'Pedro Alfonso', 38765498),
--(3, 'Esteban Giménez', 26509176);

--INSERT INTO Cliente (ClienteID, ObraSocialID, nombreCliente, dniCliente)
--VALUES
--(1, 1, 'Felipe Loyola', 30876128),
--(2, NULL, 'Walter Acuña', 37890654),
--(3, 2, 'Gonzalo Montiel', 25789065);

--INSERT INTO Medicamento (MedicamentoID, nombreMedic,  stock, precio_unitario)
--VALUES
--(1, 'Paracetamol 1g', 40, 1500.00),
--(2, 'Amoxicilina 500mg', 70, 2300.00),
--(3, 'Omeprazol 20mg', 60, 800.00),
--(4, 'Ibuprofeno 600mg', 90, 1000.00),
--(5, 'Furosemida 300mg', 30, 750.00);
--(6, 'Piroxicam 450mg', 80, 1200.00);

--UPDATE Medicamento
--SET nombreMedic = 'Ibuprofeno 800mg', stock = 95
--WHERE MedicamentoID = 4;

--INSERT INTO Venta (VentaID, ClienteID, EmpleadoID, fecha, total, descuentoAplicado)
--VALUES
--(1, 3, 1, '2025-05-22 14:30:00', 3400.00, 5.00),
--(2, 2, 3, '2025-05-23 15:45:00', 5600.00, 10.00),
--(3, 1, 2, '2025-05-23 16:31:00', 8900.00, NULL);
--(4, 2, 1, '2025-05-26 16:37:03', 2000.00, 7.00),
--(5, 3, 2, '2025-05-28 17:43:02', 2500, NULL),
--(6, 2, 3, '2025-05-30 12:54:09', 1900, 20.00);

--INSERT INTO DetalleVenta (VentaID, MedicamentoID, cantidad,  precio_unitventa, subtotal)
--VALUES
--(1, 1, 3, 1500.00, 4500.00),
--(1, 3, 2, 800.00, 1600.00),
--(2, 2, 3, 2300.00, 4600.00),
--(2, 4, 2, 1000.00, 2000.00),
--(3, 5, 1, 750.00, 750.00);

--UPDATE DetalleVenta
--SET subtotal = 6900
--WHERE VentaID = 2 AND MedicamentoID = 2;

