
SELECT *
FROM producto
WHERE fabricante = 'Lenovo';

SELECT *
FROM producto
WHERE precio = (SELECT MAX(precio) FROM producto WHERE fabricante = 'Lenovo');

SELECT nombre
FROM producto
WHERE fabricante = 'Lenovo'
ORDER BY precio DESC
LIMIT 1;

SELECT nombre
FROM producto
WHERE fabricante = 'Hewlett-Packard'
ORDER BY precio
LIMIT 1;

SELECT *
FROM producto
WHERE precio >= (SELECT MAX(precio) FROM producto WHERE fabricante = 'Lenovo');

SELECT *
FROM producto
WHERE fabricante = 'Asus'
  AND precio > (SELECT AVG(precio) FROM producto WHERE fabricante = 'Asus');
