Create database hashbook_tag;

CREATE TABLE `hashbook_tag`.`crearevento` (
  `idCrearEvento` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `nombre` VARCHAR(45) NULL COMMENT '',
  `imagen` VARCHAR(200) NULL COMMENT '',
  `hashtag` VARCHAR(45) NULL COMMENT '',
  `descripcion` VARCHAR(200) NULL COMMENT '',
  PRIMARY KEY (`idCrearEvento`)  COMMENT '');
