create database onetoMany;

use onetoMany;

/* ¿Cuando utilizamos una relacion One To Many?, (Que puede ser bidireccional Uno a Muchos o Muchos a Uno)
    Cuando la relacion es un poco mas abierta, 
    por ej: Una sucursal, tiene varios empleados trabajando en ella */

create table sucursal(
id int auto_increment,
nombre varchar(30),

primary key(id)
);

create table empleado(
clave char(7) primary key,
nombre varchar(30),
apellido varchar(30),
idSucursal int not null,

foreign key(idSucursal) references sucursal(id)
);

#Una Sucursal 
insert into sucursal(nombre)
value('California');

#Varios empleados
insert into empleado(clave, nombre, apellido, idSucursal)
values('030701', 'Sofia', 'Vargas', 1),
('987625', 'Stefan', 'Salvatore', 1),
('187762', 'Klaus', 'Saul', 1);

# Creamos otra sucursal
insert into sucursal(nombre)
value('HiperLibertad');

-- Si tratamos de agregar el mismo empleado con clave 030701, que trabaja en la sucursal 1,
-- Nos tirara un error diciendo que estamos duclicando un dato, (haciendo referencia que el empleado ya trabaja en una sucursal)
insert into empleado(clave, nombre, apellido, idSucursal)
values('030701', 'Sofia', 'Vargas', 2);


# Esta sucursal N° 2, tendra sus propios empleados 
insert into empleado(clave, nombre, apellido, idSucursal)
values('987424', 'Juan', 'Perez', 2),
('125698', 'Damon', 'Salvatore', 2),
('091754', 'Millena', 'Klethon', 2);


-- FUNCIONES EN RELACIONES --

# Que nos traiga la cantidad de empleados que trabajan en la sucursal 2
select count(*) from empleado where idSucursal = 2;

# Que nos traiga el apellido y cantidad de empleados que tienen ese apellido y trabajan en la sucursal 2
select apellido, count(*) as cantidad from empleado where idSucursal = 2 group by apellido;

# Que nos traiga nombre y apellido de los empleados que trabajan en la sucursal 1
SELECT CONCAT(nombre, ', ', apellido) as Nombre_Apellido from empleado where idSucursal = 1;




