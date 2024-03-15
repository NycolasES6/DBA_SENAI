-- Active: 1710466414805@@127.0.0.1@3306
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


-- INSERCOES

INSERT INTO paciente VALUES 
(null, "Nycolas Ramos", 'm', "nycolas@gmailcom", "1983-09-09"),
(null, "Francisco Amaral", 'm', "franciscoamaral@gmailcom", "1996-07-16"),
(null, "Aline Sousa", 'f', "aline_sousa@gmailcom", "1983-09-09"),
(null, "João Alexandre", 'm', "joaoalexandre@gmailcom", "2003-12-19"),
(null, "Adriana Júnior", 'f', "adrianajunior@gmailcom", "1991-01-06"),
(null, "Maria Clara", 'f', "mariaclara@gmailcom", "1992-04-13"),
(null, "Antônio Leite", 'm', "antonioleite@gmailcom", "1998-03-15"),
(null, "Paulo de Tarso", 'm', "paulodetarso@gmailcom", "1999-09-10"),
(null, "Ana Aparecida", 'f', "anaaparecida@gmailcom", "1994-05-19"),
(null, "Francisca Calota", 'f', "franciscacalota@gmailcom", "1993-02-09"),
(null, "Carlos de Sousa", 'm', "carlosdesousa@gmailcom", "1992-03-12"),
(null, "Juliana de Sousa", 'f', "julianadesousa@gmailcom", "1995-04-03"),
(null, "José Alves", 'm', "josealves@gmailcom", "2001-10-12"),
(null, "Fernanda Joaquim", 'f', "fernandajoaquim@gmailcom", "1993-05-01"),
(null, "Camila Medeiros", 'f', "camilamedeiros@gmailcom", "1985-12-05");


INSERT INTO medico VALUES
(null, "Francisco Amaral", 'm', "oftomologia", 1),
(null, "Nycolas Ramos", 'm', "oftomologia", 1),
(null, "Aline Sousa", 'f', "oftomologia", 1),
(null, "João Alexandre", 'm', "oftomologia", 1),
(null, "Adriana Júnior", 'f', "oftomologia", 1),
(null, "Maria Clara", 'f', "oftomologia", 1),
(null, "Antônio Leite", 'm', "oftomologia", 1),
(null, "Paulo de Tarso", 'm', "oftomologia", 1),
(null, "Ana Aparecida", 'f', "oftomologia", 1),
(null, "Francisca Calota", 'f', "oftomologia", 1),
(null, "Carlos de Sousa", 'm', "oftomologia", 1),
(null, "Juliana de Sousa", 'f', "oftomologia", 1),
(null, "José Alves", 'm', "oftomologia", 1),
(null, "Fernanda Joaquim", 'f', "oftomologia", 1),
(null, "Camila Medeiros", 'f', "oftomologia", 1);

A seguir, você vai saber:
Especialização médica e mercado de trabalho
Residência Médica e Título de Especialista
Especialidades médica, áreas de atuação e formas de acesso
Especialista em Acupuntura
Especialista em Alergia e Imunologia
Especialista em Anestesiologista
Especialista em Angiologia
Especialista em Cardiologia
Especialista em Cirurgia Cardiovascular
Especialista em Cirurgia da Mão
Especialista em Cirurgia de Cabeça e Pescoço
Especialista em Cirurgia do Aparelho Digestivo
Especialista em Cirurgia Geral
Especialista em Cirurgia Oncológica
Especialista em Cirurgia Pediátrica
Especialista em Cirurgia Plástica
Especialista em Cirurgia Torácica
Especialista em Cirurgia Vascular
Especialista em Clínica Médica
Especialista em Coloproctologia
Especialista em Dermatologia
Especialista em Endocrinologia e Metabologia
Especialista em Endoscopia
Especialista em Gastroenterologia
Especialista em Genética Médica
Especialista em Geriatria
Especialista em Ginecologia e Obstetrícia
Especialista em Hematologia e Hemoterapia
Especialista em Homeopatia
Especialista em Infectologia
Especialista em Mastologia
Especialista em Medicina de Emergência
Especialista em Medicina de Família e Comunidade
Especialista em Medicina do Trabalho
Especialista em Medicina de Tráfego
Especialista em Medicina Esportiva
Especialista em Medicina Física e Reabilitação
Especialista em Medicina Intensiva
Especialista em Medicina Legal e Perícia Médica
Especialista em Medicina Nuclear
Especialista em Medicina Preventiva e Social
Especialista em Nefrologia
Especialista em Neurocirurgia
Especialista em Neurologia
Especialista em Nutrologia
Especialista em Oftalmologia
Especialista em Oncologia Clínica
Especialista em Ortopedia e Traumatologia
Especialista em Otorrinolaringologia
Especialista em Patologia
Especialista em Patologia Clínica/Medicina Laboratorial
Especialista em Pediatria
Especialista em Pneumologia
Especialista em Psiquiatria
Especialista em Radiologia e Diagnóstico por Imagem
Especialista em Radioterapia
Especialista em Reumatologia
Especialista em Urologia

desc medico;
-- INSERCOES

