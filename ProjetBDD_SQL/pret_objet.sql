use media;

CREATE TABLE `media`.`pret_objet` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `fk_idobjet_pret` INT(11) NOT NULL,
  `fk_idpret_pret` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_idobjet_index` (`fk_idobjet_pret` ASC),
  INDEX `fk_idpret_index` (`fk_idpret_pret` ASC),
  CONSTRAINT `fk_idobjet_pret`
    FOREIGN KEY (`fk_idobjet_pret`)
    REFERENCES `media`.`objet` (`idobjet`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idpret_pret`
    FOREIGN KEY (`fk_idpret_pret`)
    REFERENCES `media`.`pret` (`idpret`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    select * from pret_objet;
    
    
    
    insert into pret_objet (fk_idobjet_pret, fk_idpret_pret) 
    values 
				('1','1');

