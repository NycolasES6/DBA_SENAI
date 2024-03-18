-- Active: 1709576080714@@127.0.0.1@3306@db_spotymusic

DROP DATABASE IF EXISTS `db_spotymusic`;
CREATE DATABASE db_spotymusic;
USE db_spotymusic;

CREATE TABLE albun (
    id_albun INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_albun VARCHAR(120) UNIQUE NOT NULL,
    anoLancamento_albun YEAR NOT NULL,
    fk_artista_albun INT NOT NULL
);

CREATE TABLE artista (
    id_artista INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_artista VARCHAR(120) UNIQUE NOT NULL,
    fk_genero_artista INT NOT NULL
);

CREATE TABLE playlist (
    id_playlist INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_playlist VARCHAR(120) NOT NULL
);

CREATE TABLE genero (
    id_genero INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_genero VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE compositor (
    id_compositor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_compositor VARCHAR(120) NOT NULL,
    fk_genero_compositor INT NOT NULL
);

CREATE TABLE musica (
    id_musica INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    duracao_musica TIME NOT NULL,
    nome_musica VARCHAR(120) UNIQUE NOT NULL,
    fk_compositor_musica INT NOT NULL,
    fk_genero_musica INT NOT NULL,
    fk_albun_musica INT NOT NULL,
    fk_artista_musica INT NOT NULL
);

CREATE TABLE musicaPlaylist (
    id_musicaPlaylist INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    fk_playlist_musicaPlaylist INT NOT NULL,
    fk_musica_musicaPlaylist INT NOT NULL
);


-- FOREIGN KEYS
ALTER TABLE albun ADD CONSTRAINT FK_artista_albun
    FOREIGN KEY (fk_artista_albun)
    REFERENCES artista (id_artista)
    ON DELETE CASCADE;
 
ALTER TABLE artista ADD CONSTRAINT FK_genero_artista
    FOREIGN KEY (fk_genero_artista)
    REFERENCES genero (id_genero)
    ON DELETE RESTRICT;
 
ALTER TABLE compositor ADD CONSTRAINT FK_genero_compositor
    FOREIGN KEY (fk_genero_compositor)
    REFERENCES genero (id_genero)
    ON DELETE RESTRICT;
 
ALTER TABLE musica ADD CONSTRAINT FK_compositor_musica
    FOREIGN KEY (fk_compositor_musica)
    REFERENCES compositor (id_compositor)
    ON DELETE RESTRICT;
 
ALTER TABLE musica ADD CONSTRAINT FK_genero_musica
    FOREIGN KEY (fk_genero_musica)
    REFERENCES genero (id_genero)
    ON DELETE RESTRICT;
 
ALTER TABLE musica ADD CONSTRAINT FK_albun_musica
    FOREIGN KEY (fk_albun_musica)
    REFERENCES albun (id_albun)
    ON DELETE CASCADE;
 
ALTER TABLE musica ADD CONSTRAINT FK_artista_musica
    FOREIGN KEY (fk_artista_musica)
    REFERENCES artista (id_artista)
    ON DELETE RESTRICT;
 
ALTER TABLE musicaPlaylist ADD CONSTRAINT FK_playlist_musicaPlaylist
    FOREIGN KEY (fk_playlist_musicaPlaylist)
    REFERENCES playlist (id_playlist);
 
ALTER TABLE musicaPlaylist ADD CONSTRAINT FK_musica_musicaPlaylist
    FOREIGN KEY (fk_musica_musicaPlaylist)
    REFERENCES musica (id_musica);
-- FOREIGN KEYS
