create database registrodb;

use registrodb;

create table DocumentType(
id int not null auto_increment,
document_type varchar(45) not null,

primary key(id)
);

create table person(                                               
id int not null auto_increment,
name varchar(45) not null,
last_name varchar(45) not null,
number_document varchar(45) not null,
DocumentType_id int not null,
primary key(id),
constraint fk_Person_DocumentType
foreign key(DocumentType_id) references DocumentType(id)

);

#Insertamos registros
insert into DocumentType(document_type)
values('DNI');

insert into person(name, last_name, number_document, DocumentType_id)
values('Maru', 'Schuindt', '43071954', 1);

#Esto no se puede  hacer
SELECT name, document_type AS dt from person;

#Consultamos la persona 
select * from person;

#Consultamos el tipo de documento 
select * from DocumentType;

#Esto si podemos hacer - Consultar nombre y la columna que esta relacionada con la tabla
select name, DocumentType_id from person;

#Consultar la columna que esta relaciona con la tabla Person y el tipo de dato que manejamos
select id, document_type from documentType;



