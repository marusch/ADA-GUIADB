use ada;

SET SQL_SAFE_UPDATES = 0;

#Cambia los valores a 4, las registros de la columna "cantidad" que tengan como valor 3
update personas set cantidad = '4' where cantidad = 3;

SELECT * FROM personas;

#Trae el 10% de descuento en todos los registros de la columna "cantidad"
select cantidad,  cantidad*0.1,cantidad -(cantidad*0.1) from personas;

#Trae el 10% de descuento en todos los registros de la columna "cantidad" con apodos
select cantidad,  cantidad*0.1 as descuento ,cantidad - (cantidad*0.1) as total from personas;

#Trae el 10% de descuento en todos los registros de la columna "cantidad" que valgan 3
select cantidad,  cantidad*0.1,cantidad -(cantidad*0.1) from personas where cantidad =3;

#Traer la cantidad minima
SELECT MIN(cantidad)
FROM personas;

#Traer la cantidad maxima
SELECT MAX(cantidad)
FROM personas;

#Traer el monto minimo con WHERE condition;
SELECT MIN(cantidad)
FROM personas
WHERE cantidad >=900 and cantidad <=1000;

#Recuento y agrupacion de personas por nombre
SELECT name, COUNT(*) AS recuento FROM personas GROUP BY name;

#Recuento y agrupacion de cantidades
SELECT cantidad, COUNT(*) AS recuento FROM personas GROUP BY cantidad;

#Recuento y agrupacion de cantidades con una condicion
SELECT cantidad, COUNT(*) AS recuento FROM personas where cantidad >3 GROUP BY cantidad;

