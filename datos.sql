DROP DATABASE IF EXISTS datos;
CREATE DATABASE datos;
USE datos;

CREATE TABLE TiposDatos (
	flotante FLOAT (5,2),
	decimal1 DECIMAL (7,5),
	codigo CHAR(4),
	texto TEXT,
	dia DATE,
	momento DATETIME,
	hora TIME,
	color ENUM('Rojo','Verde','Azul')
	
);	

INSERT INTO TiposDatos VALUES
(3.5, 2.3,'DHRT','hola mundo','2024-09-04','2024-09-04 11:59:00','11:59:27','Rojo');

