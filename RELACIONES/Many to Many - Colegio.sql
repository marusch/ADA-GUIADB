create database colegio;
use colegio;

-- Relacion Many to Many
create table alumno(
id_alumno int auto_increment not null,
nombre varchar(20) not null,
apellido varchar(20) not null,
edad int(20) not null,

primary key(id_alumno)
);

create table profesor(
id_profesor int auto_increment not null,
nombre varchar(20) not null,
apellido varchar(20) not null,
edad int(20) not null,

primary key(id_profesor)
);

#Tabla asociativa 
create table alumno_profesor(
id_alumno_fk int not null,
id_profesor_fk int not null
);

#Añadimos las claves foreaneas para relacionarlos
alter table alumno_profesor add constraint alumno_profesor_fk0 foreign key(id_alumno_fk) references alumno(id_alumno);

alter table alumno_profesor add constraint alumno_profesor_fk1 foreign key(id_profesor_fk) references profesor(id_profesor);

insert into alumno(nombre, apellido, edad)
values('Fer', 'Silvero', '27');

select * from alumno;

insert into profesor(nombre, apellido, edad)
values('Ernesto', 'De la Cruz', '36');

select * from profesor;

insert into alumno_profesor(id_alumno_fk, id_profesor_fk)
values(1,1);

select * from alumno_profesor;

insert into alumno(nombre, apellido, edad)
values('Mar', 'Schuindt', '27');

select * from alumno;

insert into alumno_profesor(id_alumno_fk, id_profesor_fk)
values(2,1);

select * from alumno_profesor;