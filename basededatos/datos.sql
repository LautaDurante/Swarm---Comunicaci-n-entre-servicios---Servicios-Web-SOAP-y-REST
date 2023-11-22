-- Crear la base de datos "prueba"
CREATE DATABASE IF NOT EXISTS prueba;

-- Usar la base de datos "prueba"
USE prueba;

-- Crear la tabla "alumnos"
CREATE TABLE IF NOT EXISTS alumnos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    apellidos VARCHAR(200),
    nombres VARCHAR(200),
    dni INT(11),
    nota INT(11) NOT NULL
);

-- Insertar registros en la tabla "alumnos"
INSERT INTO alumnos (apellidos, nombres, dni, nota) VALUES
    ('Veron', 'Nicolas', 16123456, 75),
    ('Caceres', 'Ayrton', 42567945, 85),
    ('Recalde', 'Agustin', 28453359, 95);