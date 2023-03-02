USE AdaDB;

-- --------------------------------------------------------------
-- STATEMENT SQL DELETE
-- DELETE FROM [ TableName ] WHERE [ Condition ];
-- --------------------------------------------------------------
SELECT * FROM Person;
DELETE FROM Person WHERE id = 5;
SELECT * FROM Person;

DELETE FROM Person WHERE last_name LIKE 'm%';
SELECT * FROM Person;

DELETE FROM Person WHERE gender IS NULL;
SELECT * FROM Person;

DELETE FROM Person;
SELECT * FROM Person;

INSERT INTO Person
    (name, last_name, birthday, gender, civil_status)
VALUES
    ('Pedro', 'Martinez', '1991-02-05', 'M', 'Soltero/a');
SELECT * FROM Person;

-- --------------------------------------------------------------
-- STATEMENT SQL TRUNCATE
-- TRUNCATE [ TableName ];
-- TRUNCATE TABLE [ TableName ];
-- --------------------------------------------------------------

TRUNCATE TABLE Person;
TRUNCATE Person;
SELECT * FROM Person;

INSERT INTO Person
    (name, last_name, birthday, gender, civil_status)
VALUES
    ('Pedro', 'Martinez', '1991-02-05', 'M', 'Soltero/a'),
    ('Maria', 'Cruz', '1987-06-15', 'F', 'Soltero/a'),
    ('Mariano', 'Ruiz', '1993-11-29', 'M', 'Casado/a'),
    ('Juana', 'Gonzalez', '1970-03-21', NULL, NULL),
    ('Javier', 'Salazar', '2000-09-01', 'M', NULL),
    ('Maria', 'Mendoza', '1997-01-30', 'F', 'Comprometido/a'),
    ('Luis', 'Perez', '2002-03-01', NULL, 'Soltero/a');

INSERT INTO Person
    (name, last_name, birthday)
VALUES
    ('Ariel', 'Ramires', '2009-05-21'),
    ('Abel', 'Rodriguez', '2002-09-01'),
    ('Andrea', 'Zabala', '2007-01-15'),
    ('Alejandro', 'Espinoza', '2004-12-31'),
    ('Yenni', 'Gutierrez', '2001-03-27'),
    ('Jorge', 'Vargas', '1971-10-08'),
    ('Silvia', 'Batista', '1989-02-28'),
    ('Miguel', 'Rodriguez', '2005-11-15');

SELECT * FROM Person;

-- --------------------------------------------------------------
-- STATEMENT SQL UPDATE
-- UPDATE [ TableName ] SET
--      [ FieldName1 ] = [ NewValue1 ],
--      [ FieldName2 ] = [ NewValue3 ],
--      ...
--      [ FieldNameN ] = [ NewValueN ],
-- WHERE [ Condition ];
-- --------------------------------------------------------------
SELECT id, name, last_name, civil_status FROM Person WHERE id = 5;
UPDATE Person SET civil_status = 'Soltero/a' WHERE id = 5;
SELECT id, name, last_name, civil_status FROM Person WHERE id = 5;

SELECT * FROM Person WHERE civil_status IS NULL;
UPDATE Person SET civil_status = 'Soltero/a' WHERE civil_status IS NULL;
SELECT * FROM Person;

SELECT * FROM Person LIMIT 8;
UPDATE Person SET civil_status = 'UPDATE SIN WHERE';
SELECT * FROM Person LIMIT 5;

-- EXECUTE STATEMENT TRUNCATE THEN INSERT INTO

SELECT id, gender, civil_status FROM Person WHERE id = 14;

UPDATE Person SET
    gender = 'F',
    civil_status = 'Soltero/a'
WHERE id = 14;

SELECT id, gender, civil_status FROM Person WHERE id = 14;


SELECT * FROM Person WHERE id = 8;

UPDATE Person SET
    name = CONCAT('Isis', ' ', name),
    last_name = 'Ramirez',
    birthday = '2008-05-21',
    gender = 'F',
    civil_status = 'Soltero/a'
WHERE id = 8;

SELECT * FROM Person WHERE id = 8;