CREATE TABLE `media`.`objet` (
  `idobjet` INT(11) NOT NULL AUTO_INCREMENT,
  `titre` VARCHAR(255) NOT NULL,
  `annee` INT(11) NOT NULL,
  `resume` LONGTEXT NOT NULL,
  `nb_exemplaire` INT(11) NOT NULL,
  `duree` INT(11) NOT NULL,
  `fk_idsupport` INT(11) NOT NULL,
  `fk_idrayon` INT(11) NOT NULL,
  PRIMARY KEY (`idobjet`),
  INDEX `fk_idsupport_idx` (`fk_idsupport` ASC),
  INDEX `fk_idrayon_idx` (`fk_idrayon` ASC),
  CONSTRAINT `fk_idsupport`
    FOREIGN KEY (`fk_idsupport`)
    REFERENCES `media`.`support` (`idsupport`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idrayon`
    FOREIGN KEY (`fk_idrayon`)
    REFERENCES `media`.`rayon` (`idrayon`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    select * from objet;
    
    select * from support;
    
    select * from rayon;
    
    insert into objet (titre , annee, resume,  nb_exemplaire, duree, fk_idsupport, fk_idrayon )
    values 
				('Aquaman' , '2018', "Personnage légendaire depuis 70 ans, 
                Aquaman est le Roi des Sept Mers, régnant à contrecœur sur Atlantis. 
                Pris en étau entre les Terriens qui détruisent constamment la mer et 
                les habitants d'Atlantis prêts à se révolter, Aquaman doit protéger la planète tout entière…",  '5',  '143', '1', '1');
                
                
UPDATE `media`.`objet` SET `titre`='coffret marvel', `resume`='coffret de vos heros préférés' WHERE `idobjet`='1';
UPDATE `media`.`objet` SET `duree`='429' WHERE `idobjet`='1';


	insert into objet (titre , annee, resume,  nb_exemplaire, duree, fk_idsupport, fk_idrayon )
	values 
				('Thriller' , '1982', "There's not much left to say about the biggest-selling album ever.
                If you were alive during the 1980s, you remember the Thriller juggernaut, and if you weren't ... 
                you probably still know these songs by heart. Some prefer the disco of 1979's Off the Wall, but this arguably has a better range,
                from the kittenish electro-funk of P.Y.T. to the quiet storm lullaby Human Nature. (The only bum note is the cutesy Paul McCartney duet The Girl Is Mine.) 
                Producers Rod Temperton and Quincy Jones polished these songs to a gleaming pop sheen that
                lingers in the world's memory nearly three decades later.",  '10',  '38', '3', '6');
                
                