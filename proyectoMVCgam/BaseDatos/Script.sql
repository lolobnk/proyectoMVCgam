DROP DATABASE IF EXISTS Clase;
CREATE DATABASE IF NOT EXISTS Clase;
USE Clase;

DROP TABLE IF EXISTS Alumnos;
CREATE TABLE IF NOT EXISTS Alumnos(
dni VARCHAR(9) PRIMARY KEY,
nombre VARCHAR(255) NOT NULL,
apellidos VARCHAR(255) NOT NULL,
edad INTEGER(2) NOT NULL
);

DROP TABLE IF EXISTS Asignaturas;
CREATE TABLE IF NOT EXISTS Asignaturas(
nombre_asignatura VARCHAR(255),
descripcion VARCHAR(255),
profesor varchar(255),
primary key(nombre_asignatura)
);

DROP TABLE IF EXISTS Alumno_Asignatura;
CREATE TABLE IF NOT EXISTS Alumno_Asignatura(
dni VARCHAR(9),
nombre_asignatura VARCHAR(255),
CONSTRAINT primary key (dni, nombre_asignatura),
FOREIGN KEY(dni) REFERENCES Alumnos(dni),
FOREIGN KEY(nombre_asignatura) REFERENCES Asignaturas(nombre_asignatura)
);

select * from Profesores;


INSERT INTO Alumnos VALUES 
('11111111A', 'Antonio', 'Macias Muñoz', 21),
('22222222B', 'Manuel', 'Ramos Adame', 24),
('33333333C', 'Gabriel', 'Ramos Suan', 26);

INSERT INTO Asignaturas VALUES 
('Cliente', 'Lenguaje del entorno del Cliente', 'Juan Antonio Calvo'),
('Aplicaciones', 'Aplicaciones de PHP','Jesus Isidoro Costas');
INSERT INTO Alumno_Asignatura VALUES ('11111111A', 'Cliente'),
('22222222B', 'Cliente'),('22222222B', 'Aplicaciones'),('33333333C', 'Cliente');

/* CONSULTAS DE TABLAS */
/*SELECT * FROM Alumnos;
SELECT * FROM Profesores;
SELECT * FROM Asignaturas;*/

/*Los alumnos del profesor Jesus Costa*/
select * from Alumnos join Alumno_Asignatura on Alumnos.dni=Alumno_Asignatura.dni 
join Asignaturas on Alumno_Asignatura.nombre_asignatura=Asignaturas.nombre_asignatura
where profesor='Jesus Isidoro Costas';