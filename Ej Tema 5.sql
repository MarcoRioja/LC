
USE  empresa;
SELECT empleado, departamento
FROM empleado 
JOIN departamento ON codigo_departamento = codigo;

SELECT empleado, departamento
FROM empleados 
JOIN departamentos  ON codigo_departamento = codigo
ORDER BY nombre, apellido1, nombre;

SELECT DISTINCT codigo, nombre
FROM empleado
JOIN departamento d ON codigo_departamento = codigo;

SELECT codigo, nombre, (presupuesto - gastos) AS presupuesto_actual
FROM empleado
JOIN departamento ON codigo_departamento = codigo;

SELECT nombre
FROM empleado
JOIN departamento ON codigo_departamento = codigo
WHERE nif = '38382980M';

SELECT nombre
FROM empleado
JOIN departamento  ON codigo_departamento = codigo
WHERE nombre = 'Pepe' AND apellido1 = 'Ruiz';

SELECT empleado
FROM empleado
JOIN departamentos d ON codigo_departamento = codigo
WHERE nombre IN ('Sistemas', 'Contabilidad', 'I+D')
ORDER BY nombre, apellido1;

SELECT empleado
FROM empleado
JOIN departamento ON codigo_departamento = codigo
WHERE nombre IN ('Sistemas', 'Contabilidad', 'I+D')
ORDER BY nombre, apellido1;

SELECT DISTINCT nombre
FROM empleado
JOIN departamento ON codigo_departamento = codigo
WHERE resupuesto < 100000 OR presupuesto > 200000;

SELECT DISTINCT nombre
FROM empleado
JOIN departamento ON codigo_departamento = codigo
WHERE apellido2 IS NULL;
