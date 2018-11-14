Create database hashbook_tag;
 CREATE TABLE `hashbook_tag`.`crearevento` (
  `idCrearEvento` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `imagen` VARCHAR(200) NULL,
  `hashtag` VARCHAR(45) NULL,
  `descripcion` VARCHAR(200) NULL,
  PRIMARY KEY (`idCrearEvento`) );
  
  CREATE TABLE `hashbook_tag`.`formulariousuarios` (
  `idFormularioUsuarios` INT NOT NULL COMMENT '',
  `nombre` VARCHAR(45) NOT NULL COMMENT '',
  `correo` VARCHAR(45) NOT NULL COMMENT '',
  `contraseña` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`idFormularioUsuarios`)  COMMENT '');