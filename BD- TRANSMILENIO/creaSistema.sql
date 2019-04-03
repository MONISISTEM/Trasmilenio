--Archivo creacion de la base de datos
--Creador por: DEICY ROJAS - JOHANA AGUILAR
--Fecha creacion:06/04/2019
--Observaciones:

CREATE USER TRANSMILENIO IDENTIFIED BY a123;
GRANT CONNECT, RESOURCE TO TRANSMILENIO;
CONN TRANSMILENIO/a123;

-- CREACION TABLAS BASE DE DATOS

@bdtransmilenio


-- CREACION LLAVES PRIMARIAS Y FORANEAS

@bdllaves
--creacion de las tablas novedades y productos



commit;

