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
    
    /*
    *classe_social: (0,pauvre) (1,moyen) (2,riche)
    *choix_volume: (12, 24, 36, >)
    *choix_emprunt: (disque et casette , 2) (disque ou casette, 1)
    *boolean_commune: (1, résidant) (0, non résidant)
    *fk_idcotisation: id de la cotisation correspondant à tous ces criteres 
    */
    
    insert into abonnement (classe_social , choix_volume , choix_emprunt , boolean_commune , date_debut , date_fin , fk_idcotisation )
    values 
				('0', '12', '2' , '1', '2018-12-15', '2019-12-15', '2');
                
	INSERT INTO `media`.`abonnement` (`classe_social`, `choix_volume`, `choix_emprunt`, `boolean_commune`, `date_debut`, `date_fin`, `fk_idcotisation`) 
    VALUES 
				('2', '36', '2', '0', '2018-12-15', '2019-12-15', '44');
                
	

                
	select * from cotisation where description like "Pauvre - Resident - Disques et Cassettes - Volume 36";
                
	select * from cotisation where idcotisation in (select fk_idcotisation from abonnement where idabonnement = 1); 