load data
infile 'servicio.csv'
append
into table SERVICIO
fields terminated by ';' optionally enclosed by '"'
TRAILING NULLCOLS 
(ID_HORARIO,ID_RUTA)