load data
infile 'portal.csv'
append
into table PORTAL
fields terminated by ';' optionally enclosed by '"'
TRAILING NULLCOLS 
(ID_PORTAL,NOMBRE_PORTAL)