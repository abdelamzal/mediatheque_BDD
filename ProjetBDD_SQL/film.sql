CREATE TABLE `media`.`film` (
  `idfilm` INT(11) NOT NULL AUTO_INCREMENT,
  `titre` VARCHAR(255) NOT NULL,
  `duree` INT(11) NULL,
  `resume` VARCHAR(255) NULL,
  `fk_idgenre` INT(11) NOT NULL,
  `fk_idrealisateur` INT(11) NOT NULL,
  PRIMARY KEY (`idfilm`),
  INDEX `fk_idgenre_idx` (`fk_idgenre` ASC),
  INDEX `fk_idrealisateur_idx` (`fk_idrealisateur` ASC),
  CONSTRAINT `fk_idgenre`
    FOREIGN KEY (`fk_idgenre`)
    REFERENCES `media`.`genre` (`idgenre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idrealisateur`
    FOREIGN KEY (`fk_idrealisateur`)
    REFERENCES `media`.`artiste` (`idatriste`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    ALTER TABLE `media`.`film` 
CHANGE COLUMN `resume` `resume` LONGTEXT NULL DEFAULT NULL ;

    
    select * from genre;
    
    select * from film;
    
    insert into film (titre , duree, resume,  fk_idgenre, fk_idrealisateur)
    values 
				('Aquaman' , '143', "Personnage légendaire depuis 70 ans, Aquaman est le Roi des Sept Mers, régnant à contrecœur sur Atlantis. Pris en étau entre les Terriens qui détruisent constamment la mer et les habitants d'Atlantis prêts à se révolter, Aquaman doit protéger la planète tout entière…", '14', '1');
             