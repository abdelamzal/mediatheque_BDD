CREATE TABLE `media`.`disque` (
  `iddisque` INT(11) NOT NULL,
  `fk_idobjet_disque` INT(11) NULL,
  PRIMARY KEY (`iddisque`),
  INDEX `fk_idobjet_disque_idx` (`fk_idobjet_disque` ASC),
  CONSTRAINT `fk_idobjet_disque`
    FOREIGN KEY (`fk_idobjet_disque`)
    REFERENCES `media`.`objet` (`idobjet`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    
ALTER TABLE `media`.`disque` 
CHANGE COLUMN `iddisque` `iddisque` INT(11) NOT NULL AUTO_INCREMENT ;

ALTER TABLE `media`.`disque` 
DROP FOREIGN KEY `fk_idobjet_disque`;

ALTER TABLE `media`.`disque` 
CHANGE COLUMN `fk_idobjet_disque` `fk_idobjet_disque` INT(11) NOT NULL ;

ALTER TABLE `media`.`disque` 
ADD CONSTRAINT `fk_idobjet_disque`
  FOREIGN KEY (`fk_idobjet_disque`)
  REFERENCES `media`.`objet` (`idobjet`);

    
    select * from disque;
    
    
