create database ejemplo;
use ejemplo;

#Relaciones 1:N - One to Many - Carrera 1:N Alumno
create table carrera(
id int auto_increment,
nombre varchar(30),
primary key(id)
);

create table alumno(
matricula char(7) primary key,
nombre varchar(30),
promedio decimal(8.9),
idCarrera int not null,

foreign key(idCarrera) references carrera(id)
);

#Insertamos datos
insert into carrera(nombre)
values('Ingles');

insert into alumno(matricula, nombre, promedio, idCarrera)
values('0303071', 'Maru', '9.8', 1);

select * from carrera;

select * from alumno;

#Esto no podemos hacer ya que nuestras tablas estan relacionadas y solo tenemos una carrera registrada, 
#Por lo tanto, no nos dejara cargar registros invalidos o que no tengan relacion.
insert into alumno(matricula, nombre, promedio, idCarrera)
values('0003052', 'Sof', '8', 2);


#Relaciones N:N - Many to Many - Alumno N:N Materia

/*Cuando la relacion es Muchos a Muchos, ambas tablas son principales, asi que ninguna tendra la clave(key) de la otra.
Aqui aplicaremos lo de crear una tabla auxiliar, para que nos ayude con este inconveniente re la relacion, 
y alojar justamente ambas llaves(key o  claves) para la relacion*/

create table materia(
cve int auto_increment,
nombre varchar(20),

primary key(cve)
);

#creamos la tabla auxiliar
create table alumno_cursa_materia(
matricula char(7),  #Clave primaria de la tabla alumno - No hace falta llamarlo igual, pero el T. de dato y longitud si
cve_materia int,    #Clave primaria de la tabla materia - el T. de dato y longitud tambien deben ser iguales

foreign key(matricula) references alumno(matricula), -- fk1
foreign key(cve_materia) references materia(cve), -- fk2

#Como sabemos tenemos que tener una PK, asi que esta misma va ser la combinacion entre la mmatricula y cve_materia
primary key(matricula, cve_materia)
);


insert into materia(nombre)
values('Ingles'),
('Informatica');

select * from materia;

#Insertamos que el mismo alumno cargado, cursa las 2 materias registradas
insert into alumno_cursa_materia(matricula, cve_materia) 
values('0303071', 1),
('0303071', 2);

select * from alumno_cursa_materia;


# Relacion One to One - Alumno 1:1 Domicilio

create table domicilio(
id int not null auto_increment,
calle varchar(30),
numero int,
ciudad varchar(35),
matricula char(7) unique,  -- Una llave foranea fk acepta repeticiones entre sus valores; 
						   -- una llave primaria Pk o una UNICA(UNIQUE) NO aceptan repeticiones.

primary key(id),
foreign key(matricula) references alumno(matricula)
);

describe domicilio; #Describe nos muestra la estructura de una tabla

#Insertamos un registro para el alumno
insert into domicilio(calle, numero, ciudad, matricula) 
values('Aguado', '68', 'San Juan', '0303071');

select * from domicilio;

/*Si quisieramos insertar al mismo alumno otro domicilio, deberia tirarnos un error, 
ya que al validar con el campo matricula que sea "unica" (unique), no permitiria dobles registros*/

insert into domicilio(calle, numero, ciudad, matricula) 
values('Blas', '14', 'San Juan', '0303071'); 



