CREATE TABLE `media`.`retour_associer_objet` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `fk_idobjet` INT(11) NOT NULL,
  `fk_idretour` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_idobjet_idx` (`fk_idobjet` ASC),
  INDEX `fk_idretour_idx` (`fk_idretour` ASC),
  CONSTRAINT `fk_idobjet`
    FOREIGN KEY (`fk_idobjet`)
    REFERENCES `media`.`objet` (`idobjet`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idretour`
    FOREIGN KEY (`fk_idretour`)
    REFERENCES `media`.`retour` (`idretour`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    ALTER TABLE `media`.`retour_associer_objet` 
RENAME TO  `media`.`retour_objet` ;

    
    select * from retour_associer_objet;
    
    select * from objet;
    
    insert into retour_associer_objet (fk_idobjet, fk_idretour)
    values
			('1', '1');
            
            