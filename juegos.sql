-- Eliminar la base de datos si existe y crear una nueva
DROP DATABASE IF EXISTS juegos;
CREATE DATABASE juegos;
USE juegos;

-- Crear la tabla desarrollador
CREATE TABLE desarrollador (
    nombre VARCHAR(50) PRIMARY KEY
);

-- Crear la tabla juego
CREATE TABLE juego (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    fk_desarrollador VARCHAR(50),
    FOREIGN KEY (fk_desarrollador) REFERENCES desarrollador(nombre)
	ON DELETE CASCADE
);

-- Crear la tabla personaje
CREATE TABLE personaje (
    nombre VARCHAR(50) PRIMARY KEY,
    fk_juego INT,
    FOREIGN KEY (fk_juego) REFERENCES juego(id)
    
    ON DELETE SET NULL
);

-- Insertar valores en la tabla desarrollador
INSERT INTO desarrollador VALUES ('Buggy Soft');

-- Insertar valores en la tabla juego
INSERT INTO juego VALUES
(0, 'Las aventuras del capitán salami', 'Buggy Soft'),
(1, 'Las aventuras del capitán salami - Venganza Ed.', 'Buggy Soft');

-- Insertar valores en la tabla personaje
INSERT INTO personaje VALUES
('Capitán Salami', 0),
('Capitán PELIGRO', 0),
('Capitán TONTÍN', 1),
('Capitán PELADO', 1);

-- Consultar las tablas
SELECT * FROM personaje;
SELECT * FROM juego;
SELECT * FROM desarrollador;

-- DELETE FROM juego WHERE id=0;
DELETE FROM desarrolladora WHERE nombre='Buggy Soft';
SELECT * FROM juego;
SELECT * FROM personaje;
