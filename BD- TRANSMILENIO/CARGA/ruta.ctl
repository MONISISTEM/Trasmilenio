load data
infile 'ruta.csv'
append
into table RUTA
fields terminated by ';' optionally enclosed by '"'
TRAILING NULLCOLS 
(ID_RUTA,NOMBRE_RUTA)