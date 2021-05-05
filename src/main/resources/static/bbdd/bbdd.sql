DROP DATABASE IF EXISTS libreapp;
CREATE DATABASE libreapp;
use libreapp;

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `libreapp`.`categorias` (
  `id_categoria` INT NOT NULL,
  `nombre_categoria` VARCHAR(45) NULL,
  PRIMARY KEY (`id_categoria`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
  
DROP TABLE IF EXISTS `licencias`;

CREATE TABLE `libreapp`.`licencias` (
  `id_licencia` INT NOT NULL,
  `nombre_licencia` VARCHAR(45) NULL,
  `descripcion` VARCHAR(500) NULL,
  PRIMARY KEY (`id_licencia`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `comentarios`;

CREATE TABLE `libreapp`.`comentarios` (
  `id_comentario` INT NOT NULL,
  `comentario` VARCHAR(45) NULL,
  PRIMARY KEY (`id_comentario`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `aplicaciones`;

CREATE TABLE `libreapp`.`aplicaciones` (
  `id_app` INT NOT NULL AUTO_INCREMENT,
  `nombre_app` VARCHAR(45) NOT NULL,
  `version` VARCHAR(5) NOT NULL,
  `fecha` date NOT NULL,
  `link_imagen` VARCHAR(100) NULL,
  `link_descarga` VARCHAR(100) NOT NULL,
  `descripcion` VARCHAR(500) NOT NULL,
  `id_categoria` INT NOT NULL,
  `id_licencia` INT NULL,
  `id_comentario` INT NULL,
  PRIMARY KEY (`id_app`),
  CONSTRAINT `id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  CONSTRAINT `id_licencia` FOREIGN KEY (`id_licencia`) REFERENCES `licencias` (`id_licencia`),
  CONSTRAINT `id_comentario` FOREIGN KEY (`id_comentario`) REFERENCES `comentarios` (`id_comentario`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
  
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('1', 'Desarrollo de Aplicaciones');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('2', 'Oficina');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('3', 'Video');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('4', 'Sonido');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('5', 'Imagen');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('6', 'Juegos');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('7', 'Utilidades');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('8', 'Bases de Datos');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('9', 'Internet');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('10', 'Ciencia');
  
SET @@global.time_zone = '+01:00';
SELECT @@global.time_zone;
use libreapp;