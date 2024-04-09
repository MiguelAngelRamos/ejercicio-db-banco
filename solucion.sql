USE banco_central;
-- INNER JOIN, GROUP BY, SUM, COUNT, AVG
-- El informe debe contener las siguientes columnas:
-- - Nombre del tipo de préstamo.
-- - Monto total prestado por tipo de préstamo.
-- - Número total de préstamos por tipo de préstamo.
-- - Monto promedio de préstamo por tipo de préstamo.
SELECT * FROM TiposPrestamo;
SELECT * FROM Prestamos;

SELECT 
	TiposPrestamo.NombreTipo AS 'Tipo de Préstamo',
    SUM(Prestamos.Monto) AS 'Monto Total Prestado',
    COUNT(Prestamos.PrestamoID) AS 'Número de Préstamos',
    AVG(Prestamos.Monto) AS 'Monto Promedio de Préstamo'
FROM Prestamos
INNER JOIN 
	TiposPrestamo ON Prestamos.TipoPrestamoID = TiposPrestamo.TipoPrestamoID
GROUP BY
    TiposPrestamo.NombreTipo;

-- Prestamos mayores a un monto 500000

SELECT *
FROM Prestamos
WHERE Prestamos.Monto > 50000;
  
SELECT
  PrestamoID,
  ClienteID,
  Monto,
  FechaEmision
FROM Prestamos
WHERE Prestamos.Monto > 50000;

-- Total del Monto Prestado por Cliente
SELECT * FROM Prestamos;
SELECT ClienteID, SUM(Monto) FROM Prestamos GROUP BY ClienteID;

-- Cuantos prestamos se han emitido cada mes "FECHAS"
SELECT COUNT(PrestamoID) AS 'Número de Prestamos', MONTH(FechaEmision) AS 'Mes', YEAR(FechaEmision) as 'Año' 
FROM Prestamos 
GROUP BY MONTH(FechaEmision), YEAR(FechaEmision);