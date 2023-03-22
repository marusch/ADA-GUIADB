CREATE DATABASE Supeer;

USE Supeer;


CREATE TABLE Departamentos(
id int not null,
Nombre varchar(20),

primary key(id)
);

CREATE TABLE Empleados(
Nombre varchar(20),
DepartamentoId int,

foreign key(DepartamentoId) references Departamentos(id),
primary key(Nombre)
);

INSERT INTO Departamentos VALUES
(33, 'Engineering'),
(34, 'Clerical'),
(35, 'Marketing');

INSERT INTO Empleados
 VALUES('Jones', 33),
 ('Heisenberg', 33),
('Robinson', 34),
('Smith', 34),
 ('Williams', null);

SELECT * FROM Empleados;
SELECT * FROM Departamentos;

-- INNER JOIN - SIN APODO, trayendo todo *
SELECT * 
FROM Empleados E
JOIN Departamentos D
ON E.DepartamentoId = D.Id;

-- INNER JOIN CON  APODOS, trayendo solo los nombres de departamentos y empleados
SELECT 
E.Nombre as 'Empleado',
D.Nombre as 'Departamento'
FROM Empleados E
JOIN Departamentos D
ON E.DepartamentoId = D.Id; 

-- LEFT JOIN
SELECT
E.Nombre as 'Empleado',
D.Nombre as 'Departamento'
FROM Empleados E
LEFT JOIN Departamentos D
ON E.DepartamentoId = D.Id; 

--  RIGHT JOIN
SELECT
  E.Nombre as 'Empleado',
  D.Nombre as 'Departamento'
FROM Empleados E
RIGHT JOIN Departamentos D
ON E.DepartamentoId = D.Id; 


-- FULL JOIN - aún no está implementado en MySQL :(
SELECT
  E.Nombre as 'Empleado',
  D.Nombre as 'Departamento'
FROM Empleados 
FULL JOIN Departamentos D
ON DepartamentoId = D.Id; 

-- Entretanto, podemos unir un LEFT JOIN con un RIGHT JOIN para obtener el FULL JOIN que buscamos:
SELECT E.Nombre as 'Empleado',
  D.Nombre as 'Departamento'
  FROM Empleados E
  LEFT JOIN Departamentos D
  ON E.DepartamentoId = D.Id
UNION
SELECT E.Nombre as 'Empleado',
  D.Nombre as 'Departamento'
  FROM Empleados E
  RIGHT JOIN Departamentos D
  ON E.DepartamentoId = D.Id;


-- INNER JOIN CON CLAUSULA WHERE
SELECT * 
FROM Empleados E
JOIN Departamentos D
ON E.DepartamentoId = D.Id where DepartamentoId > 33;

-- INNER JOIN CON APODOS Y CLAUSULA WHERE
SELECT 
E.Nombre as 'Empleado',
D.Nombre as 'Departamento'
FROM Empleados E
JOIN Departamentos D
ON E.DepartamentoId = D.Id where DepartamentoId > 32; 


-- INNER JOIN CON APODOS, TRABAJANDO CON LA SENTENCIA LIKE

SELECT 
E.Nombre as 'Empleado',
D.Nombre as 'Departamento'
FROM Empleados E
JOIN Departamentos D
ON E.DepartamentoId = D.Id where E.Nombre like "S%"; 

SELECT 
E.Nombre as 'Empleado',
D.Nombre as 'Departamento'
FROM Empleados E
JOIN Departamentos D
ON E.DepartamentoId = D.Id where D.Nombre like "C%"; 

-- Operador =

SELECT 
E.Nombre as 'Empleado',
D.Nombre as 'Departamento'
FROM Empleados E
JOIN Departamentos D
ON E.DepartamentoId = D.Id where D.Nombre = "Clerical"; 
