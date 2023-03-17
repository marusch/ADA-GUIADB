create database ManyToMany;

use ManyToMany;

/* ¿Cuando utilizamos una relacion Many To Many?, (Recordemos crear una tabla asociativa)
    Cuando la relacion es un mucho mas abierta, 
    por ej: Una estetica, tienen varios empleados trabajando en ella, y manejan varios clientes en simultaneo */
    
create table empleado(
idEmpleado int not null auto_increment,
nombre varchar(25) not null,
    
primary key(idEmpleado)
);
    
create table cliente(
idCliente int not null auto_increment,
nombre varchar(25) not null,
apellido varchar(25) not null,
celular int(10) not null,
    
primary key(idCliente)
);
    
    
create table empleado_cliente(
idEmpleado_fk int not null,
idCliente_fk int not null,
    
foreign key(idEmpleado_fk) references empleado(idEmpleado), -- fk1
foreign key(idCliente_fk) references cliente(idCliente), -- fk2
    
primary key(idEmpleado_fk, idCliente_fk)
);

insert into empleado(nombre)
values('Millene'),
('Francisco'),
('Cristhian');

insert into cliente(nombre, apellido, celular)
values('Anastasia', 'Stall', '37645312'),
('Felix', 'Olivera', '00981233'),
('Khaterine','Prochaska', '01277693');

-- El mismo cliente puede tener a varios empleados o el mismo empleado varios clientes, 
-- (aplicaria a diferentes puntos, como spa, masajes, perfilado, etc)
insert into empleado_cliente(idEmpleado_fk, idCliente_fk)
values(1,2),
(2,1),
(3,1);

insert into empleado_cliente(idEmpleado_fk, idCliente_fk)
values(2,3),
(3,2);
