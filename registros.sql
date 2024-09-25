-- Crear la base de datos
CREATE DATABASE registro;
-- Conectar a la base de datos
\c registro;

-- Crear tabla de inscritos
-- Esta es una instrucción que crea una tabla llamada inscritos si no existe ya en la base de datos
--Si la tabla ya está creada, no se volverá a crear ni se mostrará un error.
CREATE TABLE IF NOT EXISTS inscritos(cantidad INT, fecha DATE, fuente VARCHAR);

-- Insertar información de las personas inscritas para cada columna de la tabla inscritos
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (44, '01/01/2021', 'Blog');
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (56, '01/01/2021', 'Página');
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (39, '01/02/2021', 'Blog');
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (81, '01/02/2021', 'Página');
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (12, '01/03/2021', 'Blog');
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (91, '01/03/2021', 'Página');
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (48, '01/04/2021', 'Blog');
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (45, '01/04/2021', 'Página');
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (55, '01/05/2021', 'Blog');
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (33, '01/05/2021', 'Página');
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (18, '01/06/2021', 'Blog');
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (12, '01/06/2021', 'Página');
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (34, '01/07/2021', 'Blog');
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (24, '01/07/2021', 'Página');
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (83, '01/08/2021', 'Blog');
INSERT INTO inscritos(cantidad, fecha, fuente) VALUES (99, '01/08/2021', 'Página');