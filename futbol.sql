DROP DATABASE IF EXISTS futbol;
CREATE DATABASE futbol;
USE futbol;

CREATE TABLE equipo (
	id INT PRIMARY KEY,
	nombre VARCHAR (100),
	ciudad VARCHAR (100)
);

CREATE TABLE jugador (
		dni VARCHAR(100)PRIMARY KEY,
		nombre VARCHAR (100),
		nacionalidad VARCHAR (100),
		dorsal INT,
		altura FLOAT,
		id_equipo INT,
		FOREIGN KEY (id_equipo) REFERENCES equipo (id)
);

INSERT INTO equipo VALUES(1, 'REAL MADRID','Madrid');
INSERT INTO equipo VALUES(2, 'BARCELONA','Bacelona' );

INSERT INTO jugador VALUES
(1, 'BICHO', 'POR' , 7 , 1.84, 1),
(2, 'PULGA', 'Arg' , 10 , 1.64, 2);
