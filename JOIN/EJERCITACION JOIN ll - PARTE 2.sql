create database Sucursal_B;

use Sucursal_B;

create table Tiendas(
id_tienda int,
Nombre varchar(15) not null,
Direccion varchar(25) not null,

primary key(id_tienda)
);

create table Productos(
id_producto int not null,
id_Tienda int not null,
nombre varchar(29) not null,
precio double not null,

foreign key(id_Tienda) references Tiendas(id_tienda),
primary key(id_producto)
);


insert into Tiendas(id_tienda, Nombre, Direccion)
values(1, 'Shoes', 'Av. Lopez Torres'),
(2, 'Eneimar', 'Av Blas'),
(3, 'Natalia Flinn', 'Av Bustamante'),
(4, 'Merakii', 'Av Corrientes');

insert into Productos(id_producto, id_Tienda, nombre, precio)
values(1, 2, 'Texanas', 1220),
(2, 1, 'Vestido Blue', 9000),
(3, 3, 'Bikinis', 99),
(4, 4, 'Buzos', 8990),
(5, 3, 'Blazer', 876);

select * from Tiendas;

select * from Productos;

-- TRAER TODOS LOS NOMBRES Y DIRECCION DE LAS TIENDAS QUE TENGAN PRODUCTOS CON UN PRECIOA MAYOR A 100
-- SELECCIONAMOS LAS COLUMNAS "NOMBRE Y DIRECCION" DE LA TABLA TIENDAS Y "PRECIO" DE LA TABLA PRODUCTOS, Con su condicion.
SELECT 
T.nombre ,T.direccion,
P.precio
from tiendas T 
JOIN productos P 
ON T.id_tienda = P.id_tienda
where P.precio > 100;

--------------------
-- FUNCION CONCAT --
--------------------

-- SELECCIONAMOS LAS COLUMNAS "NOMBRE Y DIRECCION" AGRUPANDOLAS Y DEJANDOLAS EN UNA MISMA COLUMNA, CON UN APODO "TIENDAS"
SELECT concat(T.nombre, ' - ' ,T.direccion) as 'Tiendas',
P.precio
from tiendas T 
JOIN productos P 
ON T.id_tienda = P.id_tienda
where P.precio > 100;













