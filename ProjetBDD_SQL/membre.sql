CREATE TABLE `media`.`membre` (
  `idmembre` INT NOT NULL AUTO_INCREMENT,
  `prenom` VARCHAR(45) NOT NULL,
  `nom` VARCHAR(45) NOT NULL,
  `date_naissance` DATE NOT NULL,
  `n_tel` INT(11) NULL,
  `fonction` VARCHAR(255) NOT NULL,
  `n_rue` VARCHAR(45) NOT NULL,
  `rue` VARCHAR(255) NOT NULL,
  `date_adhesion` DATE NOT NULL,
  `fk_code_postal` VARCHAR(255) NOT NULL,
  `fk_idabonnement` INT(11) NOT NULL,
  PRIMARY KEY (`idmembre`),
  UNIQUE INDEX `membre_UNIQUE` (`prenom` ASC, `nom` ASC, `date_naissance` ASC),
  INDEX `fk_code_postal_idindex` (`fk_code_postal` ASC),
  INDEX `fk_idabonnement_idindexx` (`fk_idabonnement` ASC),
  CONSTRAINT `fk_code_postal`
    FOREIGN KEY (`fk_code_postal`)
    REFERENCES `media`.`ville` (`code_postal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idabonnement`
    FOREIGN KEY (`fk_idabonnement`)
    REFERENCES `media`.`abonnement` (`idabonnement`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
ALTER TABLE `media`.`membre` 
CHANGE COLUMN `n_tel` `n_tel` VARCHAR(45) NULL DEFAULT NULL ;

ALTER TABLE `media`.`membre` 
DROP FOREIGN KEY `fk_idabonnement`;
ALTER TABLE `media`.`membre` 
ADD CONSTRAINT `fk_idabonnement`
  FOREIGN KEY (`fk_idabonnement`)
  REFERENCES `media`.`abonnement` (`idabonnement`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

    
    use media;
    select * from membre;
    
    insert into membre (prenom, nom, date_naissance, n_tel, fonction, n_rue, rue, date_adhesion, fk_code_postal, fk_idabonnement)
    values 
				('Zindine' , 'Zidane' , '1972-06-23' , '0613345660' , 'Etudiant', '242' , 'rue du Faubourg Saint-Antoine', '2018-12-15', '75000', '1');
                
                