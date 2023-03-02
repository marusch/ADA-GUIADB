#DDL
create database ada;

use ada;

create table person(
id int auto_increment, #No es necesario agregar o cargar datos, incrementa automaticamente
name varchar(10) not null,
last_name varchar(10) not null,
number_phone int not null
);

#DML
insert into person(name, last_name, number_phone)
values('Maru', 'Schuindt', '12345678'),
('Fer', 'Silvero', '087654321|');

select * from person;

select name, last_name from person;