
SELECT nombre, REVERSE(nombre) AS nombre_invertido
FROM alumno;

SELECT CONCAT(nombre, ' ', apellido1) AS nombre_apellidos,
       REVERSE(CONCAT(nombre, ' ', apellido1)) AS nombre_apellidos_invertidos
FROM alumno;

SELECT UPPER(CONCAT(nombre, ' ', apellido1)) AS nombre_apellidos_mayus,
       LOWER(REVERSE(CONCAT(nombre, ' ', apellido1))) AS nombre_apellidos_invertidos_minus
FROM alumno;

SELECT CONCAT(nombre, ' ', apellido1) AS nombre_apellidos,
       LENGTH(CONCAT(nombre, ' ', apellido1)) AS total_caracteres
FROM alumno;

SELECT CONCAT(nombre, ' ', apellido1) AS nombre_apellidos,
       CONCAT(LOWER(REPLACE(nombre, ' ', '.')), '@iescelia.org') AS correo_electronico
FROM alumno;

SELECT CONCAT(nombre, ' ', apellido1) AS nombre_apellidos,
       CONCAT(LOWER(REPLACE(nombre, ' ', '.')), '@iescelia.org') AS correo_electronico,
       CONCAT(REVERSE(apellido1), SUBSTRING(fecha_nacimiento, 1, 4)) AS contrasena
FROM alumno;


SELECT fecha_nacimiento,
       DAY(fecha_nacimiento) AS dia,
       MONTH(fecha_nacimiento) AS mes,
       YEAR(fecha_nacimiento) AS ano
FROM alumno;

SELECT fecha_nacimiento,
       DAYNAME(fecha_nacimiento) AS nombre_dia_semana,
       MONTHNAME(fecha_nacimiento) AS nombre_mes
FROM alumno;

SELECT fecha_nacimiento,
       DATEDIFF(NOW(), fecha_nacimiento) AS dias_pasados
FROM alumno;
