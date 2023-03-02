use registros;

delete from registros_personas where id=5;

set SQL_SAFE_UPDATES=0;

delete from registros_personas where apellido like 'R%';

TRUNCATE TABLE registros_personas;

insert into registros_personas(nombre, apellido, fecha_cumpleaños, estado_civil, ciudad)
values
('Feer','Silvero','1996-03-03','Casado','Misiones'),
('Mar','Martinez','1997-01-07','Casada','Formosa'),
('Jiri','Prochaska','1992-09-01','Soltero','Chaco'),
('Mali','Vargas','1986-11-13','Casada','Jujuy'),
('Siri','Rampl','1982-12-22','Casada','Chubut'),
('Marcos','Stemp','1980-08-29','Casado','Rosario'),
('Antonio','Zalp','1989-05-17','Casado','Misiones');

select id, nombre, apellido, fecha_cumpleaños, estado_civil, ciudad from registros_personas where id =5;

update registros_personas set estado_civil = 'Soltera' where id = 5; 

select * from registros_personas;

select id, estado_civil, ciudad from registros_personas where id=2;

update registros_personas set estado_civil = 'Soltera', ciudad = 'Bs As' where id=2;

SELECT * FROM registros_personas;

Select id, nombre, apellido from registros_personas where id=6;

update registros_personas set nombre = 'Ariel', apellido = 'Franks' where id=6;


