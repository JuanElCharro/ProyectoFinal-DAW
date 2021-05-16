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
  
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES (null, null);
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('2', 'Desarrollo de Aplicaciones');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('3', 'Oficina');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('4', 'Video');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('5', 'Sonido');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('6', 'Imagen');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('7', 'Juegos');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('8', 'Utilidades');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('9', 'Bases de Datos');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('10', 'Internet');
INSERT INTO `libreapp`.`categorias` (`id_categoria`, `nombre_categoria`) VALUES ('11', 'Ciencia');
  
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

INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('LibreOffice', '7.0.5', '2021/05/05', 'https://image.flaticon.com/icons/png/512/23/23666.png', 'https://download.documentfoundation.org/libreoffice/stable/7.0.6/win/x86_64/LibreOffice_7.0.6_Win_x64.msi', 'LibreOffice es una suite ofimática completa compuesta de procesador de textos, hoja de cálculo, presentaciones, programa de dibujo, base de datos y editor de ecuaciones. Está diseñada para ser compatible con los principales paquetes ofimáticos.', '3', '2', '4');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('Code::Blocks', '20.03', '2020/04/03', 'https://www.codeblocks.org/images/logo160.png', 'https://www.fosshub.com/Code-Blocks.html?dwl=codeblocks-20.03mingw-setup.exe', 'Code::Blocks es un IDE (entorno de desarrollo integrado) de C/C++, que permite utilizar varios compiladores a elección del usuario (GNU GCC, MinGW GCC, MS Visual C++, clang, Borland C++ 5.5, Open Watcom, etc., que deben instalarse por separado).', '2', '2', '5');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('VLC media player', '3.0.1', '2021-01-17', 'https://maxcdn.icons8.com/Color/PNG/512/Logos/vlc-512.png', 'https://softlibre.unizar.es/videolan/vlc/3.0.14/win64/vlc-3.0.14-win64.exe', 'VideoLAN Media Player es un reproductor multimedia que reproduce numerosos formatos de audio y vídeo (MPEG-1, MPEG-2, MPEG-4, DivX, mp3, ogg, etc.) así como DVDs y VCDs. Es extremadamente ligero y veloz. Ha sido líder durante años.', '4', '5', '3');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('FileZilla', '3.53', '2021-03-23', 'https://cdn1.iconfinder.com/data/icons/metro-ui-dock-icon-set--icons-by-dakirby/512/FileZilla.png', 'https://download.filezilla-project.org/client/FileZilla_3.54.0_win64_sponsored-setup.exe', 'FileZilla es una aplicación FTP libre y de código abierto que consta de un cliente y un servidor. Soporta los protocolos FTP, SFTP y FTP sobre SSL/TLS (FTPS). Inicialmente hecho para Windows.', '10', '4', '2');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('Xonotic', '0.8.2', '2017-04-12', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Xonotic_512.png', 'https://dl.xonotic.org/xonotic-0.8.2.zip', 'Xonotic es un juego de disparos multijugador en primera persona (FPS), fork de Nexuiz, cuya característica principal es la velocidad de movimiento de los jugadores.', '7', '1', '5');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('Minetest', '5.4.1', '2021-04-10', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Minetest_logo.svg/480px-Minetest_logo.svg.png', 'https://github.com/minetest/minetest/releases/download/5.4.1/minetest-5.4.1-win64.zip', 'Minetest es un juego de mundo abierto inspirado en Minecraft. El juego dispone de dos modos de juego (supervivencia o creativo) y permite jugar de forma individual o multijugador.', '7', '2', '5');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('MySQL Community', '8.0.24', '2021-05-05', 'https://logoeps.com/wp-content/uploads/2012/03/mysql-vector1.jpg', 'https://dev.mysql.com/get/Downloads/MySQLInstaller/mysql-installer-web-community-8.0.24.0.msi', 'MySQL es un servidor de bases de datos SQL. Este instalador incluye el servidor y herramientas adicionales (MySQL Shell, MySQL Router, MySQL Workbench, etc.). MySQL WorkBench es una herramienta de diseño de bases de datos para MySQL.', '9', '1', '4');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('Thunderbird', '78.10', '2021-05-04', 'https://cdn-images-1.medium.com/max/1200/1*F3Zq-BnuzQz5FdHo8cYzfA.png', 'https://download.mozilla.org/?product=thunderbird-78.10.1-msi-SSL&os=win64&lang=es-ES', 'Thunderbird es un cliente de correo de los creadores de Firefox. Incorpora multitud de características avanzadas: herramientas para detectar el correo basura, herramientas de seguridad (S/MIME, firma digital, encriptación, etc)', '10', '2', '5');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('Eclipse Java EE', '21.03', '2021-03-17', 'https://seeklogo.com/images/E/eclipse-logo-85FE4BEA34-seeklogo.com.png', 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2021-03/R/eclipse-jee-2021-03-R-win32-x86_64.zip&r=1', 'Eclipse Java EE es un IDE (entorno de desarrollo integrado) para Java y Java Enterprise Edition basado en Eclipse 4.18. El programa no necesita instalación: hay que descomprimir el archivo zip en un directorio', '2', '1', '3');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('Audacity', '3.0.2', '2021-04-19', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Audacity_Logo.svg/768px-Audacity_Logo.svg.png', 'https://github.com/audacity/audacity/releases/download/Audacity-3.0.2/audacity-win-3.0.2.exe', 'Audacity es una aplicación informática multiplataforma libre que se puede usar para grabación y edición de audio, distribuida bajo la licencia GPLv2+. Fue creado en otoño de 1999 por Dominic Mazzoni y Roger Dannenberg.', '5', '2', '5');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('Octave', '6.2.0', '2021-02-20', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Gnu-octave-logo.svg/1024px-Gnu-octave-logo.svg.png', 'https://ftp.gnu.org/gnu/octave/windows/octave-6.2.0-w64-installer.exe', 'Octave es un lenguaje de alto nivel diseñado para cálculo numérico y prácticamente compatible con Matlab. Incorpora herramientas para resolver problemas de álgebra lineal y calcular raíces de ecuaciones no lineales.', '11', '2', '4');
INSERT INTO `libreapp`.`aplicaciones` (`nombre_app`, `version`, `fecha`, `link_imagen`, `link_descarga`, `descripcion`, `id_categoria`, `id_licencia`, `id_valoracion`) VALUES ('GIMP', '2.10', '2021-04-07', 'https://logonoid.com/images/gimp-logo.png', 'https://download.gimp.org/mirror/pub/gimp/v2.10/windows/gimp-2.10.24-setup-3.exe', 'GIMP (GNU Image Manipulation Program) es un programa de retoque fotográfico y composición y edición de imágenes. GAP (GIMP Animation Package) es un conjunto de plug-ins para GIMP 2.6.0', '6', '1', '5');


SET @@global.time_zone = '+01:00';
SELECT @@global.time_zone;
use libreapp;