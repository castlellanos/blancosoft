/*
MySQL Backup
Database: blanco
Backup Time: 2022-10-28 08:27:45
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `blanco`.`animales`;
DROP TABLE IF EXISTS `blanco`.`departamentos`;
DROP TABLE IF EXISTS `blanco`.`fincas`;
DROP TABLE IF EXISTS `blanco`.`municipios`;
DROP TABLE IF EXISTS `blanco`.`plantas`;
DROP TABLE IF EXISTS `blanco`.`roles`;
DROP TABLE IF EXISTS `blanco`.`seg_animal`;
DROP TABLE IF EXISTS `blanco`.`seguimientos`;
DROP TABLE IF EXISTS `blanco`.`suelos`;
DROP TABLE IF EXISTS `blanco`.`tratamientos`;
DROP TABLE IF EXISTS `blanco`.`usuarios`;
DROP PROCEDURE IF EXISTS `blanco`.`Insertar`;
CREATE TABLE `animales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finca` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nacimiento` varchar(255) NOT NULL,
  `fenotipo` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `hierro` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `observacion` varchar(255) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `finca_fk` (`finca`),
  CONSTRAINT `finca_fk` FOREIGN KEY (`finca`) REFERENCES `fincas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
CREATE TABLE `fincas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `municipio` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `mun_fk` (`municipio`),
  CONSTRAINT `mun_fk` FOREIGN KEY (`municipio`) REFERENCES `municipios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
CREATE TABLE `municipios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departamento` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dep_fk` (`departamento`),
  CONSTRAINT `dep_fk` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
CREATE TABLE `plantas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `proteina` varchar(255) NOT NULL,
  `fibra` varchar(255) NOT NULL,
  `energia` varchar(255) NOT NULL,
  `seguimiento` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `seg_plantas_fk` (`seguimiento`),
  CONSTRAINT `seg_plantas_fk` FOREIGN KEY (`seguimiento`) REFERENCES `seguimientos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
CREATE TABLE `seg_animal` (
  `animal` int(11) NOT NULL,
  `seguimiento` int(11) NOT NULL,
  `peso` varchar(255) NOT NULL,
  `con_corp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seguimiento`),
  KEY `seguimiento_fk` (`animal`),
  CONSTRAINT `anim_fk` FOREIGN KEY (`animal`) REFERENCES `animales` (`id`),
  CONSTRAINT `seg_animal` FOREIGN KEY (`seguimiento`) REFERENCES `seguimientos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `seguimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finca` int(11) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `finc_fk` (`finca`),
  CONSTRAINT `finc_fk` FOREIGN KEY (`finca`) REFERENCES `fincas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
CREATE TABLE `suelos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ph` varchar(255) NOT NULL,
  `humedad` varchar(255) NOT NULL,
  `compactacion_suelo` varchar(255) NOT NULL,
  `seguimiento` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `seg_suelo_fk` (`seguimiento`),
  CONSTRAINT `seg_suelo_fk` FOREIGN KEY (`seguimiento`) REFERENCES `seguimientos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
CREATE TABLE `tratamientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `animal` int(11) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `ani_fk` (`animal`),
  CONSTRAINT `ani_fk` FOREIGN KEY (`animal`) REFERENCES `animales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
CREATE TABLE `usuarios` (
  `usuario` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `rol` int(11) DEFAULT NULL,
  PRIMARY KEY (`usuario`),
  KEY `rol` (`rol`),
  CONSTRAINT `Rol_Usuario` FOREIGN KEY (`rol`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertar`(IN id_seguimiento int)
BEGIN

declare id_animal INT;
DECLARE contador INT DEFAULT 0;
declare cur1 cursor for select id from animales where animales.estado=1;

DECLARE EXIT HANDLER FOR NOT FOUND SET contador = 0;

open cur1;
read_loop: LOOP
fetch cur1 into id_animal;

IF contador = 1 THEN LEAVE read_loop;

END IF;
insert into seg_animal VALUES (id_animal,id_seguimiento,"0","0");

 
end loop;
close cur1;
END;
BEGIN;
LOCK TABLES `blanco`.`animales` WRITE;
DELETE FROM `blanco`.`animales`;
INSERT INTO `blanco`.`animales` (`id`,`finca`,`nombre`,`nacimiento`,`fenotipo`,`color`,`hierro`,`numero`,`sexo`,`observacion`,`estado`) VALUES (2, 1, 'ANIMAL 1', '2022-08-03', 'FENOTIPO 2', 'BLANCO', '4', '15', 'V', 'Ejemplo Observacion', '1'),(3, 1, 'ANIMAL 2', '2022-08-03', 'FENOTIPO 2', 'NEGRO', '5', '12', 'V', 'Ejemplo Observacion', '1'),(4, 1, 'ANIMAL 3', '2022-08-03', 'FENOTIPO 2', 'NEGRO', '4', '13', 'V', 'Ejemplo Observacion', '0'),(5, 1, 'ANIMAL 4', '2022-08-03', 'FENOTIPO 2', 'NEGRO', '2', '14', 'V', 'Ejemplo Observacion', '0'),(6, 1, 'ANIMAL 5', '2022-08-03', 'FENOTIPO 2', 'NEGRO', '1', '18', 'V', 'Ejemplo Observacion', '0'),(7, 1, 'ANIMAL 6', '2022-12-15', 'FENOTIPO 2', 'NEGRO', '3', '19', 'V', 'Ejemplo Observacion', '1'),(8, 1, 'ANIMAL 7', '2022-08-10', 'FENOTIPO 2', 'NEGRO', '5', '20', 'V', 'Ejemplo Observacion', '0'),(9, 1, 'ANIMAL 8', '2022-05-01', 'FENOTIPO 2', 'NEGRO', '4', '14', 'V', 'Ejemplo Observacion', '1'),(10, 1, 'ANIMAL 9', '2022-08-03', 'FENOTIPO 2', 'NEGRO', '2', '56', 'V', 'Ejemplo Observacion', '0'),(11, 1, 'ANIMAL 10', '2022-01-01', 'FENOTIPO 2', 'BLANCO', '1', '68', 'H', 'Ejemplo Observacion', '0'),(12, 1, 'ANIMAL 11', '2022-08-10', 'FENOTIPO 2', 'NEGRO', '2', '98', 'H', 'Ejemplo Observacion', '1'),(13, 1, 'ANIMALL 12', '2022-08-11', 'FENOTIPO 2', 'BLANCO', '3', '45', 'H', 'Ejemplo Observacion', '0'),(14, 1, 'ANIMAL 13', '2022-08-18', 'FENOTIPO 2', 'NEGRO', '4', '78', 'H', 'Ejemplo Observacion', '1'),(15, 1, 'ANIMAL 14', '2022-09-19', 'FENOTIPO 2', 'NEGRO', '5', '194', 'H', 'Ejemplo Observacion', '0'),(16, 1, 'ANIMAL 44', '2022-09-14', 'B', 'AZUL', '5', '28', 'MASCULINO', 'ASDD', '0'),(17, 1, 'ANIMAL DE PRUEBA456', '2022-09-14', 'FENOTIPO 2', 'BLANCO ', 'BLANCO', '1528', 'MASCULINNO', 'OBB', '0'),(18, 1, '', '2022-10-05', '', '', '', '', '', '', '1'),(19, 1, 'ANIMAL 31233333', '2022-10-19', 'ASD', 'ASD', 'ASD', 'ASD', 'ASD', 'ASD', '1');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `blanco`.`departamentos` WRITE;
DELETE FROM `blanco`.`departamentos`;
INSERT INTO `blanco`.`departamentos` (`id`,`nombre`) VALUES (1, 'ATLANTICO'),(2, 'BOLIVAR');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `blanco`.`fincas` WRITE;
DELETE FROM `blanco`.`fincas`;
INSERT INTO `blanco`.`fincas` (`id`,`nombre`,`municipio`) VALUES (1, 'AGUAS BLANCAS', 1),(2, 'FINCA 2', 2);
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `blanco`.`municipios` WRITE;
DELETE FROM `blanco`.`municipios`;
INSERT INTO `blanco`.`municipios` (`id`,`departamento`,`nombre`) VALUES (1, 1, 'BARRANQUILLA'),(2, 2, 'CARTAGENA');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `blanco`.`plantas` WRITE;
DELETE FROM `blanco`.`plantas`;
INSERT INTO `blanco`.`plantas` (`id`,`nombre`,`proteina`,`fibra`,`energia`,`seguimiento`) VALUES (1, 'PLANTA 1', '40', '40', '50', 1),(2, 'PLANTA 2', '65', '89', '25', 1),(3, 'PLANTA 3', '45', '89', '25', 1);
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `blanco`.`roles` WRITE;
DELETE FROM `blanco`.`roles`;
INSERT INTO `blanco`.`roles` (`id`,`nombre`) VALUES (1, 'Vendedor'),(2, 'Administrador'),(3, 'SuperAdmin'),(4, 'Supervisor');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `blanco`.`seg_animal` WRITE;
DELETE FROM `blanco`.`seg_animal`;
INSERT INTO `blanco`.`seg_animal` (`animal`,`seguimiento`,`peso`,`con_corp`) VALUES (2, 40, '50', '4,5');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `blanco`.`seguimientos` WRITE;
DELETE FROM `blanco`.`seguimientos`;
INSERT INTO `blanco`.`seguimientos` (`id`,`finca`,`fecha`) VALUES (1, 1, '01/01/2022'),(40, 1, '01/01/2022');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `blanco`.`suelos` WRITE;
DELETE FROM `blanco`.`suelos`;
INSERT INTO `blanco`.`suelos` (`id`,`ph`,`humedad`,`compactacion_suelo`,`seguimiento`) VALUES (1, '5', '25', '25', 1);
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `blanco`.`tratamientos` WRITE;
DELETE FROM `blanco`.`tratamientos`;
INSERT INTO `blanco`.`tratamientos` (`id`,`animal`,`fecha`,`tipo`,`descripcion`,`estado`) VALUES (2, 2, '05/02/2022', 'VACUNA', 'Se le aplico la vacuna 1', '0'),(3, 2, '06/05/2022', 'VACUNA', 'Se le aplico la vacuna 2', '0'),(11, 2, '$datos[1]', '$datos[2]', '$datos[3]', '0'),(17, 2, '2022-09-13', 'Tarjeta de Identidad', 'asd', '0'),(32, 3, '2022-09-07', 'VACUNA56', 'Se le aplico vacuna 56', '1'),(33, 3, '2022-09-14', 'VETERINARIO', 'Se le aplicó la vacuna', '0'),(34, 2, '2022-09-14', 'VACUNA', '123456', '0'),(35, 12, '2022-09-14', 'VETERINARIO', '2033', '1'),(36, 15, '2022-09-14', 'EJEMPLO', 'EJEMPLO', '0'),(37, 12, '2022-09-14', 'HOLA', 'HOLA', '0'),(38, 3, '2022-09-07', 'VACUNA', 'HOLA MUNDO', '0'),(39, 2, '2022-09-13', 'VACUNA', 'VACUNA', '0'),(40, 2, '2022-09-13', 'VACUNA', 'VACUNA', '0'),(41, 2, '2022-09-13', 'VACUNA', 'VACUNA', '0'),(42, 12, '2022-09-14', '123456', '123456', '0'),(43, 9, '2022-09-07', '123456', '123456', '1'),(44, 7, '2022-09-07', 'asdasd', 'asdasd', '0'),(45, 14, '2022-09-14', 'VACUNA', 'VAUNA', '1'),(46, 14, '', 'VETERINARIO', 'VETEIRANIO', '1'),(47, 16, '2022-09-21', 'Cédula de Ciudadanía', '123456', '1'),(48, 2, '2022-09-21', '', 'GRABACIÓN SESIÓN EN LÍNEA: RELATO - TRABAJO COLABORATIVO 23/03/2021 - 6:30PM', '0'),(49, 2, '2022-09-07', '', 'asdasd', '0'),(50, 4, '2022-09-14', '', 'asdasd', '1'),(51, 4, '2022-09-14', '', 'asdasd', '1'),(52, 4, '2022-09-14', '', 'asdasd', '1'),(53, 4, '2022-09-14', '', 'asdasd', '1'),(54, 7, '2022-09-14', 'Chrome', 'asdasd', '0'),(55, 2, '2022-09-15', 'Vacuna', '', '0'),(56, 2, '2022-09-20', 'Vacuna', 'Esto es un ejemplo de vacuna', '0'),(57, 2, '2022-09-08', 'Urgencia', 'Esto es un ejemplo', '0'),(58, 7, '2022-08-30', 'Vacuna', 'ASDASDASD', '0'),(59, 2, '2022-09-21', 'Urgencia', 'Visita de Medico para control de bajo de peso.', '0'),(60, 2, '2022-09-08', 'Urgencia', 'Ejemplo', '1'),(61, 3, '2022-09-07', 'Urgencia', 'asdasd', '1'),(63, 2, '2022-10-05', 'Urgencia', 'ASDASD', '1');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `blanco`.`usuarios` WRITE;
DELETE FROM `blanco`.`usuarios`;
INSERT INTO `blanco`.`usuarios` (`usuario`,`contraseña`,`rol`) VALUES ('admin', '4789', 1),('admin12345', '12345', 3),('admin31241', '45698', 1);
UNLOCK TABLES;
COMMIT;
