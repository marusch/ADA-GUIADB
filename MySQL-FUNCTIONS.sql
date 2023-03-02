use registros;

-- --------------------------------------------------------------
-- MySQL FUNCTION LENGTH
-- --------------------------------------------------------------
SELECT name from registros_personas LIMIT 7;

SELECT LENGTH(nombre) from registros_personas LIMIT 7;
SELECT LENGTH(nombre) AS nombre_length from registros_personas LIMIT 7;

-- --------------------------------------------------------------
-- MySQL FUNCTION UPPER
-- --------------------------------------------------------------
SELECT nombre from registros_personas LIMIT 7;

SELECT UPPER(nombre) from registros_personas LIMIT 7;
SELECT UPPER(nombre) AS name_upper from registros_personas LIMIT 7;

-- --------------------------------------------------------------
-- MySQL FUNCTION LOWER
-- --------------------------------------------------------------
SELECT nombre from registros_personas LIMIT 7;

SELECT LOWER(nombre) from registros_personas LIMIT 7;
SELECT LOWER(nombre) AS name_lower from registros_personas LIMIT 7;

-- --------------------------------------------------------------
-- MySQL FUNCTION LOWER
-- --------------------------------------------------------------
SELECT nombre, apellido from registros_personas LIMIT 7;

SELECT CONCAT(nombre, ', ', apellido) from registros_personas LIMIT 7;
SELECT CONCAT(nombre, ', ', apellido) AS fullname from registros_personas LIMIT 7;

-- --------------------------------------------------------------
-- MySQL FUNCTION COUNT
-- --------------------------------------------------------------
SELECT * FROM registros_personas LIMIT 7;

SELECT COUNT(*) FROM registros_personas;
SELECT COUNT(*) AS person__quantity FROM registros_personas;

-- --------------------------------------------------------------
-- MySQL FUNCTION
-- --------------------------------------------------------------

SELECT fecha_cumpleaños FROM registros_personas LIMIT 7;

SELECT DAY(fecha_cumpleaños) FROM registros_personas LIMIT 7;
SELECT DAY(fecha_cumpleaños) AS birthday_day FROM registros_personas LIMIT 7;

SELECT MONTH(fecha_cumpleaños) FROM registros_personas LIMIT 7;
SELECT MONTH(fecha_cumpleaños) AS birthday_month FROM registros_personas LIMIT 7;

SELECT YEAR(fecha_cumpleaños) FROM registros_personas LIMIT 7;
SELECT YEAR(fecha_cumpleaños) AS birthday_year FROM registros_personas LIMIT 7;

-- --------------------------------------------------------------
-- MySQL FUNCTION GROUP BY
-- --------------------------------------------------------------
SELECT estado_civil, COUNT(*) FROM registros_personas GROUP BY estado_civil;
SELECT estado_civil, COUNT(*) AS quantity FROM registros_personas GROUP BY estado_civil;

-- --------------------------------------------------------------
-- MySQL FUNCTION GROUP BY HAVING
-- --------------------------------------------------------------
SELECT estado_civil, COUNT(*) FROM registros_personas GROUP BY estado_civil HAVING estado_civil IS NOT NULL;
SELECT estado_civil, COUNT(*) AS quantity FROM Person GROUP BY estado_civil HAVING estado_civil IS NOT NULL;


