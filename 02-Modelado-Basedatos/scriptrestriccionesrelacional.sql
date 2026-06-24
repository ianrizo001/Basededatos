-- Crear una base de datos

CREATE DATABASE bdconstraint;
GO 

-- Usar la base de datos

USE bdconstraint;
GO

--Razón de cardinalidad 1:1

-- Crear la tabla paciente

CREATE TABLE paciente(
	Idpaciente INT NOT NULL,
	Nombre VARCHAR (40) NOT NULL,
	Apellido1 VARCHAR(20) NOT NULL,
	Apellido2 VARCHAR(20) NULL,
	Fechanaci DATE NOT NULL
	CONSTRAINT pk_paciente
	PRIMARY KEY (Idpaciente)
);
GO

CREATE TABLE expediente(
	Idexp INT NOT NULL PRIMARY KEY,
	Fechaapertura DATE NOT NULL,
	Tiposangre char (3) NULL,
	Idpaciente INT NOT NULL,
	CONSTRAINT unique_idpaciente
	UNIQUE(Idpaciente),
	CONSTRAINT fk_expediente_paciente
	FOREIGN KEY (Idpaciente)
	REFERENCES paciente(Idpaciente)
);
GO

DROP TABLE expediente;
GO

