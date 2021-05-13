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

DROP TABLE IF EXISTS `valoraciones`;

CREATE TABLE `libreapp`.`valoraciones` (
  `id_valoracion` INT NOT NULL AUTO_INCREMENT,
  `valores` VARCHAR(5) NULL,
  PRIMARY KEY (`id_valoracion`)
  )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `aplicaciones`;

CREATE TABLE `libreapp`.`aplicaciones` (
  `id_app` INT NOT NULL AUTO_INCREMENT,
  `nombre_app` VARCHAR(45) NULL,
  `version` VARCHAR(10) NULL,
  `fecha` date NULL,
  `link_imagen` VARCHAR(250) NULL,
  `link_descarga` VARCHAR(250) NULL,
  `descripcion` VARCHAR(600) NULL,
  `id_categoria` INT NOT NULL,
  `id_licencia` INT NOT NULL,
  `id_valoracion` INT NULL,
  PRIMARY KEY (`id_app`),
  CONSTRAINT `id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  CONSTRAINT `id_licencia` FOREIGN KEY (`id_licencia`) REFERENCES `licencias` (`id_licencia`),
  CONSTRAINT `id_valoracion` FOREIGN KEY (`id_valoracion`) REFERENCES `valoraciones` (`id_valoracion`)
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

INSERT INTO `libreapp`.`valoraciones` (`id_valoracion`, `valores`) VALUES ('1', '1/5');
INSERT INTO `libreapp`.`valoraciones` (`id_valoracion`, `valores`) VALUES ('2', '2/5');
INSERT INTO `libreapp`.`valoraciones` (`id_valoracion`, `valores`) VALUES ('3', '3/5');
INSERT INTO `libreapp`.`valoraciones` (`id_valoracion`, `valores`) VALUES ('4', '4/5');
INSERT INTO `libreapp`.`valoraciones` (`id_valoracion`, `valores`) VALUES ('5', '5/5');

INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('LibreOffice', '7.0.5', '2021/05/05', 'https://image.flaticon.com/icons/png/512/23/23666.png', 'https://es.libreoffice.org/descarga/libreoffice/', 'LibreOffice es una suite ofimática completa compuesta de procesador de textos, hoja de cálculo, presentaciones, programa de dibujo, base de datos y editor de ecuaciones. Está diseñada para ser compatible con los principales paquetes ofimáticos.', '2', '2', '4');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('Code::Blocks', '20.03', '2020/04/03', 'https://www.codeblocks.org/images/logo160.png', 'http://www.codeblocks.org/downloads/binaries/', 'Code::Blocks es un IDE (entorno de desarrollo integrado) de C/C++, que permite utilizar varios compiladores a elección del usuario (GNU GCC, MinGW GCC, MS Visual C++, clang, Borland C++ 5.5, Open Watcom, etc., que deben instalarse por separado).', '1', '2', '5');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('VLC media player', '3.0.1', '2021-01-17', 'https://maxcdn.icons8.com/Color/PNG/512/Logos/vlc-512.png', 'https://www.videolan.org/', 'VideoLAN Media Player es un reproductor multimedia que reproduce numerosos formatos de audio y vídeo (MPEG-1, MPEG-2, MPEG-4, DivX, mp3, ogg, etc.) así como DVDs y VCDs.', '3', '5', '3');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('FileZilla', '3.53', '2021-03-23', 'https://cdn1.iconfinder.com/data/icons/metro-ui-dock-icon-set--icons-by-dakirby/512/FileZilla.png', 'https://download.filezilla-project.org/client/FileZilla_3.54.0_win64_sponsored-setup.exe', 'FileZilla es una aplicación FTP libre y de código abierto que consta de un cliente y un servidor. Soporta los protocolos FTP, SFTP y FTP sobre SSL/TLS (FTPS). Inicialmente fue diseñado para funcionar en Microsoft Windows, es multiplataforma. ', '9', '4', '2');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('Xonotic', '0.8.2', '2017-04-12', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Xonotic_512.png', 'https://dl.xonotic.org/xonotic-0.8.2.zip', 'Xonotic es un juego de disparos multijugador en primera persona (FPS), fork de Nexuiz, cuya característica principal es la velocidad de movimiento de los jugadores.', '6', '1', '5');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('Minetest', '5.4.1', '2021-04-10', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Minetest_logo.svg/480px-Minetest_logo.svg.png', 'https://github.com/minetest/minetest/releases/download/5.4.1/minetest-5.4.1-win64.zip', 'Minetest es un juego de mundo abierto inspirado en Minecraft. El juego dispone de dos modos de juego (supervivencia o creativo) y permite jugar de forma individual o multijugador.', '6', '2', '5');


SET @@global.time_zone = '+01:00';
SELECT @@global.time_zone;
use libreapp;