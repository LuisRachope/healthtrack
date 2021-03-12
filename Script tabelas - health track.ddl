-- Gerado por Oracle SQL Developer Data Modeler 18.4.0.339.1532
--   em:        2019-09-22 19:02:10 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE t_alimentacao (
    dt_aliment         DATE NOT NULL,
    hr_aliment         DATE NOT NULL,
    nr_calorias        NUMBER(5, 2) NOT NULL,
    ds_und_al          VARCHAR2(8) NOT NULL,
    t_categ_cd_categ   NUMBER(5) NOT NULL,
    t_usuario_cd_id    NUMBER(8) NOT NULL
);

ALTER TABLE t_alimentacao ADD CONSTRAINT t_alimentacao_pk PRIMARY KEY ( dt_aliment );

CREATE TABLE t_ativid (
    dt_ativid            DATE NOT NULL,
    hr_ativid            DATE NOT NULL,
    t_usuario_cd_id      NUMBER(8) NOT NULL,
    t_tipos_at_cd_tipo   NUMBER(8) NOT NULL,
    t_exer_cd_exer       NUMBER(8) NOT NULL
);

ALTER TABLE t_ativid ADD CONSTRAINT t_ativid_pk PRIMARY KEY ( dt_ativid );

CREATE TABLE t_categ (
    cd_categ           NUMBER(5) NOT NULL,
    ds_categ_aliment   VARCHAR2(60) NOT NULL
);

ALTER TABLE t_categ ADD CONSTRAINT t_categ_pk PRIMARY KEY ( cd_categ );

CREATE TABLE t_exer (
    cd_exer       NUMBER(8) NOT NULL,
    ds_unidexer   VARCHAR2(60) NOT NULL
);

ALTER TABLE t_exer ADD CONSTRAINT t_exer_pk PRIMARY KEY ( cd_exer );

CREATE TABLE t_peso (
    dt_peso           DATE NOT NULL,
    hr_registro       DATE NOT NULL,
    nr_histpeso       NUMBER(4) NOT NULL,
    ds_unidpeso       VARCHAR2(4) NOT NULL,
    t_usuario_cd_id   NUMBER(8) NOT NULL
);

ALTER TABLE t_peso ADD CONSTRAINT t_peso_pk PRIMARY KEY ( dt_peso );

CREATE TABLE t_pressao (
    dt_pressao           DATE NOT NULL,
    hr_pressao           DATE NOT NULL,
    nr_presssistolica    NUMBER(5) NOT NULL,
    nr_pressdiastolica   NUMBER(5) NOT NULL,
    t_usuario_cd_id      NUMBER(8) NOT NULL
);

ALTER TABLE t_pressao ADD CONSTRAINT t_pressao_pk PRIMARY KEY ( dt_pressao );

CREATE TABLE t_tipos_at (
    cd_tipo        NUMBER(8) NOT NULL,
    nm_atividade   VARCHAR2(60) NOT NULL
);

ALTER TABLE t_tipos_at ADD CONSTRAINT t_tipos_at_pk PRIMARY KEY ( cd_tipo );

CREATE TABLE t_usuario (
    cd_id           NUMBER(8) NOT NULL,
    nm_usuario      VARCHAR2(60) NOT NULL,
    ds_email        VARCHAR2(60) NOT NULL,
    ds_senha        VARCHAR2(18) NOT NULL,
    ds_sexo         CHAR(2) NOT NULL,
    dt_nascimento   DATE NOT NULL,
    nr_altura       NUMBER(4, 2) NOT NULL,
    nr_peso         NUMBER(4) NOT NULL
);

ALTER TABLE t_usuario ADD CONSTRAINT t_usuario_pk PRIMARY KEY ( cd_id );

ALTER TABLE t_alimentacao
    ADD CONSTRAINT t_alimentacao_t_categ_fk FOREIGN KEY ( t_categ_cd_categ )
        REFERENCES t_categ ( cd_categ );

ALTER TABLE t_alimentacao
    ADD CONSTRAINT t_alimentacao_t_usuario_fk FOREIGN KEY ( t_usuario_cd_id )
        REFERENCES t_usuario ( cd_id );

ALTER TABLE t_ativid
    ADD CONSTRAINT t_ativid_t_exer_fk FOREIGN KEY ( t_exer_cd_exer )
        REFERENCES t_exer ( cd_exer );

ALTER TABLE t_ativid
    ADD CONSTRAINT t_ativid_t_tipos_at_fk FOREIGN KEY ( t_tipos_at_cd_tipo )
        REFERENCES t_tipos_at ( cd_tipo );

ALTER TABLE t_ativid
    ADD CONSTRAINT t_ativid_t_usuario_fk FOREIGN KEY ( t_usuario_cd_id )
        REFERENCES t_usuario ( cd_id );

ALTER TABLE t_peso
    ADD CONSTRAINT t_peso_t_usuario_fk FOREIGN KEY ( t_usuario_cd_id )
        REFERENCES t_usuario ( cd_id );

ALTER TABLE t_pressao
    ADD CONSTRAINT t_pressao_t_usuario_fk FOREIGN KEY ( t_usuario_cd_id )
        REFERENCES t_usuario ( cd_id );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             8
-- CREATE INDEX                             0
-- ALTER TABLE                             15
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
