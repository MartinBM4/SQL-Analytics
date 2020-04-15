-- MySQL Script generated by MySQL Workbench
-- Thu Nov 14 17:51:06 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema modelodocencia
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema modelodocencia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `modelodocencia` DEFAULT CHARACTER SET utf8 ;
USE `modelodocencia` ;

-- -----------------------------------------------------
-- Table `modelodocencia`.`PROVINCIA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelodocencia`.`PROVINCIA` (
  `CODIGO` INT(2) NOT NULL,
  `NOMBRE` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`CODIGO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelodocencia`.`MUNICIPIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelodocencia`.`MUNICIPIO` (
  `CPRO` INT(2) NOT NULL,
  `CMUN` INT(5) NOT NULL,
  `NOMBRE` VARCHAR(50) NULL,
  `HOMBRES` INT(11) NULL,
  `MUJERES` INT(11) NULL,
  PRIMARY KEY (`CPRO`, `CMUN`),
  INDEX `CODPROV_MUNICIPIO_idx` (`CPRO` ASC) VISIBLE,
  CONSTRAINT `CODPROV_MUNICIPIO`
    FOREIGN KEY (`CPRO`)
    REFERENCES `modelodocencia`.`PROVINCIA` (`CODIGO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelodocencia`.`ALUMNOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelodocencia`.`ALUMNOS` (
  `DNI` INT(9) NOT NULL,
  `NOMBRE` VARCHAR(20) NULL,
  `APELLIDO1` VARCHAR(20) NULL,
  `APELLIDO2` VARCHAR(20) NULL,
  `GENERO` VARCHAR(4) NULL,
  `DIRECCION` VARCHAR(100) NULL,
  `TELEFONO` VARCHAR(9) NULL,
  `EMAIL` VARCHAR(40) NULL,
  `FECHA_NACIMIENTO` DATE NULL,
  `FECHA_PRIM_MATRICULA` DATE NOT NULL,
  `CPRO` INT(2) NULL,
  `CMUN` INT(5) NULL,
  PRIMARY KEY (`DNI`),
  INDEX `fk_ALUMNOS_MUNICIPIO1_idx` (`CPRO` ASC, `CMUN` ASC) VISIBLE,
  CONSTRAINT `fk_ALUMNOS_MUNICIPIO1`
    FOREIGN KEY (`CPRO` , `CMUN`)
    REFERENCES `modelodocencia`.`MUNICIPIO` (`CPRO` , `CMUN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelodocencia`.`DEPARTAMENTOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelodocencia`.`DEPARTAMENTOS` (
  `CODIGO` INT(3) NOT NULL,
  `NOMBRE` VARCHAR(40) NOT NULL,
  `DIRECCION` VARCHAR(30) NULL,
  `TELEFONO` VARCHAR(9) NULL,
  `WEB` VARCHAR(30) NULL,
  `FECHA_CREACION` DATE NULL,
  PRIMARY KEY (`CODIGO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelodocencia`.`PROFESORES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelodocencia`.`PROFESORES` (
  `ID` VARCHAR(20) NOT NULL,
  `NOMBRE` VARCHAR(20) NOT NULL,
  `APELLIDO1` VARCHAR(20) NOT NULL,
  `APELLIDO2` VARCHAR(20) NULL,
  `DEPARTAMENTO` INT(3) NULL,
  `TELEFONO` VARCHAR(4) NULL,
  `EMAIL` VARCHAR(100) NULL,
  `DESPACHO` VARCHAR(10) NULL,
  `FECHA_NACIMIENTO` DATE NULL,
  `ANTIGUEDAD` DATE NULL,
  `DIRECTOR_TESIS` VARCHAR(20) NULL,
  PRIMARY KEY (`ID`),
  INDEX `CODDEP_idx` (`DEPARTAMENTO` ASC) VISIBLE,
  INDEX `IDDIRIGE_PROFESORES_idx` (`DIRECTOR_TESIS` ASC) VISIBLE,
  CONSTRAINT `CODDEP_PROFESORES`
    FOREIGN KEY (`DEPARTAMENTO`)
    REFERENCES `modelodocencia`.`DEPARTAMENTOS` (`CODIGO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `IDDIRIGE_PROFESORES`
    FOREIGN KEY (`DIRECTOR_TESIS`)
    REFERENCES `modelodocencia`.`PROFESORES` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelodocencia`.`MATERIAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelodocencia`.`MATERIAS` (
  `CODIGO` INT(2) NOT NULL,
  `NOMBRE` VARCHAR(40) NOT NULL,
  `DESCRIPCION` VARCHAR(200) NULL,
  PRIMARY KEY (`CODIGO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelodocencia`.`ASIGNATURAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelodocencia`.`ASIGNATURAS` (
  `CODIGO` INT(3) NOT NULL,
  `NOMBRE` VARCHAR(50) NULL,
  `DEPARTAMENTO` INT(3) NULL,
  `CREDITOS` DECIMAL(3,1) NULL,
  `TEORICOS` DECIMAL(3,1) NULL,
  `PRACTICOS` DECIMAL(3,1) NULL,
  `CARACTER` VARCHAR(2) NULL,
  `CURSO` INT(1) NULL,
  `WEB` VARCHAR(30) NULL,
  `COD_MATERIA` INT(2) NULL,
  PRIMARY KEY (`CODIGO`),
  INDEX `CODDEP_ASIGNATURAS_idx` (`DEPARTAMENTO` ASC) VISIBLE,
  INDEX `CODMAT_ASIGNATURAS_idx` (`COD_MATERIA` ASC) VISIBLE,
  CONSTRAINT `CODDEP_ASIGNATURAS`
    FOREIGN KEY (`DEPARTAMENTO`)
    REFERENCES `modelodocencia`.`DEPARTAMENTOS` (`CODIGO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `CODMAT_ASIGNATURAS`
    FOREIGN KEY (`COD_MATERIA`)
    REFERENCES `modelodocencia`.`MATERIAS` (`CODIGO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelodocencia`.`INVESTIGADORES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelodocencia`.`INVESTIGADORES` (
  `ID_PROFESOR` VARCHAR(20) NOT NULL,
  `TRAMOS` INT(2) NULL,
  PRIMARY KEY (`ID_PROFESOR`),
  CONSTRAINT `IDPROF_INVESTIGADORES`
    FOREIGN KEY (`ID_PROFESOR`)
    REFERENCES `modelodocencia`.`PROFESORES` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelodocencia`.`MATRICULAR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelodocencia`.`MATRICULAR` (
  `ALUMNO` INT(9) NOT NULL,
  `ASIGNATURA` INT(3) NOT NULL,
  `GRUPO` VARCHAR(1) NOT NULL,
  `CURSO` VARCHAR(5) NOT NULL,
  `CALIFICACION` VARCHAR(2) NULL,
  PRIMARY KEY (`ALUMNO`, `ASIGNATURA`, `GRUPO`, `CURSO`),
  INDEX `CODASIG_MATRICULAR_idx` (`ASIGNATURA` ASC) VISIBLE,
  INDEX `DNIALU_MATRICULAR_idx` (`ALUMNO` ASC) VISIBLE,
  CONSTRAINT `CODASIG_MATRICULAR`
    FOREIGN KEY (`ASIGNATURA`)
    REFERENCES `modelodocencia`.`ASIGNATURAS` (`CODIGO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `DNIALU_MATRICULAR`
    FOREIGN KEY (`ALUMNO`)
    REFERENCES `modelodocencia`.`ALUMNOS` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelodocencia`.`IMPARTIR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelodocencia`.`IMPARTIR` (
  `PROFESOR` VARCHAR(20) NOT NULL,
  `ASIGNATURA` INT(3) NOT NULL,
  `GRUPO` VARCHAR(1) NOT NULL,
  `CURSO` VARCHAR(5) NOT NULL,
  `CARGA_CREDITOS` DECIMAL(3,1) NULL,
  PRIMARY KEY (`PROFESOR`, `ASIGNATURA`, `GRUPO`, `CURSO`),
  INDEX `CODASIG_IMPARTIR_idx` (`ASIGNATURA` ASC) VISIBLE,
  INDEX `IDPROF_IMPARTIR_idx` (`PROFESOR` ASC) VISIBLE,
  CONSTRAINT `CODASIG_IMPARTIR`
    FOREIGN KEY (`ASIGNATURA`)
    REFERENCES `modelodocencia`.`ASIGNATURAS` (`CODIGO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `IDPROF_IMPARTIR`
    FOREIGN KEY (`PROFESOR`)
    REFERENCES `modelodocencia`.`PROFESORES` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelodocencia`.`ESCORREQUISITO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelodocencia`.`ESCORREQUISITO` (
  `ASIGNATURA` INT(3) NOT NULL,
  `CORREQUISITO` INT(3) NOT NULL,
  PRIMARY KEY (`ASIGNATURA`, `CORREQUISITO`),
  INDEX `CODASIG2CORREQUISITO_idx` (`CORREQUISITO` ASC) VISIBLE,
  CONSTRAINT `CODASIG1CORREQUISITO`
    FOREIGN KEY (`ASIGNATURA`)
    REFERENCES `modelodocencia`.`ASIGNATURAS` (`CODIGO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `CODASIG2CORREQUISITO`
    FOREIGN KEY (`CORREQUISITO`)
    REFERENCES `modelodocencia`.`ASIGNATURAS` (`CODIGO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelodocencia`.`ESPRERREQUISITO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelodocencia`.`ESPRERREQUISITO` (
  `ASIGNATURA` INT(3) NOT NULL,
  `PRERREQUISITO` INT(3) NOT NULL,
  PRIMARY KEY (`ASIGNATURA`, `PRERREQUISITO`),
  CONSTRAINT `CODASIG1_PRERREQUISITO`
    FOREIGN KEY (`ASIGNATURA`)
    REFERENCES `modelodocencia`.`ASIGNATURAS` (`CODIGO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `CODASIG2_PRERREQUISITO`
    FOREIGN KEY (`PRERREQUISITO`)
    REFERENCES `modelodocencia`.`ASIGNATURAS` (`CODIGO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
