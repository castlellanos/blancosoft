/*
 Navicat Premium Data Transfer

 Source Server         : CadenaBasica
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : blanco

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 28/10/2022 08:22:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for animales
-- ----------------------------
DROP TABLE IF EXISTS `animales`;
CREATE TABLE `animales`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `finca` int NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nacimiento` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fenotipo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hierro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `numero` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sexo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `observacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `estado` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `finca_fk`(`finca`) USING BTREE,
  CONSTRAINT `finca_fk` FOREIGN KEY (`finca`) REFERENCES `fincas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of animales
-- ----------------------------
INSERT INTO `animales` VALUES (2, 1, 'ANIMAL 1', '2022-08-03', 'FENOTIPO 2', 'BLANCO', '4', '15', 'V', 'Ejemplo Observacion', '1');
INSERT INTO `animales` VALUES (3, 1, 'ANIMAL 2', '2022-08-03', 'FENOTIPO 2', 'NEGRO', '5', '12', 'V', 'Ejemplo Observacion', '1');
INSERT INTO `animales` VALUES (4, 1, 'ANIMAL 3', '2022-08-03', 'FENOTIPO 2', 'NEGRO', '4', '13', 'V', 'Ejemplo Observacion', '0');
INSERT INTO `animales` VALUES (5, 1, 'ANIMAL 4', '2022-08-03', 'FENOTIPO 2', 'NEGRO', '2', '14', 'V', 'Ejemplo Observacion', '0');
INSERT INTO `animales` VALUES (6, 1, 'ANIMAL 5', '2022-08-03', 'FENOTIPO 2', 'NEGRO', '1', '18', 'V', 'Ejemplo Observacion', '0');
INSERT INTO `animales` VALUES (7, 1, 'ANIMAL 6', '2022-12-15', 'FENOTIPO 2', 'NEGRO', '3', '19', 'V', 'Ejemplo Observacion', '1');
INSERT INTO `animales` VALUES (8, 1, 'ANIMAL 7', '2022-08-10', 'FENOTIPO 2', 'NEGRO', '5', '20', 'V', 'Ejemplo Observacion', '0');
INSERT INTO `animales` VALUES (9, 1, 'ANIMAL 8', '2022-05-01', 'FENOTIPO 2', 'NEGRO', '4', '14', 'V', 'Ejemplo Observacion', '1');
INSERT INTO `animales` VALUES (10, 1, 'ANIMAL 9', '2022-08-03', 'FENOTIPO 2', 'NEGRO', '2', '56', 'V', 'Ejemplo Observacion', '0');
INSERT INTO `animales` VALUES (11, 1, 'ANIMAL 10', '2022-01-01', 'FENOTIPO 2', 'BLANCO', '1', '68', 'H', 'Ejemplo Observacion', '0');
INSERT INTO `animales` VALUES (12, 1, 'ANIMAL 11', '2022-08-10', 'FENOTIPO 2', 'NEGRO', '2', '98', 'H', 'Ejemplo Observacion', '1');
INSERT INTO `animales` VALUES (13, 1, 'ANIMALL 12', '2022-08-11', 'FENOTIPO 2', 'BLANCO', '3', '45', 'H', 'Ejemplo Observacion', '0');
INSERT INTO `animales` VALUES (14, 1, 'ANIMAL 13', '2022-08-18', 'FENOTIPO 2', 'NEGRO', '4', '78', 'H', 'Ejemplo Observacion', '1');
INSERT INTO `animales` VALUES (15, 1, 'ANIMAL 14', '2022-09-19', 'FENOTIPO 2', 'NEGRO', '5', '194', 'H', 'Ejemplo Observacion', '0');
INSERT INTO `animales` VALUES (16, 1, 'ANIMAL 44', '2022-09-14', 'B', 'AZUL', '5', '28', 'MASCULINO', 'ASDD', '0');
INSERT INTO `animales` VALUES (17, 1, 'ANIMAL DE PRUEBA456', '2022-09-14', 'FENOTIPO 2', 'BLANCO ', 'BLANCO', '1528', 'MASCULINNO', 'OBB', '0');
INSERT INTO `animales` VALUES (18, 1, '', '2022-10-05', '', '', '', '', '', '', '1');
INSERT INTO `animales` VALUES (19, 1, 'ANIMAL 31233333', '2022-10-19', 'ASD', 'ASD', 'ASD', 'ASD', 'ASD', 'ASD', '1');

-- ----------------------------
-- Table structure for departamentos
-- ----------------------------
DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE `departamentos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of departamentos
-- ----------------------------
INSERT INTO `departamentos` VALUES (1, 'ATLANTICO');
INSERT INTO `departamentos` VALUES (2, 'BOLIVAR');

-- ----------------------------
-- Table structure for fincas
-- ----------------------------
DROP TABLE IF EXISTS `fincas`;
CREATE TABLE `fincas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `municipio` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mun_fk`(`municipio`) USING BTREE,
  CONSTRAINT `mun_fk` FOREIGN KEY (`municipio`) REFERENCES `municipios` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fincas
-- ----------------------------
INSERT INTO `fincas` VALUES (1, 'AGUAS BLANCAS', 1);
INSERT INTO `fincas` VALUES (2, 'FINCA 2', 2);

-- ----------------------------
-- Table structure for municipios
-- ----------------------------
DROP TABLE IF EXISTS `municipios`;
CREATE TABLE `municipios`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `departamento` int NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dep_fk`(`departamento`) USING BTREE,
  CONSTRAINT `dep_fk` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of municipios
-- ----------------------------
INSERT INTO `municipios` VALUES (1, 1, 'BARRANQUILLA');
INSERT INTO `municipios` VALUES (2, 2, 'CARTAGENA');

-- ----------------------------
-- Table structure for plantas
-- ----------------------------
DROP TABLE IF EXISTS `plantas`;
CREATE TABLE `plantas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `proteina` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fibra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `energia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seguimiento` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `seg_plantas_fk`(`seguimiento`) USING BTREE,
  CONSTRAINT `seg_plantas_fk` FOREIGN KEY (`seguimiento`) REFERENCES `seguimientos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of plantas
-- ----------------------------
INSERT INTO `plantas` VALUES (1, 'PLANTA 1', '40', '40', '50', 1);
INSERT INTO `plantas` VALUES (2, 'PLANTA 2', '65', '89', '25', 1);
INSERT INTO `plantas` VALUES (3, 'PLANTA 3', '45', '89', '25', 1);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Vendedor');
INSERT INTO `roles` VALUES (2, 'Administrador');
INSERT INTO `roles` VALUES (3, 'SuperAdmin');
INSERT INTO `roles` VALUES (4, 'Supervisor');

-- ----------------------------
-- Table structure for seg_animal
-- ----------------------------
DROP TABLE IF EXISTS `seg_animal`;
CREATE TABLE `seg_animal`  (
  `animal` int NOT NULL,
  `seguimiento` int NOT NULL,
  `peso` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `con_corp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`seguimiento`) USING BTREE,
  INDEX `seguimiento_fk`(`animal`) USING BTREE,
  CONSTRAINT `anim_fk` FOREIGN KEY (`animal`) REFERENCES `animales` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `seg_animal` FOREIGN KEY (`seguimiento`) REFERENCES `seguimientos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seg_animal
-- ----------------------------
INSERT INTO `seg_animal` VALUES (2, 40, '50', '4,5');

-- ----------------------------
-- Table structure for seguimientos
-- ----------------------------
DROP TABLE IF EXISTS `seguimientos`;
CREATE TABLE `seguimientos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `finca` int NOT NULL,
  `fecha` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `finc_fk`(`finca`) USING BTREE,
  CONSTRAINT `finc_fk` FOREIGN KEY (`finca`) REFERENCES `fincas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of seguimientos
-- ----------------------------
INSERT INTO `seguimientos` VALUES (1, 1, '01/01/2022');
INSERT INTO `seguimientos` VALUES (40, 1, '01/01/2022');

-- ----------------------------
-- Table structure for suelos
-- ----------------------------
DROP TABLE IF EXISTS `suelos`;
CREATE TABLE `suelos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ph` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `humedad` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `compactacion_suelo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seguimiento` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `seg_suelo_fk`(`seguimiento`) USING BTREE,
  CONSTRAINT `seg_suelo_fk` FOREIGN KEY (`seguimiento`) REFERENCES `seguimientos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of suelos
-- ----------------------------
INSERT INTO `suelos` VALUES (1, '5', '25', '25', 1);

-- ----------------------------
-- Table structure for tratamientos
-- ----------------------------
DROP TABLE IF EXISTS `tratamientos`;
CREATE TABLE `tratamientos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `animal` int NOT NULL,
  `fecha` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tipo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `estado` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ani_fk`(`animal`) USING BTREE,
  CONSTRAINT `ani_fk` FOREIGN KEY (`animal`) REFERENCES `animales` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tratamientos
-- ----------------------------
INSERT INTO `tratamientos` VALUES (2, 2, '05/02/2022', 'VACUNA', 'Se le aplico la vacuna 1', '0');
INSERT INTO `tratamientos` VALUES (3, 2, '06/05/2022', 'VACUNA', 'Se le aplico la vacuna 2', '0');
INSERT INTO `tratamientos` VALUES (11, 2, '$datos[1]', '$datos[2]', '$datos[3]', '0');
INSERT INTO `tratamientos` VALUES (17, 2, '2022-09-13', 'Tarjeta de Identidad', 'asd', '0');
INSERT INTO `tratamientos` VALUES (32, 3, '2022-09-07', 'VACUNA56', 'Se le aplico vacuna 56', '1');
INSERT INTO `tratamientos` VALUES (33, 3, '2022-09-14', 'VETERINARIO', 'Se le aplicó la vacuna', '0');
INSERT INTO `tratamientos` VALUES (34, 2, '2022-09-14', 'VACUNA', '123456', '0');
INSERT INTO `tratamientos` VALUES (35, 12, '2022-09-14', 'VETERINARIO', '2033', '1');
INSERT INTO `tratamientos` VALUES (36, 15, '2022-09-14', 'EJEMPLO', 'EJEMPLO', '0');
INSERT INTO `tratamientos` VALUES (37, 12, '2022-09-14', 'HOLA', 'HOLA', '0');
INSERT INTO `tratamientos` VALUES (38, 3, '2022-09-07', 'VACUNA', 'HOLA MUNDO', '0');
INSERT INTO `tratamientos` VALUES (39, 2, '2022-09-13', 'VACUNA', 'VACUNA', '0');
INSERT INTO `tratamientos` VALUES (40, 2, '2022-09-13', 'VACUNA', 'VACUNA', '0');
INSERT INTO `tratamientos` VALUES (41, 2, '2022-09-13', 'VACUNA', 'VACUNA', '0');
INSERT INTO `tratamientos` VALUES (42, 12, '2022-09-14', '123456', '123456', '0');
INSERT INTO `tratamientos` VALUES (43, 9, '2022-09-07', '123456', '123456', '1');
INSERT INTO `tratamientos` VALUES (44, 7, '2022-09-07', 'asdasd', 'asdasd', '0');
INSERT INTO `tratamientos` VALUES (45, 14, '2022-09-14', 'VACUNA', 'VAUNA', '1');
INSERT INTO `tratamientos` VALUES (46, 14, '', 'VETERINARIO', 'VETEIRANIO', '1');
INSERT INTO `tratamientos` VALUES (47, 16, '2022-09-21', 'Cédula de Ciudadanía', '123456', '1');
INSERT INTO `tratamientos` VALUES (48, 2, '2022-09-21', '', 'GRABACIÓN SESIÓN EN LÍNEA: RELATO - TRABAJO COLABORATIVO 23/03/2021 - 6:30PM', '0');
INSERT INTO `tratamientos` VALUES (49, 2, '2022-09-07', '', 'asdasd', '0');
INSERT INTO `tratamientos` VALUES (50, 4, '2022-09-14', '', 'asdasd', '1');
INSERT INTO `tratamientos` VALUES (51, 4, '2022-09-14', '', 'asdasd', '1');
INSERT INTO `tratamientos` VALUES (52, 4, '2022-09-14', '', 'asdasd', '1');
INSERT INTO `tratamientos` VALUES (53, 4, '2022-09-14', '', 'asdasd', '1');
INSERT INTO `tratamientos` VALUES (54, 7, '2022-09-14', 'Chrome', 'asdasd', '0');
INSERT INTO `tratamientos` VALUES (55, 2, '2022-09-15', 'Vacuna', '', '0');
INSERT INTO `tratamientos` VALUES (56, 2, '2022-09-20', 'Vacuna', 'Esto es un ejemplo de vacuna', '0');
INSERT INTO `tratamientos` VALUES (57, 2, '2022-09-08', 'Urgencia', 'Esto es un ejemplo', '0');
INSERT INTO `tratamientos` VALUES (58, 7, '2022-08-30', 'Vacuna', 'ASDASDASD', '0');
INSERT INTO `tratamientos` VALUES (59, 2, '2022-09-21', 'Urgencia', 'Visita de Medico para control de bajo de peso.', '0');
INSERT INTO `tratamientos` VALUES (60, 2, '2022-09-08', 'Urgencia', 'Ejemplo', '1');
INSERT INTO `tratamientos` VALUES (61, 3, '2022-09-07', 'Urgencia', 'asdasd', '1');
INSERT INTO `tratamientos` VALUES (63, 2, '2022-10-05', 'Urgencia', 'ASDASD', '1');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `usuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contraseña` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rol` int NULL DEFAULT NULL,
  PRIMARY KEY (`usuario`) USING BTREE,
  INDEX `rol`(`rol`) USING BTREE,
  CONSTRAINT `Rol_Usuario` FOREIGN KEY (`rol`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('admin', '4789', 1);
INSERT INTO `usuarios` VALUES ('admin12345', '12345', 3);
INSERT INTO `usuarios` VALUES ('admin31241', '45698', 1);

-- ----------------------------
-- Procedure structure for Insertar
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insertar`;
delimiter ;;
CREATE PROCEDURE `Insertar`(IN id_seguimiento int)
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
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
