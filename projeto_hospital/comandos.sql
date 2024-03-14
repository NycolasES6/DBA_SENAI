-- Active: 1709576080714@@127.0.0.1@3306@db_hospital
/* Logico: */

-- CRIACAO DO BANCO

DROP DATABASE IF EXISTS `db_hospital`;

CREATE DATABASE `db_hospital`;

USE `db_hospital`;

--CRIACAO DO BANCO


-- CRIACAO DAS TABELAS

CREATE TABLE paciente (
    id_paciente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_paciente VARCHAR(120) NOT NULL,
    sexo_paciente ENUM("m", "f") NOT NULL,
    email_paciente VARCHAR(120) UNIQUE NOT NULL,
    dt_nascimento_paciente DATE NOT NULL
);

CREATE TABLE hospital (
    id_hospital INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    cidade_hospital VARCHAR(120) NOT NULL
);

CREATE TABLE medico (
    id_medico INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_medico VARCHAR(120) NOT NULL,
    sexo_medico ENUM("m","n") NOT NULL,
    especialidade_medico VARCHAR(120) NOT NULL,
    fk_hospital_medico INT NOT NULL
);

CREATE TABLE consulta (
    id_consulta INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    diagnostico_consulta VARCHAR(255),
    dt_consulta DATETIME NOT NULL,
    fk_medico_consulta INT NOT NULL,
    fk_paciente_consulta INT NOT NULL
);

CREATE TABLE internacao (
    id_internacao INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dt_entrada_internacao DATETIME NOT NULL,
    dt_saida_internacao DATETIME NOT NULL,
    fk_consulta_internacao INT NOT NULL
);

-- CRIACAO DAS TABELAS


-- ALTER PARA AS CHAVES ESTRANGEIRAS 

ALTER TABLE medico ADD CONSTRAINT FK_hospital_medico
    FOREIGN KEY (fk_hospital_medico)
    REFERENCES hospital (id_hospital)
    ON DELETE CASCADE;
 
ALTER TABLE consulta ADD CONSTRAINT FK_medico_consulta
    FOREIGN KEY (fk_medico_consulta)
    REFERENCES medico (id_medico)
    ON DELETE CASCADE;
 
ALTER TABLE consulta ADD CONSTRAINT FK_paciente_consulta
    FOREIGN KEY (fk_paciente_consulta)
    REFERENCES paciente (id_paciente)
    ON DELETE CASCADE;
 
ALTER TABLE internacao ADD CONSTRAINT FK_consulta_internacao
    FOREIGN KEY (fk_consulta_internacao)
    REFERENCES consulta (id_consulta)
    ON DELETE CASCADE;

-- ALTER PARA AS CHAVES ESTRANGEIRAS 


