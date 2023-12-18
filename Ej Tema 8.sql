
INSERT INTO fabricante (codigo, nombre) VALUES (1, 'Siemens');

INSERT INTO fabricante (nombre) VALUES ('KIA');

INSERT INTO producto (codigo, nombre, precio, codigo_fabricante) VALUES (1, 'Siemens', 100, 1);

INSERT INTO producto (nombre, precio, codigo_fabricante) VALUES ('KIA', 150, 2);

CREATE TABLE fabricante_productos AS
SELECT nombre AS nombre_fabricante, nombre AS nombre_producto, precio
FROM fabricante
JOIN producto ON codigo = codigo_fabricante;

DELETE FROM fabricante WHERE nombre = 'Asus';

UPDATE fabricante SET codigo = 20 WHERE nombre = 'Lenovo';

UPDATE fabricante SET codigo = 30 WHERE nombre = 'Huawei';

UPDATE producto SET precio = precio + 5;

DELETE FROM producto WHERE nombre = 'Impresora' AND precio < 200;
