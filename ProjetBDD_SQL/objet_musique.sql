CREATE TABLE `media`.`objet_musique` (
  `idobjet_musique` INT(11) NOT NULL AUTO_INCREMENT,
  `fk_idobjet` INT(11) NOT NULL,
  `fk_idmusique` INT(11) NOT NULL,
  PRIMARY KEY (`idobjet_musique`),
  UNIQUE INDEX `UNIQUE` (`fk_idobjet` ASC, `fk_idmusique` ASC),
  INDEX `fk_idmusique_idx` (`fk_idmusique` ASC),
  INDEX `fk_idobjet_contenu_musique_idx` (`fk_idobjet` ASC),
  CONSTRAINT `fk_idobjet_contenu_musique`
    FOREIGN KEY (`fk_idobjet`)
    REFERENCES `media`.`objet` (`idobjet`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idmusique`
    FOREIGN KEY (`fk_idmusique`)
    REFERENCES `media`.`musique` (`idmusique`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    select * from objet_musique;
    
    
	insert into objet_musique (fk_idobjet, fk_idmusique)
    values 
				('2' , '1'),
                ('2' , '2'),
                ('2' , '3'),
                ('2' , '4'),
                ('2' , '5'),
                ('2' , '6'),
                ('2' , '7'),
                ('2' , '8');
    