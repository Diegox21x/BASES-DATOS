DROP DATABASE IF EXISTS ejercicios;
CREATE DATABASE ejercicios;
USE ejercicios;

-- Crear la tabla eje1
CREATE TABLE eje1 (
    a INT,
    b DATE,
    c VARCHAR(5)
);

-- Insertar valores
-- 1. Valores en a, b y c
INSERT INTO eje1 VALUES (22, '2024-09-04', 'act');

-- 2. Valores en orden b, c, a
INSERT INTO eje1 (b, c, a) VALUES ('2024-09-09', 'act', 22);

-- 3. Valores solo en c y b (a toma el valor NULL por defecto)
INSERT INTO eje1 (c, b) VALUES ('bye', '2024-09-14');

-- 4. Valor solo en b (a y c tomarán valores NULL por defecto)
INSERT INTO eje1 (b) VALUES ('2025-09-04');

-- Consultar todos los registros de la tabla eje1
SELECT * FROM eje1;

-- Crear la tabla eje2 con una columna con valor por defecto
CREATE TABLE eje2 (
    a INT,
    b DATE,
    c VARCHAR(5),
    d VARCHAR(5) DEFAULT 'Hola'
);

-- Insertar valores en la tabla eje2
-- 1. Valores en a, b, d (c toma el valor NULL por defecto)
INSERT INTO eje2 (a, b, d) VALUES (1, '2024-10-08', 'Saludos');

-- 2. Valores en a, b, c (d toma el valor por defecto 'Hola')
INSERT INTO eje2 (a, b, c) VALUES (2, '2024-10-09', 'act');

-- 3. Valores en c, a, d (b toma el valor por defecto NULL)
INSERT INTO eje2 (c, a, d) VALUES ('bye', 3, 'Adios');

-- 4. Valor en a con default en b y d (b toma NULL y d el valor por defecto 'Hola')
INSERT INTO eje2 (a) VALUES (4);

-- 5. Valor en a con NULL en d (d toma el valor NULL)
INSERT INTO eje2 (a, d) VALUES (5, NULL);

-- Consultar todos los registros de la tabla eje2
SELECT * FROM eje2;


-- EJERCICIO 2

-- Crear la tabla eje3 (Nombre corregido)
CREATE TABLE eje3 (
    a INT AUTO_INCREMENT PRIMARY KEY,
    b VARCHAR(5) UNIQUE KEY COMMENT 'COLUMNA IMPORTANTE',
    c VARCHAR(5) DEFAULT 'hola'
);

-- Insertar valores en la tabla eje3
-- 1. Insertar b y c (a se auto-incrementa)
INSERT INTO eje3 (b, c) VALUES ('papap', 'prue'), ('batma', 'cosa');

-- 2. Insertar todos los valores, incluyendo un valor específico para 'a'
INSERT INTO eje3 VALUES (3, 'bla', 'pepe');

-- 3. Insertar b y c (a se auto-incrementa)
INSERT INTO eje3 (b, c) VALUES ('otra', 'más');

-- Consultar todos los registros de la tabla eje3
SELECT * FROM eje3;



