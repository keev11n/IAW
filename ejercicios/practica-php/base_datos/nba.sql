-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.14-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;

-- Volcando estructura para tabla test.equipo
CREATE TABLE IF NOT EXISTS `equipo` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='equipo de baloncesto';

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla test.jugador
CREATE TABLE IF NOT EXISTS `jugador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `equipo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK-jugador-equipo` (`equipo_id`),
  CONSTRAINT `FK-jugador-equipo` FOREIGN KEY (`equipo_id`) REFERENCES `equipo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla test.jugador-posicion
CREATE TABLE IF NOT EXISTS `jugador-posicion` (
  `jugador_id` int(11) NOT NULL,
  `posicion_id` int(11) NOT NULL,
  PRIMARY KEY (`jugador_id`,`posicion_id`),
  KEY `FK_posicion` (`posicion_id`),
  CONSTRAINT `FK_jugador` FOREIGN KEY (`jugador_id`) REFERENCES `jugador` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_posicion` FOREIGN KEY (`posicion_id`) REFERENCES `posicion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla test.partido
CREATE TABLE IF NOT EXISTS `partido` (
  `id` int(11) NOT NULL,
  `equipo_v_id` int(11) NOT NULL,
  `equipo_l_id` int(11) NOT NULL,
  `resultado` varchar(50) NOT NULL,
  KEY `FKequipovisitante` (`equipo_v_id`),
  KEY `FKequipolocal` (`equipo_l_id`),
  CONSTRAINT `FKequipolocal` FOREIGN KEY (`equipo_l_id`) REFERENCES `equipo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKequipovisitante` FOREIGN KEY (`equipo_v_id`) REFERENCES `equipo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla test.posicion
CREATE TABLE IF NOT EXISTS `posicion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
