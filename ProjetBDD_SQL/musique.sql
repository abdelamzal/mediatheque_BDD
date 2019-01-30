CREATE TABLE `media`.`musique` (
  `idmusique` INT(11) NOT NULL AUTO_INCREMENT,
  `titre` VARCHAR(255) NOT NULL,
  `duree` INT(11) NOT NULL,
  PRIMARY KEY (`idmusique`));


select * from musique;

insert into musique  (titre, duree)
	values
				("Wanna Be Startin' Somethin",'6'),
                ("Baby Be Mine",'4'),
                ("The Girl Is Mine",'3'),
                ("Thriller",'6'),
                ("Beat It",'4'),
                ("Human Nature",'4'),
                ("P.Y.T. (Pretty Young Thing)",'4');

ALTER TABLE `media`.`musique` 
ADD COLUMN `fk_artiste_auteur` INT(11) NULL AFTER `duree`,
ADD COLUMN `fk_artiste_interprete` INT(11) NULL AFTER `fk_artiste_auteur`,
ADD COLUMN `fk_artiste_compositeur` INT(11) NULL AFTER `fk_artiste_interprete`,
ADD INDEX `fk_artiste_auteur_idx` (`fk_artiste_auteur` ASC),
ADD INDEX `fk_artiste_interprete_idx` (`fk_artiste_interprete` ASC),
ADD INDEX `fk_artiste_compositeur_idx` (`fk_artiste_compositeur` ASC);

ALTER TABLE `media`.`musique` 
ADD CONSTRAINT `fk_artiste_auteur`
  FOREIGN KEY (`fk_artiste_auteur`)
  REFERENCES `media`.`artiste` (`idatriste`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_artiste_interprete`
  FOREIGN KEY (`fk_artiste_interprete`)
  REFERENCES `media`.`artiste` (`idatriste`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_artiste_compositeur`
  FOREIGN KEY (`fk_artiste_compositeur`)
  REFERENCES `media`.`artiste` (`idatriste`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  
UPDATE `media`.`musique` SET `fk_artiste_auteur`='16' WHERE `idmusique`='1';
UPDATE `media`.`musique` SET `fk_artiste_auteur`='16' WHERE `idmusique`='2';
UPDATE `media`.`musique` SET `fk_artiste_auteur`='16' WHERE `idmusique`='3';
UPDATE `media`.`musique` SET `fk_artiste_auteur`='16' WHERE `idmusique`='4';
UPDATE `media`.`musique` SET `fk_artiste_auteur`='16' WHERE `idmusique`='5';
UPDATE `media`.`musique` SET `fk_artiste_auteur`='16' WHERE `idmusique`='6';
UPDATE `media`.`musique` SET `fk_artiste_auteur`='16' WHERE `idmusique`='7';
UPDATE `media`.`musique` SET `fk_artiste_auteur`='16' WHERE `idmusique`='8';
