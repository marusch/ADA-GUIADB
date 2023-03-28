create database Sucursal_A;

use Sucursal_A;

create table Clientes(
id_cliente int,
Nombre varchar(15) not null,
Apellido varchar(25) not null,

primary key(id_cliente)
);

create table Pedidos(
id_pedido int not null,
Id_Cliente int not null,
fecha date not null,

foreign key(Id_Cliente) references Clientes(id_cliente),
primary key(id_pedido)
);


insert into Clientes(id_cliente, Nombre, Apellido)
values(1, 'Juan', 'Rosas'),
(2, 'Pedro', 'Cabral'),
(3, 'Jennifer', 'Rask'),
(4, 'Miljaus', 'Mark'),
(5, 'Analia', 'Scromeda');


insert into Pedidos(id_pedido, Id_Cliente, fecha)
values(2, 1, '2023-09-02'),
(3, 2, '2023-01-11'),
(4, 3, '2023-01-22'),
(5, 4, '2023-02-27'),
(6, 5, '2023-03-03'),
(7, 4, '2022-12-30');

select * from Pedidos;

select * from Clientes;

--------------------------------------------------------------------------------------------------------------------
# Traer NOMBRE Y APELLIDO del cliente, dada la condicion de que su pedido haya sido realiizado el mes de enero 2023.
--------------------------------------------------------------------------------------------------------------------

Select 
C.nombre, C.Apellido
from Clientes C 
JOIN Pedidos P
ON C.id_cliente = P.id_cliente
where month(P.fecha) = 1 and year(P.fecha) = 2023;


------------------------------------------------------------------------------------------------------
# Traer NOMBRE Y APELLIDO del cliente, junto con la fecha en que realizo su pedido, dada la condicion.
------------------------------------------------------------------------------------------------------
Select 
C.nombre, C.Apellido,
P.fecha
from Clientes C 
JOIN Pedidos P
ON C.id_cliente = P.id_cliente
where month(P.fecha) = 1 and year(P.fecha) = 2023;


		--------------------
		-- FUNCION CONCAT --
		--------------------

-------------------------------------------------------------------------------------------------------------------------
-- SELECCIONAMOS LAS COLUMNAS "NOMBRE Y APELLIDO" AGRUPANDOLAS Y DEJANDOLAS EN UNA MISMA COLUMNA, CON UN APODO "CLIENTE"
-- Nos traeria, el nombre y apellido del cliente, junto con la fecha de su pedido, con la condicion evaluada.
-------------------------------------------------------------------------------------------------------------------------

Select concat(C.nombre, ' , ' , C.Apellido) as 'Cliente',
P.fecha
from Clientes C 
JOIN Pedidos P
ON C.id_cliente = P.id_cliente
where month(P.fecha) = 1 and year(P.fecha) = 2023; 




