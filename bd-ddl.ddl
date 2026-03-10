-- Gerado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   em:        2026-03-10 13:51:26 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE CCL 
    ( 
     id  INTEGER  NOT NULL , 
     nom VARCHAR2 (50 CHAR)  NOT NULL , 
     cod VARCHAR2 (50 CHAR)  NOT NULL 
    ) 
;

COMMENT ON COLUMN CCL.id IS 'Id da conta classificação.' 
;

COMMENT ON COLUMN CCL.nom IS 'Nome da conta de classificação' 
;

COMMENT ON COLUMN CCL.cod IS 'Código da conta de classificação' 
;

ALTER TABLE CCL 
    ADD CONSTRAINT CCL_PK PRIMARY KEY ( id ) ;

CREATE TABLE CNC 
    ( 
     id  INTEGER  NOT NULL , 
     nom VARCHAR2 (50 CHAR)  NOT NULL 
    ) 
;

COMMENT ON COLUMN CNC.id IS 'Id centro de custo.' 
;

COMMENT ON COLUMN CNC.nom IS 'Nome do centro de custo.' 
;

ALTER TABLE CNC 
    ADD CONSTRAINT CNC_PK PRIMARY KEY ( id ) ;

CREATE TABLE CNO 
    ( 
     id  INTEGER  NOT NULL , 
     nom VARCHAR2 (50 CHAR)  NOT NULL , 
     cod VARCHAR2 (50 CHAR)  NOT NULL 
    ) 
;

COMMENT ON COLUMN CNO.id IS 'Id da conta de origem.' 
;

COMMENT ON COLUMN CNO.nom IS 'Nome da conta de origem.' 
;

COMMENT ON COLUMN CNO.cod IS 'Código da conta de origem.' 
;

ALTER TABLE CNO 
    ADD CONSTRAINT CNO_PK PRIMARY KEY ( id ) ;

CREATE TABLE PES 
    ( 
     id  INTEGER  NOT NULL , 
     nom VARCHAR2 (50 CHAR)  NOT NULL , 
     cod VARCHAR2 (50 CHAR)  NOT NULL , 
     id1 INTEGER  NOT NULL 
    ) 
;

COMMENT ON COLUMN PES.id IS 'Id da pessoa.' 
;

COMMENT ON COLUMN PES.nom IS 'Nome da pessoa.' 
;

COMMENT ON COLUMN PES.cod IS 'Codigo da pessoa.' 
;

ALTER TABLE PES 
    ADD CONSTRAINT PES_PK PRIMARY KEY ( id ) ;

CREATE TABLE TRN 
    ( 
     id               INTEGER  NOT NULL , 
     descricao        VARCHAR2 (50 CHAR)  NOT NULL , 
     data_competencia DATE  NOT NULL , 
     data_vencimento  DATE  NOT NULL , 
     valor_a_pagar    NUMBER  NOT NULL , 
     valor_pagamento  NUMBER  NOT NULL , 
     PES_id           INTEGER  NOT NULL , 
     CNC_id           INTEGER  NOT NULL , 
     UNN_id           INTEGER  NOT NULL , 
     CNO_id           INTEGER  NOT NULL , 
     CCL_id           INTEGER  NOT NULL 
    ) 
;

COMMENT ON COLUMN TRN.id IS 'Id da transação.' 
;

COMMENT ON COLUMN TRN.descricao IS 'Descrição da transação' 
;

COMMENT ON COLUMN TRN.data_competencia IS 'Data da competência.' 
;

COMMENT ON COLUMN TRN.data_vencimento IS 'Data de vencimento.' 
;

COMMENT ON COLUMN TRN.valor_a_pagar IS 'Valor a pagar.' 
;

COMMENT ON COLUMN TRN.valor_pagamento IS 'Valor do pagamento.' 
;

ALTER TABLE TRN 
    ADD CONSTRAINT TRN_PK PRIMARY KEY ( id ) ;

CREATE TABLE UNN 
    ( 
     id  INTEGER  NOT NULL , 
     nom VARCHAR2 (50 CHAR)  NOT NULL , 
     cod VARCHAR2 (50 CHAR)  NOT NULL 
    ) 
;

COMMENT ON COLUMN UNN.id IS 'Id da unidade de negócio.' 
;

COMMENT ON COLUMN UNN.nom IS 'Nome da unidade de negócio.' 
;

COMMENT ON COLUMN UNN.cod IS 'Codigo da unidade de negócio.' 
;

ALTER TABLE UNN 
    ADD CONSTRAINT UNN_PK PRIMARY KEY ( id ) ;

ALTER TABLE TRN 
    ADD CONSTRAINT TRN_CCL_FK FOREIGN KEY 
    ( 
     CCL_id
    ) 
    REFERENCES CCL 
    ( 
     id
    ) 
;

ALTER TABLE TRN 
    ADD CONSTRAINT TRN_CNC_FK FOREIGN KEY 
    ( 
     CNC_id
    ) 
    REFERENCES CNC 
    ( 
     id
    ) 
;

ALTER TABLE TRN 
    ADD CONSTRAINT TRN_CNO_FK FOREIGN KEY 
    ( 
     CNO_id
    ) 
    REFERENCES CNO 
    ( 
     id
    ) 
;

ALTER TABLE TRN 
    ADD CONSTRAINT TRN_PES_FK FOREIGN KEY 
    ( 
     PES_id
    ) 
    REFERENCES PES 
    ( 
     id
    ) 
;

ALTER TABLE TRN 
    ADD CONSTRAINT TRN_UNN_FK FOREIGN KEY 
    ( 
     UNN_id
    ) 
    REFERENCES UNN 
    ( 
     id
    ) 
;



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                             11
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
