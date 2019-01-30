  
  use media;
  
  CREATE TABLE `media`.`ville` (
  `code_postal` VARCHAR(255) NOT NULL,
  `nom` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`code_postal`),
  UNIQUE INDEX `code_postal_UNIQUE` (`code_postal` ASC, `nom` ASC));

  
  select * from ville;
  
  
   insert into `ville` (`code_postal`,`nom`) 
   values 
		('93300','Aubervilliers'),
        ('75000','Paris'),
		('93250','Villemomble'),
        ('93120','La Courneuve'),
        ('59124', 'ivwy');
        
  insert into  `ville` (`code_postal`,`nom`) 
   values 
			 ('59141', 'ivwy'),
             ('59400','cambrai');