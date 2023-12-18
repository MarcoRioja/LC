
SELECT SUM(presupuesto) AS suma_presupuesto
FROM departamento;

SELECT AVG(presupuesto) AS media_presupuesto
FROM departamento;

SELECT MIN(presupuesto) AS min_presupuesto
FROM departamento;

SELECT nombre, presupuesto
FROM departamento
WHERE presupuesto = (SELECT MIN(presupuesto) FROM departamentos);

SELECT MAX(presupuesto) AS max_presupuesto
FROM departamento;

SELECT nombre, presupuesto
FROM departamento
WHERE presupuesto = (SELECT MAX(presupuesto) FROM departamentos);

SELECT COUNT(*) AS total_empleados
FROM empleado;

SELECT COUNT(*) AS empleados_sin_null_apellido2
FROM empleado
WHERE apellido2 IS NOT NULL;

SELECT departamento, COUNT(*) AS num_empleado
FROM empleado
GROUP BY departamento;

SELECT departamento, COUNT(*) AS num_empleado
FROM empleado
GROUP BY departamento;

SELECT departamento, COUNT(*) AS num_empleado
FROM empleado
GROUP BY departamento;

SELECT nombre AS nombre_departamento, COUNT(e.id) AS num_empleado
FROM departamento 
LEFT JOIN empleado e ON d.id = e.departamento
WHERE presupuesto > 200000
GROUP BY nombre;
