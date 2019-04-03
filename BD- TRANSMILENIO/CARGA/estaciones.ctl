load data
infile 'estaciones.csv'
append
into table ESTACION
fields terminated by ';' optionally enclosed by '"'
TRAILING NULLCOLS 
(ID_ESTACION,ID_TRONCAL,ID_PORTAL,NOMBRE_ESTACION,LONGITUD_ESTACION,LATITUD_ESTACION)