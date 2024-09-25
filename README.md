# Manipulación de Datos y Transaccionalidad en las Operaciones

## Descripción del Desafío
Este desafío se enfoca en validar el conocimiento sobre Consultas Agrupadas en SQL. El objetivo es aplicar las herramientas y conceptos aprendidos previamente para crear las queries necesarias que respondan a una serie de preguntas relacionadas con un conjunto de datos sobre registros de inscritos.
## Preguntas a Resolver
1. ¿Cuántos registros hay?
2. ¿Cuántos inscritos hay en total?
3. ¿Cuál o cuáles son los registros de mayor antigüedad?
4. ¿Cuántos inscritos hay por día?
5. ¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se inscribieron ese día?

## Requisitos
* Crear una base de datos llamada desafio2-tuNombre-tuApellido-3digitos, donde los tres dígitos son a elección.
* Generar un reporte que muestre los resultados de cada consulta.
* Insertar los siguientes registros para el ejercicio.

```
CREATE TABLE IF NOT EXISTS INSCRITOS (
  cantidad INT,
  fecha DATE,
  fuente VARCHAR
);

INSERT INTO INSCRITOS (cantidad, fecha, fuente)
VALUES 
  (44, '2021-01-01', 'Blog'),
  (56, '2021-01-01', 'Página'),
  (39, '2021-01-02', 'Blog'),
  (81, '2021-01-02', 'Página'),
  (12, '2021-01-03', 'Blog'),
  (91, '2021-01-03', 'Página'),
  (48, '2021-01-04', 'Blog'),
  (45, '2021-01-04', 'Página'),
  (55, '2021-01-05', 'Blog'),
  (33, '2021-01-05', 'Página'),
  (18, '2021-01-06', 'Blog'),
  (12, '2021-01-06', 'Página'),
  (34, '2021-01-07', 'Blog'),
  (24, '2021-01-07', 'Página'),
  (83, '2021-01-08', 'Blog'),
  (99, '2021-01-08', 'Página');
```

## Estructura de la Solución
* Base de datos: Creación de la base de datos y tabla INSCRITOS.
* Consultas SQL: Desarrollo de las queries para resolver cada una de las preguntas planteadas.
* Reporte: Generar un reporte con los resultados obtenidos

## Reporte
1. ¿Cuántos registros hay?
```
SELECT COUNT(*) AS total_registros FROM inscritos;
```
Resultado: 16 registros

2. ¿Cuántos inscritos hay en total?
```
SELECT SUM(cantidad) AS total_inscritos FROM inscritos;
```
Resultado: 775 inscritos en total

3. ¿Cuál o cuáles son los registros de mayor antigüedad?
```
SELECT * FROM inscritos ORDER BY fecha ASC;
```
Resultado: Los registros de mayor antigüedad corresponden al día '2021-01-01'.

4. ¿Cuántos inscritos hay por día?
```
SELECT * FROM inscritos WHERE fecha = (SELECT MIN(fecha) FROM inscritos);
```
Resultado: El primer día registrado es '2021-01-01', con un total de 100 inscritos (44 de Blog y 56 de Página).

5. ¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se inscribieron ese día?
```
SELECT fecha, SUM(cantidad) AS inscritos_por_dia FROM inscritos GROUP BY fecha ORDER BY inscritos_por_dia DESC LIMIT 1;
```
Resultado: El día con mayor cantidad de inscritos fue '2021-01-08' con un total de 182 inscritos.
