CREATE DATABASE bd_internet;

USE bd_internet;

CREATE TABLE  estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    apellidos VARCHAR(100),
    seminario VARCHAR(100),
    confirmado BOOLEAN,
    fecha_inscripcion DATE
);
