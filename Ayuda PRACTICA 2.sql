use ada;

SET SQL_SAFE_UPDATES = 0;

#Cambia los valores a 3, las registros de la columna "cantidad" que tengan como valor 2
update personas set cantidad = '3' where cantidad = 2;

SELECT * FROM personas;

#Trae el 10% de descuento en todos los registros de la columna "cantidad"
select cantidad,  cantidad*0.1,cantidad -(cantidad*0.1) from personas;

#Trae el 10% de descuento en todos los registros de la columna "cantidad" con apodos
select cantidad,  cantidad*0.1 as descuento ,cantidad - (cantidad*0.1) as total from personas;

#Trae el 10% de descuento en todos los registros de la columna "cantidad" que valgan 3
select cantidad,  cantidad*0.1,cantidad -(cantidad*0.1) from personas where cantidad =3;







