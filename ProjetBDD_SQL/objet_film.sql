CREATE TABLE `media`.`objet_film` (
  `idobjet_film` INT(11) NOT NULL AUTO_INCREMENT,
  `fk_idobjet` INT(11) NOT NULL,
  `fk_idfilm` INT(11) NOT NULL,
  PRIMARY KEY (`idobjet_film`),
  UNIQUE INDEX `UNIQUE` (`fk_idobjet` ASC, `fk_idfilm` ASC),
  INDEX `fk_idfilm_idx` (`fk_idfilm` ASC),
  INDEX `fk_idobjet_contenu_film_idx` (`fk_idobjet` ASC),
  CONSTRAINT `fk_idobjet_contenu_film`
    FOREIGN KEY (`fk_idobjet`)
    REFERENCES `media`.`objet` (`idobjet`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idfilm`
    FOREIGN KEY (`fk_idfilm`)
    REFERENCES `media`.`film` (`idfilm`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    select* from objet_film;
    
	insert into objet_film (fk_idobjet, fk_idfilm)
    values 
				('1' , '2');
             