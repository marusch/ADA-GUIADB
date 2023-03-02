create database phonebookdb;

use phonebookdb;

create table contact(
id int auto_increment,
name varchar(50),
last_name varchar(50),
address varchar(100),
number_phone varchar(20),

primary key(id)
);

select * from contact;

insert into contact(name, last_name, address, number_phone)
values('Mar', 'Martinez', 'Av Aguado','123456789');

insert into contact(name, last_name, address, number_phone)
values('Jiri', 'Prochaska', 'Av Blas','345678999');

insert into contact(name, last_name, address, number_phone)
values('This', 'Vegas', 'Av T.Guido','56789883332');

insert into contact(name, last_name, address, number_phone)
values('Tyson', 'Block', 'Av MartinF','6543222100');

insert into contact(name, last_name, address, number_phone)
values('Mic', 'Huck', 'Av Mitre','834673686428');

insert into contact(name, last_name, address, number_phone)
values('Juy', 'Lopez', 'Av Caso','23456789'),
('Leeb', 'Huck', 'Av Tomp','45678999'),
('Mac', 'Tompson', 'Av Lopez','2345678'),
('Any', 'Levanne', 'Av Lavalle','345678'),
('Zare', 'Mick', 'Av Mast','3456789');

select * from contact;





