use registros;

select * from registros_personas;

delete from registros_personas where id = 5;

set SQL_SAFE_UPDATES=0;

delete from registros_personas where apellido like 'Z%';

DELETE FROM registros_personas where estado_civil = 'casado';

select * from registros_personas;

DELETE FROM registros_personas;

select * from registros_personas;

INSERT INTO registros_personas(nombre, apellido, fecha_cumpleaños, estado_civil, ciudad)
values('Mar', 'Martinez', '1997-12-02', 'Soltera', 'Chubut');

select * from registros_personas;


truncate table registros_personas;

select * from registros_personas;

insert into registros_personas(nombre, apellido, fecha_cumpleaños, estado_civil, ciudad)
values('Feer','Silvero','1996-03-03','Casado','Misiones');

select * from registros_personas;
select id, nombre, apellido, fecha_cumpleaños, estado_civil, ciudad from registros_personas where id =5;
update registros_personas set estado_civil = 'Soltera' where id = 5; 

select * from registros_personas;

select id, estado_civil, ciudad from registros_personas where id=4;

update registros_personas set estado_civil = 'Casado', ciudad = 'Bs As' where id=4;
select * from registros_personas LIMIT 8;

update registros_personas set estado_civil = 'Indefinido';

select * from registros_personas;

select id, estado_civil, ciudad from registros_personas where id=14;


update registros_personas set estado_civil = 'Casado', ciudad = 'Chaco' where id=14; 

select * from registros_personas;

update registros_personas set 
nombre = concat('Javi', ' ', nombre),
apellido= 'Lopez',
fecha_cumpleaños= '2000-05-11',
estado_civil= 'Casado',
ciudad='T Fuego'
where id =2;

select * from registros_personas where id=2;

set SQL_SAFE_UPDATES=1;







 
 
 

 
 




































































