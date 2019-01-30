CREATE TABLE `media`.`artiste_joue_film` (
  `idartiste_joue_film` INT(11) NOT NULL AUTO_INCREMENT,
  `fk_idartiste` INT(11) NOT NULL,
  `fk_idfilm` INT(11) NOT NULL,
  PRIMARY KEY (`idartiste_joue_film`),
  INDEX `fk_idartiste_joue_idx` (`fk_idartiste` ASC),
  INDEX `fk_idfilm_joue_idx` (`fk_idfilm` ASC),
  CONSTRAINT `fk_idartiste_joue`
    FOREIGN KEY (`fk_idartiste`)
    REFERENCES `media`.`artiste` (`idatriste`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idfilm_joue`
    FOREIGN KEY (`fk_idfilm`)
    REFERENCES `media`.`film` (`idfilm`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    select * from artiste_joue_film;
    
    insert into artiste_joue_film (fk_idartiste, fk_idfilm)
	values
				('1','2');