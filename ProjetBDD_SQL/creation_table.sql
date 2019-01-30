CREATE SCHEMA `media` DEFAULT CHARACTER SET utf8 ;

use media;

CREATE TABLE `media`.`genre` (
  `idgenre` INT(11) NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idgenre`),
  UNIQUE INDEX `nom_genre_UNIQUE` (`nom` ASC));
  
  select * from genre;
  
  insert into `genre` (`nom`) values ('Action');
  
  insert into `genre` (`nom`) 
  values
	('Aventure') ,
    ('Biographique') ,
    ('Catastrophe') ,
    ('Comédie') ,
    ('Comédie Musicale'), 
    ('Comédie Romantique') ,
    ('Court Métrage') ,
    ('Dessin Animé') ,
    ('Documentaire') ,
    ('Drame') ,
    ('Epouvante'), 
    ('Fantastique'), 
    ('Espionnage') ,
    ('Horreur') ,
    ('Policier') ,
    ('Science Fiction'),
    ('Western') ,
    ('Thriller') ,
    ('Péplum') ,
    ('Guerre') ,
    ('Historique'), 
    ('Muet') ;


  
  