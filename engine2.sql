-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema semana3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema semana3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `semana3` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema semana3
-- -----------------------------------------------------
USE `semana3` ;

-- -----------------------------------------------------
-- Table `semana3`.`actor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `semana3`.`actor` (
  `actor_id` INT NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  PRIMARY KEY (`actor_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `semana3`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `semana3`.`category` (
  `category_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `semana3`.`film`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `semana3`.`film` (
  `film_id` INT NOT NULL,
  `title` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `release_year` INT NULL,
  `language` VARCHAR(45) NULL,
  `rental_duration` INT NULL,
  `rental_rate` DECIMAL(6,2) NULL,
  `length` INT NULL,
  `replacement_cost` DECIMAL(6,2) NULL,
  `rating` VARCHAR(45) NULL,
  `special_features` VARCHAR(45) NULL,
  PRIMARY KEY (`film_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `semana3`.`inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `semana3`.`inventory` (
  `inventory_id` INT NOT NULL,
  `store_id` INT NULL,
  `film_film_id` INT NOT NULL,
  PRIMARY KEY (`inventory_id`, `film_film_id`),
  INDEX `fk_inventory_film1_idx` (`film_film_id` ASC) VISIBLE,
  CONSTRAINT `fk_inventory_film1`
    FOREIGN KEY (`film_film_id`)
    REFERENCES `semana3`.`film` (`film_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `semana3`.`language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `semana3`.`language` (
  `language_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`language_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `semana3`.`old_HDD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `semana3`.`old_HDD` (
  `actor_actor_id` INT NOT NULL,
  `category_category_id` INT NOT NULL,
  `film_film_id` INT NOT NULL,
  PRIMARY KEY (`actor_actor_id`, `category_category_id`, `film_film_id`),
  INDEX `fk_old_HDD_category1_idx` (`category_category_id` ASC) VISIBLE,
  INDEX `fk_old_HDD_film1_idx` (`film_film_id` ASC) VISIBLE,
  CONSTRAINT `fk_old_HDD_actor1`
    FOREIGN KEY (`actor_actor_id`)
    REFERENCES `semana3`.`actor` (`actor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_old_HDD_category1`
    FOREIGN KEY (`category_category_id`)
    REFERENCES `semana3`.`category` (`category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_old_HDD_film1`
    FOREIGN KEY (`film_film_id`)
    REFERENCES `semana3`.`film` (`film_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `semana3`.`rental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `semana3`.`rental` (
  `rental_id` INT NOT NULL,
  `rental_date` DATETIME NULL,
  `customer_id` INT NULL,
  `return_date` DATETIME NULL,
  `staff_id` INT NULL,
  `inventory_inventory_id` INT NOT NULL,
  PRIMARY KEY (`rental_id`, `inventory_inventory_id`),
  INDEX `fk_rental_inventory1_idx` (`inventory_inventory_id` ASC) VISIBLE,
  CONSTRAINT `fk_rental_inventory1`
    FOREIGN KEY (`inventory_inventory_id`)
    REFERENCES `semana3`.`inventory` (`inventory_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
