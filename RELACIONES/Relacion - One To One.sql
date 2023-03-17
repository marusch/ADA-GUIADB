create database onetone;

use onetone;

/* Cuando utilizamos una relacion One To One, cuando la relacion es muy estrecha, 
por ej: Un persona posee un DNI o una sola Identidad */

-- Tabla principal - Una persona tiene un DNI 
create table persona(
id int auto_increment not null,
nombre varchar(30),
apellido varchar(30),

primary key(id)
);

-- Tabla secundaria
create table dni(
dni int not null,
id int not null unique,  -- Una llave foranea fk acepta repeticiones entre sus valores; 
						   -- una llave primaria Pk o una UNICA(UNIQUE) NO aceptan repeticiones.

primary key(dni),
foreign key(id) references persona(id)
);

#Insertamos datos
insert into persona(nombre, apellido)
values('Maria', 'Schuindt'),
('Fernando', 'Silvero'),
('Sofia', 'Vargas');

insert into dni(dni,id)
values('37071954', 1),
('37430876', 2),
('43071234',3);

-- Esto no podriamos hacer ya que, estariamos poniendo otro DNI a la misma persona que ya contiene uno,
-- Lo cual tendremos un error por duplicar un registros, que ya tenia un valor unico.
insert into dni(dni,id)
value('37055954',1);
