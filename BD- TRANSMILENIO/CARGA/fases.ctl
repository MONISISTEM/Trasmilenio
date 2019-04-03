load data
infile 'fases.csv'
append
into table FASES
fields terminated by ';' optionally enclosed by '"'
TRAILING NULLCOLS 
(ID_OPERADOR,ID_ESTACION,NUMERO_FASE)