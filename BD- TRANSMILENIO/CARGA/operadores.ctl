load data
infile 'operadores.csv'
append
into table OPERADORES
fields terminated by ';' optionally enclosed by '"'
TRAILING NULLCOLS 
(ID_OPERADOR,NOMBRE_OPERADOR)