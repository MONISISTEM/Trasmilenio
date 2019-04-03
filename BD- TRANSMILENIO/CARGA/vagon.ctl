load data
infile 'vagon.csv'
append
into table VAGON
fields terminated by ';' optionally enclosed by '"'
TRAILING NULLCOLS 
(ID_VAGON,ID_ESTACION,NOMBRE_VAGON)