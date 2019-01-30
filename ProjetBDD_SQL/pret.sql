CREATE TABLE `media`.`pret` (
  `idpret` INT(11) NOT NULL AUTO_INCREMENT,
  `date` DATE NOT NULL,
  `duree` INT(11) NOT NULL,
  `fk_idmembre` INT(11) NOT NULL,
  PRIMARY KEY (`idpret`),
  INDEX `fk_idmembre_idindex` (`fk_idmembre` ASC),
  CONSTRAINT `fk_idmembre`
    FOREIGN KEY (`fk_idmembre`)
    REFERENCES `media`.`membre` (`idmembre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    use media;
    
    select * from pret;
    
    select * from pret where fk_idmembre in (select idmembre from membre where idmembre = 1);
    
    insert into pret ( date , duree , fk_idmembre )
    values 
				('2018-12-17', '30' , '1');