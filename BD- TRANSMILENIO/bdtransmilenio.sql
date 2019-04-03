--Archivo creacion tablas base de datos
--Creador por: DEICY ROJAS - JOHANA AGUILAR
--Fecha creacion:06/04/2019
--Observaciones:

-- CREAR TABLAS:

-- TABLA OPERADORES
CREATE TABLE OPERADORES(
ID_OPERADOR NUMBER NOT NULL,
NOMBRE_OPERADOR VARCHAR2(60) NOT NULL);

-- TABLA FASE
CREATE TABLE FASES(
ID_OPERADOR NUMBER NOT NULL,
ID_ESTACION NUMBER NOT NULL,
NUMERO_FASE VARCHAR2(7) NOT NULL);

--TABLA ESTACION
CREATE TABLE ESTACION(
ID_ESTACION NUMBER NOT NULL, 
ID_TRONCAL NUMBER NOT NULL,
ID_PORTAL NUMBER,
NOMBRE_ESTACION VARCHAR2(60) NOT NULL,
LONGITUD_ESTACION VARCHAR2(20),
LATITUD_ESTACION VARCHAR2(20));

-- TABLA PORTAL 
CREATE TABLE PORTAL(
ID_PORTAL NUMBER NOT NULL,
NOMBRE_PORTAL VARCHAR2(30) NOT NULL);

-- TABLA TRONCAL
CREATE TABLE TRONCAL(
ID_TRONCAL NUMBER NOT NULL,
NOMBRE_TRONCAL VARCHAR2(40) NOT NULL,
INICIO_TRONCAL VARCHAR2(40),
FIN_TRONCAL VARCHAR2(40));

-- TABLA VAGON
CREATE TABLE VAGON(
ID_VAGON NUMBER NOT NULL,
ID_ESTACION NUMBER NOT NULL,
NOMBRE_VAGON VARCHAR2(10) NOT NULL);

-- TABLA DETALLE RUTA
CREATE TABLE DETALLE_RUTA(
ID_VAGON NUMBER NOT NULL,
ID_RUTA NUMBER NOT NULL);

-- TABLA RUTA
CREATE TABLE RUTA (
ID_RUTA NUMBER NOT NULL,
NOMBRE_RUTA VARCHAR2(6));

-- TABLA SERVICIO
CREATE TABLE SERVICIO(
ID_HORARIO NUMBER NOT NULL,
ID_RUTA NUMBER NOT NULL);

-- TABLA HORARIO
CREATE TABLE HORARIO(
ID_HORARIO NUMBER NOT NULL,
TIPO_DIA VARCHAR2(10),
HORA_INICIO VARCHAR2(10),
HORA_FIN VARCHAR2(10));




