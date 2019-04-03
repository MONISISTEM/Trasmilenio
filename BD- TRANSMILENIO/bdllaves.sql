--Archivo creacion llaves primarias y foraneas
--Creador por: DEICY ROJAS - JOHANA AGUILAR
--Fecha creacion:06/04/2019
--Observaciones:

-- CREACION LLAVES PRIMARIAS 

ALTER TABLE OPERADORES ADD(CONSTRAINT OPE_PK PRIMARY KEY (ID_OPERADOR));
ALTER TABLE ESTACION ADD(CONSTRAINT EST_PK PRIMARY KEY (ID_ESTACION));
ALTER TABLE PORTAL ADD(CONSTRAINT POR_PK PRIMARY KEY (ID_PORTAL));
ALTER TABLE TRONCAL ADD(CONSTRAINT TRO_PK PRIMARY KEY (ID_TRONCAL));
ALTER TABLE VAGON ADD(CONSTRAINT VAG_PK PRIMARY KEY (ID_VAGON));
ALTER TABLE RUTA ADD(CONSTRAINT RUT_PK PRIMARY KEY (ID_RUTA));
ALTER TABLE HORARIO ADD(CONSTRAINT HOR_PK PRIMARY KEY (ID_HORARIO));
ALTER TABLE FASES ADD(CONSTRAINT FAS_PK PRIMARY KEY (ID_OPERADOR,ID_ESTACION));


-- CREACION LLAVES FORANEAS

ALTER TABLE FASES ADD(CONSTRAINT FAS_FK_OPE FOREIGN KEY (ID_OPERADOR) REFERENCES OPERADORES (ID_OPERADOR));
ALTER TABLE FASES ADD(CONSTRAINT FAS_FK_EST FOREIGN KEY (ID_ESTACION) REFERENCES ESTACION (ID_ESTACION));
ALTER TABLE ESTACION ADD(CONSTRAINT EST_FK_TRO FOREIGN KEY (ID_TRONCAL) REFERENCES TRONCAL (ID_TRONCAL));
ALTER TABLE ESTACION ADD(CONSTRAINT EST_FK_POR FOREIGN KEY (ID_PORTAL) REFERENCES PORTAL (ID_PORTAL));
ALTER TABLE VAGON ADD(CONSTRAINT VAG_FK_EST FOREIGN KEY (ID_ESTACION) REFERENCES ESTACION (ID_ESTACION));
ALTER TABLE DETALLE_RUTA ADD(CONSTRAINT DET_RUT_FK_VAG FOREIGN KEY (ID_VAGON) REFERENCES VAGON (ID_VAGON));
ALTER TABLE DETALLE_RUTA ADD(CONSTRAINT DET_RUT_FK_RUT FOREIGN KEY (ID_RUTA) REFERENCES RUTA (ID_RUTA));
ALTER TABLE SERVICIO ADD(CONSTRAINT SER_FK_HOR FOREIGN KEY (ID_HORARIO) REFERENCES HORARIO (ID_HORARIO));
ALTER TABLE SERVICIO ADD(CONSTRAINT SER_FK_RUT FOREIGN KEY (ID_RUTA) REFERENCES RUTA (ID_RUTA));