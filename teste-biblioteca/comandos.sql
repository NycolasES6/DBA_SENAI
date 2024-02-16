-- Active: 1706635174833@@127.0.0.1@3306@db_biblioteca
/* Lógico_1: */
CREATE DATABASE db_biblioteca;
USE db_biblioteca;

CREATE TABLE livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    nome_livro VARCHAR(120) NOT NULL,
    isbn_livro VARCHAR(20) NOT NULL,
    estoque_livro INT NOT NULL,
    fk_autor_livro INT NOT NULL,
    fk_editora_livro INT NOT NULL,
    fk_genero_livro INT NOT NULL,
    UNIQUE (nome_livro, isbn_livro)
);

CREATE TABLE autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome_autor VARCHAR(120) NOT NULL,
    dt_nascimento_autor DATE NOT NULL,
    cpf_autor VARCHAR(15) UNIQUE NOT NULL
);



CREATE TABLE editora (
    id_editora INT PRIMARY KEY AUTO_INCREMENT,
    nome_editora VARCHAR(120) NOT NULL,
    uf_editora VARCHAR(2) NOT NULL,
    contato_editora VARCHAR(20) NOT NULL
);

CREATE TABLE genero (
    id_genero INT PRIMARY KEY AUTO_INCREMENT,
    nome_genero VARCHAR(20) NOT NULL
);

-- CHAVES ESTRANGEIRAS
ALTER TABLE livro ADD CONSTRAINT FK_autor
    FOREIGN KEY (fk_autor_livro)
    REFERENCES autor(id_autor)
    ON DELETE RESTRICT;
 
ALTER TABLE livro ADD CONSTRAINT FK_editora
    FOREIGN KEY (fk_editora_livro)
    REFERENCES editora (id_editora)
    ON DELETE RESTRICT;
 
ALTER TABLE livro ADD CONSTRAINT FK_genero
    FOREIGN KEY (fk_genero_livro)
    REFERENCES genero (id_genero)
    ON DELETE RESTRICT;

-- INSERTS
INSERT INTO genero(nome_genero) VALUES("Ação"), ("Infantil"), ("Romance"), ("Suspense");

INSERT INTO editora(nome_editora, uf_editora, contato_editora) VALUES
("Abril", "DF", "+55 (61) 99808-7609"),
("Globo", "GO", "+55 (65) 99808-7609"),
("Universo", "RJ", "+55 (76) 99808-7609"),
("Conhecer", "SP", "+55 (51) 99808-7609");

INSERT INTO autor(nome_autor, dt_nascimento_autor, cpf_autor) VALUES
("Nycolas R.", "1990/08/31", "78645687234"),
("Cleber S.", "1995/09/12", "98783787645"),
("C.S Lewis", "2000/10/20", "18467887187"),
("Tolkien", "1998/04/07", "45664887156");

INSERT INTO livro(nome_livro, isbn_livro, estoque_livro, fk_autor_livro, fk_editora_livro, fk_genero_livro) VALUES
("Lua Nova", "567–67–87–0227–9", 345, 1, 1, 3),
("A terra do nunca", "978–85–333–0227–3", 76, 2, 4, 3),
("O sol nascente", "564–76–786–0227–3", 256, 1, 4, 3),
("O anão", "564–76–648–0227–8", 45, 4, 4, 3),
("A corda", "678–23–648–0245–8", 78, 3, 1, 4),
("A corda bamba", "456–68–35–5429–8", 98, 2, 1, 4),
("Senhor do mundo", "650–65–35–5429–0", 256, 1, 1, 4),
("Os dois mundos", "354–45–76–5429–0", 98, 4, 1, 4),
("O laptop", "143–44–34–5429–0", 145, 3, 2, 2),
("Código Davinci", "475–44–348–5687–0", 346, 2, 2, 2),
("Davi o grande rei", "132–23–654–8736–0", 76, 1, 2, 2),
("A escola amaldiçoada", "165–43–654–5436–0", 457, 4, 2, 2),
("Afreira", "165–43–654–5436–9", 289, 3, 3, 1),
("A casa branca", "785–54–648–5436–9", 190, 2, 3, 1),
("A escola negra", "254–34–567–5436–8", 120, 4, 3, 1),
("A caixa amaldiçoada", "466–87–657–1436–8", 678, 1, 3, 1);