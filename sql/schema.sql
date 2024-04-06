CREATE DATABASE banco_central;
use banco_central;

-- Creación de la tabla TiposPrestamo
-- Almacena los distintos tipos de préstamos que ofrece el banco.
CREATE TABLE TiposPrestamo (
    TipoPrestamoID INT AUTO_INCREMENT PRIMARY KEY,
    NombreTipo VARCHAR(255) NOT NULL
);

-- Creación de la tabla Prestamos
-- Contiene los detalles de los préstamos emitidos a los clientes.
-- Incluye una clave foránea que referencia a TipoPrestamoID en la tabla TiposPrestamo.
CREATE TABLE Prestamos (
    PrestamoID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT NOT NULL,
    TipoPrestamoID INT NOT NULL,
    Monto DECIMAL(10, 2) NOT NULL, -- El monto del préstamo con dos decimales.
    FechaEmision DATE NOT NULL, -- La fecha de emisión del préstamo.
    FOREIGN KEY (TipoPrestamoID) REFERENCES TiposPrestamo(TipoPrestamoID)
)