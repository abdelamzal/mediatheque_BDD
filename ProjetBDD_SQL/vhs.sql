CREATE TABLE `media`.`vhs` (
  `idvhs` INT(11) NOT NULL AUTO_INCREMENT,
  `fk_idobjet_vhs` INT(11) NOT NULL,
  PRIMARY KEY (`idvhs`),
  INDEX `fk_idobjet_vhs_idx` (`fk_idobjet_vhs` ASC),
  CONSTRAINT `fk_idobjet_vhs`
    FOREIGN KEY (`fk_idobjet_vhs`)
    REFERENCES `media`.`objet` (`idobjet`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

select * from vhs;