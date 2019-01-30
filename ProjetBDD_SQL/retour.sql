CREATE TABLE `media`.`retour` (
  `idretour` INT(11) NOT NULL auto_increment,
  `date_retour` DATE NOT NULL,
  `fk_idpret` INT(11) NOT NULL,
  PRIMARY KEY (`idretour`),
  INDEX `fk_idpret_idx` (`fk_idpret` ASC),
  CONSTRAINT `fk_idpret`
    FOREIGN KEY (`fk_idpret`)
    REFERENCES `media`.`pret` (`idpret`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
ALTER TABLE `media`.`retour` 
ADD UNIQUE INDEX `date_retour_UNIQUE` (`date_retour` ASC, `fk_idpret` ASC);
    
    select * from retour;
    
    insert into retour (date_retour, fk_idpret)
    values 
				('2018-12-23', '1');
    
    