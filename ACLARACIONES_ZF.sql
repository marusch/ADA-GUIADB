create database prueba;

use prueba;

create table prueba(
telefono int zerofill not null,
nombre varchar(20) not null,
ciudad varchar(20),

primary key(telefono));

insert into prueba(telefono, nombre, ciudad)
values(01234, 'Maru', 'Bs As'),
(06778, 'Fer', 'Misiones'),
(6234, 'Sof', 'Chaco');

select * from prueba;
