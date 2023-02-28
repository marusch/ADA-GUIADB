create database registros;

use registros;

create table registros_personas(
id INT auto_increment,
nombre varchar(10) not null,
apellido varchar(10) not null,
fecha_cumpleaños date not null,
estado_civil varchar(10) not null,
ciudad varchar(10) not null,

primary key(id)
);

insert into registros_personas
(nombre, apellido, fecha_cumpleaños, estado_civil, ciudad)
values('Maru', 'Schuindt', '1997-01-07', 'casada', 'Misiones'),
('Fer', 'Silvero', '1996-03-03', 'casado', 'Misiones'),
('Maca', 'Vargas', '1997-11-23', 'casada', 'Chaco'),
('Adrian', 'Rodriguez', '2000-09-15', 'soltero', 'Formosa');

select * from registros_personas;

select nombre, apellido from registros_personas;

select * from registros_personas order by nombre, apellido ASC;

select * from registros_personas where estado_civil = 'casada';

select * from registros_personas where estado_civil = 'soltera';

select * from registros_personas where apellido = 'Baez';

select * from registros_personas where apellido = 'Vargas' and estado_civil = 'Soltero';

insert into registros_personas
(nombre, apellido, fecha_cumpleaños, estado_civil, ciudad)
values('Daniel', 'Vargas', '1882-12-22', 'casado', 'Jujuy');

UPDATE `registros_personas` SET `apellido` = 'Vegas' WHERE (`id` = '5');

delete from registros_personas where (`id` ='3');

select * from registros_personas limit 3 offset 2;

select * from registros_personas where nombre like 'A%';

select * from registros_personas where apellido like '%Z';















