CREATE TABLE `media`.`rayon` (
  `idrayon` INT(11) NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idrayon`),
  UNIQUE INDEX `nom_rayon_UNIQUE` (`nom` ASC));

select * from rayon order by idrayon;

insert into rayon (nom) 
  values
	('VHS A') ,
    ('VHS B') ,
    ('VHS C') ,
    ('VHS D') ,
    ('VHS E') ,
    ('DISQUE A') ,
	('DISQUE B') ,
	('DISQUE C') ,
	('DISQUE D') ,
	('DISQUE E') ;