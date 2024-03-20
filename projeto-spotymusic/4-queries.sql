-- Active: 1710960282668@@127.0.0.1@3306@db_spotymusic
USE db_spotymusic;

-- -- -- -- --
-- 1
SELECT nome_albun FROM albun;

-- 2
SELECT nome_artista FROM artista;

-- 3
SELECT nome_compositor FROM compositor;

-- 4
SELECT nome_genero FROM genero;

-- 5
SELECT nome_musica FROM musica;

-- 6
SELECT nome_playlist FROM playlist;
-- -- -- -- --


-- -- -- -- --
-- 7
SELECT COUNT(nome_albun) AS qtd_albun FROM albun;

-- 8
SELECT COUNT(nome_artista) AS qtd_artista FROM artista;

-- 9
SELECT COUNT(nome_compositor) AS qtd_compositor FROM compositor;

-- 10
SELECT COUNT(nome_genero) AS qtd_genero FROM genero;

-- 11
SELECT COUNT(nome_musica) AS qtd_musica FROM musica;

-- 12
SELECT COUNT(nome_playlist) AS qtd_playlist FROM playlist;
-- -- -- -- --


-- -- -- -- --
-- 7
SELECT nome_albun, COUNT(id_musica) FROM albun
INNER JOIN musica ON fk_albun_musica = id_albun GROUP BY nome_albun;

-- 8
SELECT nome_artista, COUNT(id_musica) FROM artista
INNER JOIN musica ON fk_albun_musica = id_artista GROUP BY nome_artista;

-- 9
SELECT nome_compositor, COUNT(id_musica) FROM compositor
INNER JOIN musica ON fk_compositor_musica = id_compositor GROUP BY nome_compositor;

-- 10
SELECT nome_genero, COUNT(id_musica) FROM genero
INNER JOIN musica ON fk_genero_musica = id_genero GROUP BY nome_genero;

-- 12
SELECT nome_playlist, COUNT(id_musica) FROM musicaplaylist
INNER JOIN musica ON `fk_musica_musicaPlaylist` = id_musica
INNER JOIN playlist ON `fk_playlist_musicaPlaylist` = id_playlist GROUP BY nome_playlist;
-- -- -- -- --


-- -- -- -- --
-- 13
SELECT nome_albun, nome_musica FROM albun
INNER JOIN musica ON fk_albun_musica = id_albun;

-- 14
SELECT nome_artista, nome_musica FROM artista
INNER JOIN musica ON fk_albun_musica = id_artista;

-- 15
SELECT nome_compositor, nome_musica FROM compositor
INNER JOIN musica ON fk_compositor_musica = id_compositor;

-- 16
SELECT nome_genero, nome_musica FROM genero
INNER JOIN musica ON fk_genero_musica = id_genero;

-- 17
SELECT nome_musica, nome_playlist FROM musicaplaylist
INNER JOIN musica ON `fk_musica_musicaPlaylist` = id_musica
INNER JOIN playlist ON `fk_playlist_musicaPlaylist` = id_playlist;
-- -- -- -- --


-- -- -- -- --
-- 14
SELECT nome_albun, nome_musica FROM albun
INNER JOIN musica ON fk_albun_musica = id_albun;

-- 15
SELECT nome_artista, nome_musica FROM artista
INNER JOIN musica ON fk_albun_musica = id_artista;

-- 16
SELECT nome_compositor, nome_musica FROM compositor
INNER JOIN musica ON fk_compositor_musica = id_compositor;

-- 17
SELECT nome_genero, nome_musica FROM genero
INNER JOIN musica ON fk_genero_musica = id_genero;
-- -- -- -- --
