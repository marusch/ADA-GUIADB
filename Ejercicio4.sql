use registros;

select nombre from registros_personas limit 5;

SELECT LENGTH(nombre) from registros_personas LIMIT 5;

select nombre from registros_personas limit 5;

SELECT UPPER(nombre) AS nombre_upper from registros_personas;

select nombre from registros_personas limit 5;

SELECT LOWER(nombre) AS nombre_lower from registros_personas;

SELECT CONCAT(nombre, ', ', apellido) from registros_personas;

SELECT COUNT(*) FROM registros_personas;

SELECT DAY(fecha_cumpleaños) FROM registros_personas;

SELECT MONTH(fecha_cumpleaños) FROM registros_personas;

SELECT YEAR(fecha_cumpleaños) FROM registros_personas;

SELECT estado_civil, COUNT(*) FROM registros_personas GROUP BY estado_civil;
































































