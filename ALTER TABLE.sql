use ada;

select * from person;

alter table person
add column ciudad varchar(50) not null;

alter table person
change ciudad direccion varchar(50) not null;

alter table person
drop  direccion;

alter table person
rename  personas;

select * from personas;






