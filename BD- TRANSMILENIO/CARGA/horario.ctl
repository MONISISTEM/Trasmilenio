load data
infile 'horario.csv'
append
into table HORARIO
fields terminated by ';' optionally enclosed by '"'
TRAILING NULLCOLS 
(ID_HORARIO,TIPO_DIA,HORA_INICIO,HORA_FIN)