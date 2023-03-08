use ada;

select * from personas;

#Traer los registros con una cantidad mayor a 150
select * from personas where cantidad > 150;

#Traer los registros con una cantidad menor a 150
select * from personas where cantidad < 150;

use registros;

#Consultar las personas que su dia de cumpleaños sea mayor a 20
select * from registros_personas where day(fecha_cumpleaños) >20;

#Consultar las personas que su año de nacimiento sea menor al 2000
select * from registros_personas where year(fecha_cumpleaños) <2000;

#Traer esplicitamente nombre, apellido, cumpleaños y ciudad de las personas que nacieron antes del 2000
select nombre, apellido, fecha_cumpleaños, ciudad from registros_personas where year(fecha_cumpleaños) <2000;

#Consultar y agrupar el recuento de las personas que nacieron antes del 2000
select count(*) from registros_personas where year(fecha_cumpleaños) <2000;

#Consultar las personas que su año de nacimiento sea antes del 2000 y esten casadas
select * from registros_personas where year(fecha_cumpleaños) <2000 and estado_civil = 'casada';

#Consultar nombre, apellido y cumpleaños, de las personas que su año de nacimiento sea despues del 2000
select nombre, apellido, fecha_cumpleaños from registros_personas where year(fecha_cumpleaños)>2000;

#Consultar nombre, apellido y ciudad, de las personas que son casadas y de Rosario
select nombre, apellido, estado_civil, ciudad from registros_personas where estado_civil = 'Casada' and ciudad = 'Rosario';

#Consultar una persona que este casada, sea de Misiones y haya nacido en 1982
select * from registros_personas where estado_civil = 'casada' and ciudad = 'Misiones' and year(fecha_cumpleaños) = 1982;

#Consultar y ordenar de mayor a menor edad
select fecha_cumpleaños from registros_personas order by fecha_cumpleaños asc;

#Consultar y ordenar de mayor a menor edad, con orden en los nombres 
select nombre, fecha_cumpleaños from registros_personas order by fecha_cumpleaños asc, nombre asc;


