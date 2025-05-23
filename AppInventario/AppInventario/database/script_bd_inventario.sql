-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bd_inventario
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bd_inventario
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_inventario` DEFAULT CHARACTER SET utf8 ;
USE `bd_inventario` ;

-- -----------------------------------------------------
-- Table `bd_inventario`.`pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_inventario`.`pessoa` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `cpf` VARCHAR(45) NULL,
  `data_nascimento` DATE NULL,
  `telefone` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_inventario`.`propriedade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bd_inventario`.`propriedade` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(100) NULL,
  `valor` DECIMAL NULL,
  `id_pessoa` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Propriedade_pessoa_idx` (`id_pessoa` ASC) VISIBLE,
  CONSTRAINT `fk_Propriedade_pessoa`
    FOREIGN KEY (`id_pessoa`)
    REFERENCES `bd_inventario`.`pessoa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
