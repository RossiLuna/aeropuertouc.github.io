DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    title TEXT NOT NULL,
    content TEXT NOT NULL
);


-- ************************************** `usuario`

CREATE TABLE `usuario`
(
 `id_usuario`      integer NOT NULL ,
 `nombre`          varchar(100) NOT NULL ,
 `contraseña`      varchar(120) NOT NULL ,
 `nombre_completo` varchar(100) NOT NULL ,

PRIMARY KEY (`id_usuario`)
);

-- ************************************** `destino`

CREATE TABLE `destino`
(
 `id_destino` integer NOT NULL ,
 `america`    float NOT NULL ,
 `europa`     float NOT NULL ,
 `africa`     float NOT NULL ,

PRIMARY KEY (`id_destino`)
);

-- ************************************** `membresia`

CREATE TABLE `membresia`
(
 `id_men`     integer NOT NULL ,
 `vip`        t NOT NULL ,
 `turista`    float NOT NULL ,
 `id_usuario` integer NOT NULL ,

PRIMARY KEY (`id_men`),
KEY `FK_1` (`id_usuario`),
CONSTRAINT `FK_7_1` FOREIGN KEY `FK_1` (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
);


-- ************************************** `precio`

CREATE TABLE `precio`
(
 `id_precio`  integer NOT NULL ,
 `id_destino` integer NOT NULL ,
 `id_men`     integer NOT NULL ,
 `id_usuario` integer NOT NULL ,

PRIMARY KEY (`id_precio`),
KEY `FK_2` (`id_destino`),
CONSTRAINT `FK_2` FOREIGN KEY `FK_2` (`id_destino`) REFERENCES `destino` (`id_destino`),
KEY `FK_2_1` (`id_men`),
CONSTRAINT `FK_6_1` FOREIGN KEY `FK_2_1` (`id_men`) REFERENCES `membresia` (`id_men`),
KEY `FK_3` (`id_usuario`),
CONSTRAINT `FK_4` FOREIGN KEY `FK_3` (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
);