CREATE TABLE `media`.`cotisation` (
  `idcotisation` INT(11)  NOT NULL AUTO_INCREMENT,
  `tarif` FLOAT NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idcotisation`));
  
  
  
  use media;
  
  select * from cotisation;
  
  insert into cotisation (tarif , description ) 
  values 
				('2.50' , 'Pauvre - Residant - Disques ou Cassettes - Volume 12' ),
                ('3.50' , 'Pauvre - Residant - Disques et Cassettes - Volume 12' ),
                ('4' , 'Pauvre - Non Residant - Disques ou Cassettes - Volume 12' ),
                ('5.50' , 'Pauvre - Non Residant - Disques et Cassettes - Volume 12' ),
                
                ('6' , 'Pauvre - Residant - Disques ou Cassettes - Volume 24' ),
                ('6.50' , 'Pauvre - Residant - Disques et Cassettes - Volume 24' ),
                ('7' , 'Pauvre - Non Residant - Disques ou Cassettes - Volume 24' ),
                ('7.50' , 'Pauvre - Non Residant - Disques et Cassettes - Volume 24' ),
                
				('8.50' , 'Pauvre - Residant - Disques ou Cassettes - Volume 36' ),
                ('9.50' , 'Pauvre - Residant - Disques et Cassettes - Volume 36' ),
                ('10' , 'Pauvre - Non Residant - Disques ou Cassettes - Volume 36' ),
                ('10.50' , 'Pauvre - Non Residant - Disques et Cassettes - Volume 36' ),
                
                ('11.50' , 'Pauvre - Residant - Disques ou Cassettes - Volume >' ),
                ('12.50' , 'Pauvre - Residant - Disques et Cassettes - Volume >' ),
                ('13' , 'Pauvre - Non Residant - Disques ou Cassettes - Volume >' ),
                ('14.50' , 'Pauvre - Non Residant - Disques et Cassettes - Volume >' ),
                
                ('15.50' , 'Moyen - Resident - Disques ou Cassettes - Volume 12' ),
                ('16.50' , 'Moyen - Resident - Disques et Cassettes - Volume 12' ),
                ('17' , 'Moyen - Non Resident - Disques ou Cassettes - Volume 12' ),
                ('18.50' , 'Moyen - Non Resident - Disques et Cassettes - Volume 12' ),
                
                ('19.50' , 'Moyen - Resident - Disques ou Cassettes - Volume 24' ),
                ('20.50' , 'Moyen - Resident - Disques et Cassettes - Volume 24' ),
                ('21' , 'Moyen - Non Resident - Disques ou Cassettes - Volume 24' ),
                ('22.50' , 'Moyen - Non Resident - Disques et Cassettes - Volume 24' ),
                
				('23.50' , 'Moyen - Resident - Disques ou Cassettes - Volume 36' ),
                ('24.50' , 'Moyen - Resident - Disques et Cassettes - Volume 36' ),
                ('25' , 'Moyen - Non Resident - Disques ou Cassettes - Volume 36' ),
                ('26.50' , 'Moyen - Non Resident - Disques et Cassettes - Volume 36' ),
                
                ('27.50' , 'Moyen - Resident - Disques ou Cassettes - Volume >' ),
                ('28.50' , 'Moyen - Resident - Disques et Cassettes - Volume >' ),
                ('29' , 'Moyen - Non Resident - Disques ou Cassettes - Volume >' ),
                ('30.50' , 'Moyen - Non Resident - Disques et Cassettes - Volume >' ),
                
				('31.50' , 'Riche - Resident - Disques ou Cassettes - Volume 12' ),
                ('32.50' , 'Riche - Resident - Disques et Cassettes - Volume 12' ),
                ('33' , 'Riche - Non Resident - Disques ou Cassettes - Volume 12' ),
                ('34.50' , 'Riche - Non Resident - Disques et Cassettes - Volume 12' ),
                
                ('35.50' , 'Riche - Resident - Disques ou Cassettes - Volume 24' ),
                ('36.50' , 'Riche - Resident - Disques et Cassettes - Volume 24' ),
                ('37' , 'Riche - Non Resident - Disques ou Cassettes - Volume 24' ),
                ('38.50' , 'Riche - Non Resident - Disques et Cassettes - Volume 24' ),
                
				('39.50' , 'Riche - Resident - Disques ou Cassettes - Volume 36' ),
                ('40.50' , 'Riche - Resident - Disques et Cassettes - Volume 36' ),
                ('41' , 'Riche - Non Resident - Disques ou Cassettes - Volume 36' ),
                ('42.50' , 'Riche - Non Resident - Disques et Cassettes - Volume 36' ),
                
                ('43.50' , 'Riche - Resident - Disques ou Cassettes - Volume >' ),
                ('44.50' , 'Riche - Resident - Disques et Cassettes - Volume >' ),
                ('45' , 'Riche - Non Resident - Disques ou Cassettes - Volume >' ),
                ('46.50' , 'Riche - Non Resident - Disques et Cassettes - Volume >' );

  