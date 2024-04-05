## EJERCICIO DE ANALISIS FINACIERO

### Enunciado:

Imagina que trabajas como analista de datos en un banco y te han asignado la tarea de generar un informe mensual para la dirección. Este informe debe proporcionar una visión general de las transacciones financieras realizadas por los clientes del banco, centrada especialmente en los préstamos. El banco desea identificar los montos totales prestados, el número total de préstamos y el promedio del monto prestado, agrupados por tipo de préstamo para el último mes. Además, el informe debe incluir el nombre del tipo de préstamo para facilitar la comprensión de los datos.

**Tablas Involucradas**

Para este caso, trabajaremos con dos tablas principales:

1. **Prestamos**: Contiene detalles sobre los préstamos emitidos a los clientes.
   - `PrestamoID`: Identificador único para el préstamo.
   - `ClienteID`: Identificador del cliente que recibió el préstamo.
   - `TipoPrestamoID`: Identificador del tipo de préstamo.
   - `Monto`: El monto total del préstamo.
   - `FechaEmision`: La fecha en que se emitió el préstamo.

2. **TiposPrestamo**: Enumera los diferentes tipos de préstamos que ofrece el banco.
   - `TipoPrestamoID`: Identificador único para cada tipo de préstamo.
   - `NombreTipo`: El nombre descriptivo del tipo de préstamo, como "Hipotecario", "Personal", etc.

**Requerimientos del Informe**

El informe debe contener las siguientes columnas:
- Nombre del tipo de préstamo.
- Monto total prestado por tipo de préstamo.
- Número total de préstamos por tipo de préstamo.
- Monto promedio de préstamo por tipo de préstamo.