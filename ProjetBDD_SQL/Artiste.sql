CREATE TABLE `media`.`artiste` (
  `idatriste` INT(11) NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(255) NOT NULL,
  `prenom` VARCHAR(255) NOT NULL,
  `date_naissance` DATE NOT NULL,
  PRIMARY KEY (`idatriste`),
  UNIQUE INDEX `artiste_UNIQUE` (`nom` ASC, `prenom` ASC, `date_naissance` ASC));
  
ALTER TABLE `media`.`artiste` 
CHANGE COLUMN `prenom` `prenom` VARCHAR(255) NULL ;

ALTER TABLE `media`.`artiste` 
CHANGE COLUMN `date_naissance` `date_naissance` DATE NULL ;
  
  use media;
  
  select * from artiste;
  
  
  insert into artiste (nom, prenom, date_naissance)
  values
			('AFFLECK','Ben','1972-8-15');
            
  insert into artiste (nom, prenom, date_naissance)
  values
			('Jackson','Michael','1958-08-29');
            
INSERT INTO `media`.`artiste` (`nom`, `prenom`, `date_naissance`) VALUES ('Presley', 'Elvis ', '1935-01-08');
INSERT INTO `media`.`artiste` (`nom`, `prenom`, `date_naissance`) VALUES ('Jackson', 'Micheal', '1958-08-29');
INSERT INTO `media`.`artiste` (`nom`) VALUES ('Les Beatles');
INSERT INTO `media`.`artiste` (`nom`, `date_naissance`) VALUES ('Madonna', '1958-08-16');
INSERT INTO `media`.`artiste` (`nom`) VALUES ('Les rollings Stones');
INSERT INTO `media`.`artiste` (`nom`) VALUES ('AC/DC');
INSERT INTO `media`.`artiste` (`nom`, `prenom`, `date_naissance`) VALUES ('Celine', 'Dion', '1968-03-30');
INSERT INTO `media`.`artiste` (`nom`, `prenom`, `date_naissance`) VALUES ('Marley', 'Bob ', '1945-02-06');
INSERT INTO `media`.`artiste` (`nom`, `prenom`, `date_naissance`) VALUES ('Wonder', 'Stevie ', '1950-05-13');
INSERT INTO `media`.`artiste` (`nom`, `prenom`, `date_naissance`) VALUES ('Brown', 'James ', '1933-05-03');
INSERT INTO `media`.`artiste` (`nom`, `prenom`, `date_naissance`) VALUES ('Franklin', 'Aretha ', '1942-03-25');
INSERT INTO `media`.`artiste` (`nom`, `prenom`, `date_naissance`) VALUES ('Charles', 'Ray', '1930-09-23');
INSERT INTO `media`.`artiste` (`nom`, `prenom`, `date_naissance`) VALUES ('Gaye', 'Marvin ', '1939-04-02');
INSERT INTO `media`.`artiste` (`nom`, `prenom`, `date_naissance`) VALUES ('Dylan', 'Bob ', '1941-05-24');
UPDATE `media`.`artiste` SET `nom`='Affleck' WHERE `idatriste`='1';