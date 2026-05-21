

--Crear una base de datos pruebaG1

--Permite crear una base de datos (SQL-LDD)
CREATE DATABASE prueba1;

--Utilizar la base de datos
USE prueba1;

--Crear una tabla(SQL - LDD)

CREATE TABLE alumno(
	id int NOT NULL, 
	nombre VARCHAR (20) NOT NULL,
	edad int NOT NULL,
	matricula INT NOT NULL,
	direccion VARCHAR (30) NULL,
	CONSTRAINT pk_lumno
	PRIMARY KEY (id),
	CONSTRAINT unique_matricula
	UNIQUE (matricula)
);

--Agregar 2 alumnos (SQL-LMD)

INSERT INTO alumno(id,nombre,edad,matricula,direccion)
VALUES (1,'Gerardo', 21, 123456, 'calle pipila'),
		(2, 'Ian', 18, 123459, 'calle cualquiera');
		
		
--Seleccionar los alumnos

SELECT *
FROM alumno;

--Cambiar de gerardo a jose

UPDATE alumno
SET nombre = 'MONICO'
WHERE id = 1;
