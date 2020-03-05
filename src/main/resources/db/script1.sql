drop database bibliotecaJuegosDB;
create database bibliotecaJuegosDB;
use bibliotecaJuegosDB;

CREATE TABLE juegos(
	id int not null primary key auto_increment,
    juego varchar(45) not null,
    fecLanz date not null,
    foto varchar(255)
);

CREATE TABLE categorias(
	id int not null primary key auto_increment,
    categoria varchar(45) not null
);


CREATE TABLE modos(
	id int not null primary key auto_increment
);

CREATE TABLE tiposModos(
	id int not null primary key auto_increment,
    tipo varchar(55) not null
);

CREATE TABLE plataformas(
	id int not null primary key auto_increment
);

CREATE TABLE tiposPlataformas(
	id int not null primary key auto_increment,
    tipo varchar(55) not null
);

-- JUEGOS

ALTER TABLE juegos ADD COLUMN id_categoria INT NULL;

ALTER TABLE juegos ADD CONSTRAINT id_categoria
FOREIGN KEY (id_categoria) REFERENCES Categorias(id);

-- MODOS

ALTER TABLE modos ADD COLUMN id_tipoModo INT NULL;

ALTER TABLE modos ADD CONSTRAINT id_tipoModo
FOREIGN KEY (id_tipoModo) REFERENCES tiposModos(id);

ALTER TABLE modos ADD COLUMN id_juego INT NULL;

ALTER TABLE modos ADD CONSTRAINT id_juego
FOREIGN KEY (id_juego) REFERENCES Juegos(id);

-- PLATAFORMAS

ALTER TABLE plataformas ADD COLUMN id_tipoPlataforma INT NULL;

ALTER TABLE plataformas ADD CONSTRAINT id_tipoPlataforma
FOREIGN KEY (id_tipoPlataforma) REFERENCES tiposPlataformas(id);

ALTER TABLE plataformas ADD COLUMN id_jueg INT NULL;

ALTER TABLE plataformas ADD CONSTRAINT id_jueg
FOREIGN KEY (id_jueg) REFERENCES Juegos(id);


-- INSERTS

INSERT INTO categorias(categoria) VALUES ('ACCIÓN');
INSERT INTO categorias(categoria) VALUES ('ARCADE');
INSERT INTO categorias(categoria) VALUES ('DEPORTIVO');
INSERT INTO categorias(categoria) VALUES ('ESTRATEGIA');
INSERT INTO categorias(categoria) VALUES ('SIMULACIÓN');
INSERT INTO categorias(categoria) VALUES ('MESA');
INSERT INTO categorias(categoria) VALUES ('MUSICAL');

INSERT INTO tiposPlataformas(tipo) VALUES ('PC');
INSERT INTO tiposPlataformas(tipo) VALUES ('XBOX 360');
INSERT INTO tiposPlataformas(tipo) VALUES ('XBOX ONE');
INSERT INTO tiposPlataformas(tipo) VALUES ('NITENDO WII');

INSERT INTO tiposModos(tipo) VALUES ('UN JUGADOR');
INSERT INTO tiposModos(tipo) VALUES ('MULTIJUGADOR');
INSERT INTO tiposModos(tipo) VALUES ('DEATHMATCH');



SELECT * FROM categorias;
SELECT * FROM tiposPlataformas;
SELECT * FROM tiposModos;
SELECT * FROM plataformas;
SELECT * FROM modos;
SELECT * FROM juegos;


