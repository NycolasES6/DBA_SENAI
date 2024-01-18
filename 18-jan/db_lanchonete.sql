-- Active: 1705524060714@@127.0.0.1@3306@db_lanchonete
CREATE TABLE Cliente(
    id_Cliente INT PRIMARY KEY NOT NULL AUTO_INCREMENT
    nome_Cliente VARCHAR(120) NOT NULL,
    email_Cliente VARCHAR(120) UNIQUE,
    telefone_Cliente VARCHAR(20)
);

CREATE TABLE Pedido(
    id_Pedido INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dt_PEDIDO DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    valorTotal_Pedido DECIMAL(10,2) NOT NULL, 
    fk_Cliente_id_Cliente INT NOT NULL, CONSTRAINT FK_Cliente FOREIGN KEY (fk_Cliente_id_Cliente) REFERENCES Cliente (id_Cliente) ON DELETE CASCADE
);

CREATE TABLE Produto(
    id_Produto INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_Produto VARCHAR(120) NOT NULL,
    preco_Produto DECIMAL(10,2));

CREATE TABLE ItensPedido(
    id_ItensPedido INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    quantidade_ItensPedido INT NOT NULL, 
    fk_Produto_id_Produto INT NOT NULL, 
    fk_Pedido_id_Pedido INT NOT NULL,
    CONSTRAINT FK_Produto FOREIGN KEY (fk_Produto_id_Produto) REFERENCES Produto (id_Produto) ON DELETE CASCADE,
    CONSTRAINT FK_Pedido FOREIGN KEY (fk_Pedido_id_Pedido) REFERENCES Pedido (id_Pedido) ON DELETE CASCADE);

CREATE TABLE Contato(
    id_ItensPedido INT PRIMARY KEY NOT NULL,
    numero_Contato VARCHAR(15) NOT NULL UNIQUE,
    tipo_Contato VARCHAR(15) NOT NULL
);

-- INSERT
INSERT INTO Cliente(`id_Cliente`, `nome_Cliente`, `email_Cliente`, `telefone_Cliente`) VALUES (null, "Nycolas Ramos", "nycsenju@gmail.com", "61 998085330");
INSERT INTO Cliente(`id_Cliente`, `nome_Cliente`, `email_Cliente`, `telefone_Cliente`) VALUES (null, "Atylas Ramos", "atylassenju@gmail.com", "61 998085354");
INSERT INTO Cliente(`id_Cliente`, `nome_Cliente`, `email_Cliente`, `telefone_Cliente`) VALUES (null, "Eryck", "erycksenju@gmail.com", "61 998085776");
INSERT INTO Cliente(`id_Cliente`, `nome_Cliente`, `email_Cliente`, `telefone_Cliente`) VALUES (null, "Davi Ramos", "davisenju@gmail.com", "61 998085764");
SELECT * FROM cliente;

