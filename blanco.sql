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

 Date: 30/08/2022 14:36:53
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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of animales
-- ----------------------------
INSERT INTO `animales` VALUES (2, 1, 'ASDASDASD', '2022-08-03', 'FENOTIPO 1', 'BLANCO', '0', '1', 'M', 'Esto es una observación', '1');
INSERT INTO `animales` VALUES (3, 1, 'ANIMAL 2', '2022-08-03', 'FENOTIPO 2', 'NEGRO', '0', '15', 'M', 'Esto es una observacion', '1');
INSERT INTO `animales` VALUES (4, 1, 'a', '2022-08-03', 'a', 'a', 'a', 'a', 'a', 'a', '0');
INSERT INTO `animales` VALUES (5, 1, '1', '2022-08-03', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `animales` VALUES (6, 1, 'asdasd', '2022-08-03', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', '0');
INSERT INTO `animales` VALUES (7, 1, 'ANIMAL 2', '2022-12-15', 'UPALUPA', 'MARRON FOSFORECENTE', '4.5', '45', 'MASCULINO', 'NINGUNA', '1');
INSERT INTO `animales` VALUES (8, 1, 'aaaa', '2022-08-10', 'aaaa', 'aaaa', 'aaa', 'aaa', 'aaa', 'aaa', '0');
INSERT INTO `animales` VALUES (9, 1, 'SALVADOREÑO', '2022-05-01', 'UMPALUMPA', 'BLANCO', '4.5', '15648', 'FEMENINO', '1525', '1');
INSERT INTO `animales` VALUES (10, 1, 'RICARDO', '2022-08-03', 'aa', 'aa', 'aa', '1045670903', 'asd', 'asdasd', '0');
INSERT INTO `animales` VALUES (11, 1, 'DANI', '2022-01-01', 'ASDASD', 'BLANCO', 'ASDA', 'ASDASD', 'ASD', 'ASDASD', '0');
INSERT INTO `animales` VALUES (12, 1, 'RICARDO', '2022-08-10', 'OJOS AZULES', 'VERDE FOSFORECENTE', '4123', '123', 'OJO', 'ASDASD', '1');

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
INSERT INTO `seg_animal` VALUES (2, 1, '50', '4,5');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of seguimientos
-- ----------------------------
INSERT INTO `seguimientos` VALUES (1, 1, '01/01/2022');

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
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ani_fk`(`animal`) USING BTREE,
  CONSTRAINT `ani_fk` FOREIGN KEY (`animal`) REFERENCES `animales` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tratamientos
-- ----------------------------
INSERT INTO `tratamientos` VALUES (2, 2, '05/02/2022', 'VACUNA', 'Se le aplico la vacuna 1');
INSERT INTO `tratamientos` VALUES (3, 2, '06/05/2022', 'VACUNA', 'Se le aplico la vacuna 2');

SET FOREIGN_KEY_CHECKS = 1;
