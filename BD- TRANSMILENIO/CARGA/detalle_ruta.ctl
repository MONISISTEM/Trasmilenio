load data
infile 'detalle_ruta.csv'
append
into table DETALLE_RUTA
fields terminated by ';' optionally enclosed by '"'
TRAILING NULLCOLS 
(ID_VAGON,ID_RUTA)