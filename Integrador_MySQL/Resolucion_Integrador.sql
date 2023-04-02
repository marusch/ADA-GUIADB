use nba;

select nombre 
from jugadores 
order by nombre;

select nombre 
from jugadores 
where posicion like '%C%' and peso>200 
order by nombre;

select nombre 
from equipos 
order by nombre;

select nombre 
from equipos 
where lower(conferencia) = 'east'
order by nombre;

select nombre 
from equipos 
where lower(ciudad) like 'c%'
order by nombre;

SELECT 
E.Nombre as 'Equipo',
J.Nombre as 'Jugadores'
FROM equipos E
JOIN jugadores J
ON J.Nombre_equipo = E.Nombre; 


SELECT COUNT(*) AS person__quantity FROM jugadores;

SELECT COUNT(*) AS partidos_registrados FROM partidos;

SELECT COUNT(*) AS estadisticas_registradas FROM estadisticas;

SELECT COUNT(*) AS equipos_registrados FROM equipos;

SELECT temporada, COUNT(*) AS registros_temporadas FROM partidos GROUP BY temporada;

SELECT 
P.puntos_local as 'Puntos Equipo Local',
E.nombre as 'Nombre del Equipo'
FROM partidos P
JOIN Equipos E
ON P.puntos_local = E.Nombre; 

SELECT CONCAT(nombre, ', ', Altura , ', ', Peso, ', ', Posicion) AS Datos from jugadores;

SELECT CONCAT(nombre, ' , ', Nombre_equipo) AS Division from jugadores;

SELECT Rebotes_por_partido, COUNT(*) AS Conteo FROM estadisticas GROUP BY Rebotes_por_partido;

SELECT Asistencias_por_partido, COUNT(*) AS Conteo FROM estadisticas GROUP BY Asistencias_por_partido;

SELECT jugador, COUNT(*) AS Conteo FROM estadisticas GROUP BY jugador;

SELECT MAX(Puntos_por_partido)
FROM estadisticas;

SELECT MAX(puntos_visitante)
FROM partidos;

SELECT Nombre, Nombre_equipo, MAX(Altura)
FROM jugadores;

SELECT  Nombre, Nombre_equipo, MAX(Peso)
FROM jugadores;

SELECT Nombre, Nombre_equipo , MIN(Altura)
FROM jugadores;

SELECT Nombre, Nombre_equipo ,MIN(Peso)
FROM jugadores;

-- Forma Basica
SELECT concat(nombre, ' - ', posicion ) as 'Nombre y Posicion', nombre_equipo from jugadores;

-- JOIN
SELECT concat(jugadores.nombre, ' - ' , jugadores.posicion) as 'Nombre y Posicion',
equipos.nombre
FROM jugadores
JOIN equipos
 ON equipos.nombre = jugadores.nombre_equipo;


SELECT nombre, concat(peso, ' - ' , altura) as 'Peso y Altura', nombre_equipo from jugadores;

SELECT temporada from estadisticas where temporada > '06/07';

SELECT nombre from equipos where nombre like "C%";

SELECT ciudad, division from equipos;

SELECT Conferencia from equipos where Conferencia like "%N";

SELECT nombre, posicion, nombre_equipo from jugadores;

SELECT posicion, nombre_equipo from jugadores where peso > '6-7';






