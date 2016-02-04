DROP DATABASE IF EXISTS Clase;
CREATE DATABASE IF NOT EXISTS Clase;
USE Clase;

DROP TABLE IF EXISTS Alumnos;
CREATE TABLE IF NOT EXISTS Alumnos(
dni VARCHAR(10) PRIMARY KEY,
nombre VARCHAR(255) NOT NULL,
apellidos VARCHAR(255) NOT NULL,
edad INTEGER(2) NOT NULL,
profesor VARCHAR(10)
);

DROP TABLE IF EXISTS Profesores;
CREATE TABLE IF NOT EXISTS Profesores(
dni VARCHAR(10) PRIMARY KEY,
nombre VARCHAR(255) NOT NULL,
apellidos VARCHAR(255) NOT NULL,
asignatura VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS Asignaturas;
CREATE TABLE IF NOT EXISTS Asignaturas(
nombre VARCHAR(255) PRIMARY KEY,
descripcion VARCHAR(255) 
);

INSERT INTO Alumnos VALUES ('11111111-A', 'Antonio', 'Macias Muñoz', 21, '00000000-Z'),
('22222222-B', 'Manuel', 'Ramos Adame', 24, '00000000-Z'),
('33333333-C', 'Gabriel', 'Ramos Suan', 26, '99999999-Y');
INSERT INTO Profesores VALUES ('00000000-Z', 'Juan', 'García Pérez', 'Servidor'),
('99999999-Y', 'Jesus', 'Costa Costa', 'Aplicaciones');
INSERT INTO Asignaturas VALUES ('Servidor', 'Lenguaje del entorno del servidor'),
('Aplicaciones', 'Aplicaciones para el servidor');

ALTER TABLE Alumnos ADD FOREIGN KEY (profesor) REFERENCES Profesores(dni);
ALTER TABLE Profesores ADD FOREIGN KEY (asignatura) REFERENCES Asignaturas(nombre);

/* CONSULTAS DE TABLAS */
SELECT * FROM Alumnos;
SELECT * FROM Profesores;
SELECT * FROM Asignaturas;

/* CONSULTAS RELACIONADAS */
SELECT Alumnos.*, Profesores.nombre AS 'NombreProfesor' FROM Alumnos JOIN Profesores WHERE Alumnos.profesor = Profesores.dni;