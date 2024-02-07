-- Active: 1706635174833@@127.0.0.1@3306
CREATE DATABASE db_empresa
    DEFAULT CHARACTER SET = 'utf8mb4';

    -- CRIACAO DOS BANCOS
    CREATE TABLE departamento(
        id_departamento INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        nome_departamento VARCHAR(120) NOT NULL,
        logradouro_departamento VARCHAR(150) NOT NULL
    );

    CREATE TABLE empregado(
        id_empregado INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        nome_empregado VARCHAR(120) NOT NULL,
        salario_empregado DECIMAL(10,2) NOT NULL,
        sexo_empregado VARCHAR(1) NOT NULL,
        fk_id_departamento INT NOT NULL,
        CONSTRAINT fk_departamento FOREIGN KEY (fk_id_departamento) REFERENCES departamento(id_departamento)
    );