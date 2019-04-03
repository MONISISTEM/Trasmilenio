load data
infile 'troncal.csv'
append
into table TRONCAL
fields terminated by ';' optionally enclosed by '"'
TRAILING NULLCOLS 
(ID_TRONCAL,NOMBRE_TRONCAL,INICIO_TRONCAL,FIN_TRONCAL)