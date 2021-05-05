DROP DATABASE IF EXISTS libreapp;
CREATE DATABASE libreapp;
use libreapp;

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `libreapp`.`categorias` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `nombre_categoria` VARCHAR(45) NULL,
  PRIMARY KEY (`id_categoria`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
  
DROP TABLE IF EXISTS `licencias`;

CREATE TABLE `libreapp`.`licencias` (
  `id_licencia` INT NOT NULL AUTO_INCREMENT,
  `nombre_licencia` VARCHAR(45) NULL,
  `descripcion` VARCHAR(500) NULL,
  PRIMARY KEY (`id_licencia`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `comentarios`;

CREATE TABLE `libreapp`.`comentarios` (
  `id_comentario` INT NOT NULL,
  `comentario` VARCHAR(500) NULL,
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
  `id_licencia` INT NOT NULL,
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
  
INSERT INTO `libreapp`.`licencias` (`id_licencia`, `nombre_licencia`, `descripcion`) VALUES ('1', 'GPLv2', 'https://opensource.org/licenses/gpl-2.0.php');
INSERT INTO `libreapp`.`licencias` (`id_licencia`, `nombre_licencia`, `descripcion`) VALUES ('2', 'GPLv3', 'https://www.gnu.org/licenses/gpl-3.0.en.html');
INSERT INTO `libreapp`.`licencias` (`id_licencia`, `nombre_licencia`, `descripcion`) VALUES ('3', 'Apache License', 'https://apache.org/licenses/LICENSE-2.0.txt');
INSERT INTO `libreapp`.`licencias` (`id_licencia`, `nombre_licencia`, `descripcion`) VALUES ('4', 'Mozilla Public License', 'https://www.mozilla.org/en-US/MPL/2.0/');
INSERT INTO `libreapp`.`licencias` (`id_licencia`, `nombre_licencia`, `descripcion`) VALUES ('5', 'MIT license', 'https://mit-license.org/');

INSERT INTO `libreapp`.`aplicaciones` (`id_app`, `nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`) VALUES ('1', 'LibreOffice', '7.0.5', '2021/05/05', 'https://image.flaticon.com/icons/png/512/23/23666.png', 'https://es.libreoffice.org/descarga/libreoffice/', 'LibreOffice es una suite ofimática completa compuesta de procesador de textos, hoja de cálculo, presentaciones, programa de dibujo, base de datos y editor de ecuaciones.', '2', '2');
INSERT INTO `libreapp`.`aplicaciones` (`id_app`, `nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`) VALUES ('2', 'Code::Blocks', '20.03', '2020/04/03', 'https://www.codeblocks.org/images/logo160.png', 'http://www.codeblocks.org/downloads/binaries/', 'Code::Blocks es un IDE (entorno de desarrollo integrado) de C/C++, que permite utilizar varios compiladores a elección del usuario (GNU GCC, MinGW GCC, MS Visual C++, clang, Borland C++ 5.5, Open Watcom, etc., que deben instalarse por separado). Esta versión incluye MinGW-W64.', '1', '2');


SET @@global.time_zone = '+01:00';
SELECT @@global.time_zone;
use libreapp;