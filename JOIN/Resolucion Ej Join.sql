create database SupermercadoSA;

use SupermercadoSA;

create table Sucursal(
id int,
Nombre varchar(30),
Direccion varchar(25) not null,

primary key(id)
);

create table Empleado(
idEmpleado int not null,
Nombre varchar(20) not null,
IdSucursal int not null,

foreign key(IdSucursal) references Sucursal(id),
primary key(idEmpleado)
);


insert into Sucursal (id, Nombre, Direccion)
values(12, 'Panificados', 'Av Lopez Torres'),
(133, 'Distribuidora', 'Av Francisco de Aro'),
(109, 'Regaleria', 'Av Belgrano'),
(265, 'Fruteria y Verduleria', 'Av Bibanco');


insert into Empleado(idEmpleado, Nombre, IdSucursal)
values(12340, 'Juan Pedro', 12),
(10998, 'Williams', 133),
(234112, 'Robets Hunck', 109),
(33409, 'Mihael Lops', 133),
(16785, 'Mar Lopez', 265);

-- INNER JOIN - SIN APODO, trayendo todo *
SELECT * 
FROM Empleado E
JOIN Sucursal S
ON E.IdSucursal = S.id;

-- LEFT JOIN
SELECT
E.Nombre as 'Empleado',
S.Nombre as 'Sucursal'
FROM Empleado E
LEFT JOIN Sucursal S
ON E.IdSucursal = S.id; 

--  RIGHT JOIN
SELECT
E.Nombre as 'Empleado',
S.Nombre as 'Sucursal'
FROM Empleado E
RIGHT JOIN Sucursal S
ON E.IdSucursal = S.id; 

-- INNER JOIN CON  APODOS, trayendo solo los nombres de sucursales y empleados
SELECT 
E.Nombre as 'Empleado',
S.Nombre as 'Sucursal'
FROM Empleado E
JOIN  Sucursal S
ON E.IdSucursal = S.id where id > 3; 


SELECT 
E.Nombre as 'Empleado',
S.Nombre as 'Sucursal'
FROM Empleado E
JOIN  Sucursal S
ON E.IdSucursal = S.id where E.Nombre like "A%"; 
