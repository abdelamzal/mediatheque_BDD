CREATE TABLE `media`.`abonnement` (
  `idabonnement` INT(11) NOT NULL auto_increment,
  `classe_social` INT(11) NOT NULL,
  `choix_volume` INT(11) NOT NULL,
  `choix_emprunt` INT(11) NOT NULL,
  `boolean_commune` TINYINT NOT NULL,
  `date_debut` DATE NOT NULL,
  `date_fin` DATE NOT NULL,
  `fk_idcotisation` INT(11) NOT NULL,
  PRIMARY KEY (`idabonnement`),
  INDEX `fk_idcotisation_idindex` (`fk_idcotisation` ASC),
  CONSTRAINT `fk_idcotisation`
    FOREIGN KEY (`fk_idcotisation`)
    REFERENCES `media`.`cotisation` (`idcotisation`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    select * from abonnement;
    
    insert into abonnement (classe_social , choix_volume , choix_emprunt , boolean_commune , date_debut , date_fin , fk_idcotisation )
    values 
				('0', '12', '2' , '1', '2018-12-15', '2019-12-15', '2');
                
                
	select * from cotisation where idcotisation in (select fk_idcotisation from abonnement where idabonnement = 1); 