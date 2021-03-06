-- Crear base de datos dbCursos
CREATE DATABASE IF NOT EXISTS dbCurso
DEFAULT CHARACTER SET utf8;

-- Poner en uso
USE dbCURSO;

-- Crear la tabla PERSONA
CREATE TABLE PERSONA
(
     DNIPER CHAR(8),
     NOMPER VARCHAR(50),
     APEPER VARCHAR(80),
     FECNAPER DATE,
     CELPER CHAR(9),
     EMAPER VARCHAR(100),
     SEXPER CHAR(1),
     TIPPER CHAR(3),
     DISTPER VARCHAR(80),
     FECREGPER TIMESTAMP,
     PWSPER VARCHAR(20),
     CONSTRAINT  DNIPER_PK PRIMARY KEY (DNIPER)
);


-- Crear tabla DEPARTAMENTO
create table DEPARTAMENTO
(
    IDDEP int,
    NOMDEP varchar(50) NOT NULL,
    DNIPER char(8),
    SALJEFDEP DECIMAL(8,2),
    CONSTRAINT IDDEP_PK PRIMARY KEY(IDDEP)
);

-- Relacionar la tabla PERSONA con DEPARTAMENTO
ALTER TABLE DEPARTAMENTO
ADD CONSTRAINT PERSONA_DEPARTAMENTO_DNIPER
FOREIGN KEY (DNIPER) REFERENCES PERSONA (DNIPER);








