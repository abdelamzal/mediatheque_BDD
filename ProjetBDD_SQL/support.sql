CREATE TABLE `media`.`support` (
  `idsupport` INT(11) NOT NULL AUTO_INCREMENT,
  `type` INT(11) NOT NULL,
  `prix_sup_volume` FLOAT NOT NULL,
  `prix_penalite` FLOAT NOT NULL,
  PRIMARY KEY (`idsupport`),
  UNIQUE INDEX `type_prix_support_UNIQUE` (`type` ASC, `prix_sup_volume` ASC, `prix_penalite` ASC));

select * from support;

/**
type 0 = vhs
type 1 = disque format nouveau
type 2 = disque format ancien 
*/

insert into support (type , prix_sup_volume, prix_penalite)
values 
			('0', '0.50', '0.80'),
            ('1', '0.30', '0.60');
            
insert into support (type , prix_sup_volume, prix_penalite)
values 
            ('2', '0.30', '0.60');