DROP DATABASE iF EXISTS checks;
CREATE DATABASE checks;
Use checks;

-- El check +inline+ solo puede referisrse a su porpio atributo.
-- El check al final me permite relacionar varios atributos.
CREATE TABLE checks (
	a INT CHECK (a >=3),
	b INT,
	C INT,
	CHECK (b < 10),
	CHECK (a > c),
	CHECK (a <> b),
-- para dar un nombre al check
	CONSTRAINT chk_nombre CHECK (b > a AND b > c)
	
);
INSERT INTO checks VALUES (1,1,1);


