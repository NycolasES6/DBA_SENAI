-- Active: 1709576080714@@127.0.0.1@3306@db_spotymusic
USE db_spotymusic;

-- TRIGGERS --- ---
CREATE VIEW artistaAlbun AS SELECT nome_albun, nome_artista FROM artista
INNER JOIN albun ON fk_artista_albun = id_artista;

CREATE VIEW musicaAlbun AS SELECT nome_musica, nome_albun FROM musica
INNER JOIN albun ON fk_albun_musica = id_albun;

CREATE VIEW musicaAlbunArtistaCompositor AS SELECT nome_musica, nome_albun, nome_artista, nome_compositor FROM musica
INNER JOIN albun ON fk_albun_musica = id_albun
INNER JOIN artista ON fk_artista_albun = id_artista
INNER JOIN compositor ON fk_compositor_musica = id_compositor;

CREATE VIEW  AS ;

CREATE VIEW  AS ;
-- TRIGGERS --- ---


-- TEST TRIGGERS --- ---
SELECT * FROM artistaalbun;

SELECT * FROM musicaalbun;

SELECT * FROM musicaalbunartistacompositor;

-- TEST TRIGGERS --- ---
