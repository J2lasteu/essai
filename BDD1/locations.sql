BEGIN TRANSACTION;
PRAGMA foreign_keys = ON;



CREATE TABLE IF NOT EXISTS `vehicules` (
	`immatriculation`	TEXT NOT NULL,
	`nom`	TEXT,
	`kilometrage`	INTEGER,
	`age`	INTEGER,
	PRIMARY KEY(`immatriculation`)
);

INSERT INTO `vehicules` VALUES ('AB-224-BA','Renault Megane',156107,6);
INSERT INTO `vehicules` VALUES ('CB-424-BC','Renault Megane',55108,3);
INSERT INTO `vehicules` VALUES ('DB-566-DF','Renault Megane',165150,5);
INSERT INTO `vehicules` VALUES ('CC-259-FF','Renault Twingo',61458,5);
INSERT INTO `vehicules` VALUES ('DF-269-EF','Renault Twingo',134340,5);
INSERT INTO `vehicules` VALUES ('DE-254-AE','Peugeot 108',215460,4);
INSERT INTO `vehicules` VALUES ('ED-587-EE','Peugeot 108',155465,4);
INSERT INTO `vehicules` VALUES ('AA-654-BA','Peugeot 108',115890,6);
INSERT INTO `vehicules` VALUES ('EE-854-EF','Citro&eumln C4',91105,6);
INSERT INTO `vehicules` VALUES ('AE-478-DD','Citro&eumln C5',2589,8);
CREATE TABLE `locations` (
	`id`	INTEGER NOT NULL,
	`vehicule`	TEXT,
	`depart`	INTEGER NOT NULL,
	`retour`	INTEGER NOT NULL,
	`kilometrage`	integer,
	`date`	timestamp without time zone,
	`duree` integer,
	PRIMARY KEY(`id`)
	foreign key (vehicule) references vehicules(immatriculation)
	foreign key (depart) references agences(id)
	foreign key (retour) references agences(id)
	
);
INSERT INTO `locations` VALUES (1,'AB-224-BA',1,1,452,'2020-05-03',1);
INSERT INTO `locations` VALUES (2,'AB-224-BA',1,3,1354,'2020-06-05',2);
INSERT INTO `locations` VALUES (3,'AB-224-BA',3,1,1402,'2020-07-10',1);
INSERT INTO `locations` VALUES (4,'CB-424-BC',1,1,1457,'2020-05-10',1);
INSERT INTO `locations` VALUES (5,'CB-424-BC',1,1,153,'2020-01-02',1);
INSERT INTO `locations` VALUES (6,'DB-566-DF',2,2,457,'2020-06-24',1);
INSERT INTO `locations` VALUES (7,'DB-566-DF',5,1,1584,'2020-08-30',1);
INSERT INTO `locations` VALUES (8,'DF-269-EF',7,1,1358,'2020-02-19',1);
INSERT INTO `locations` VALUES (9,'ED-587-EE',1,7,1587,'2020-04-11',1);
INSERT INTO `locations` VALUES (10,'EE-854-EF',4,4,1333,'2020-11-08',3);
INSERT INTO `locations` VALUES (11,'ED-587-EE',4,2,1248,'2020-10-01',1);
INSERT INTO `locations` VALUES (12,'EE-854-EF',7,7,1387,'2020-05-05',1);
INSERT INTO `locations` VALUES (13,'DF-269-EF',6,6,457,'2020-07-08',1);
INSERT INTO `locations` VALUES (14,'CC-259-FF',6,6,310,'2020-09-09',1);
INSERT INTO `locations` VALUES (15,'AB-224-BA',6,1,745,'2020-04-10',1);
INSERT INTO `locations` VALUES (16,'DB-566-DF',7,8,387,'2020-07-11',1);
INSERT INTO `locations` VALUES (17,'CC-259-FF',8,8,1159,'2020-08-20',1);
INSERT INTO `locations` VALUES (18,'DF-269-EF',3,1,147,'2020-11-23',1);
INSERT INTO `locations` VALUES (19,'DE-254-AE',5,5,1147,'2020-10-17',1);
INSERT INTO `locations` VALUES (20,'AA-654-BA',6,6,1357,'2020-11-27',1);
INSERT INTO `locations` VALUES (21,'ED-587-EE',6,6,1485,'2020-10-29',1);
INSERT INTO `locations` VALUES (22,'CC-259-FF',7,7,1597,'2020-09-30',1);
INSERT INTO `locations` VALUES (23,'DB-566-DF',7,8,1357,'2020-06-18',3);
INSERT INTO `locations` VALUES (24,'EE-854-EF',9,9,1248,'2020-09-20',1);
INSERT INTO `locations` VALUES (25,'CC-259-FF',2,2,1456,'2020-05-16',2);
INSERT INTO `locations` VALUES (26,'DE-254-AE',2,3,1789,'2020-03-15',2);
INSERT INTO `locations` VALUES (27,'AB-224-BA',1,1,1374,'2020-05-12',1);
INSERT INTO `locations` VALUES (28,'AB-224-BA',1,5,1080,'2020-07-15',1);
INSERT INTO `locations` VALUES (29,'AB-224-BA',5,5,680,'2020-07-18',1);
INSERT INTO `locations` VALUES (30,'AB-224-BA',5,6,240,'2020-08-05',1);
INSERT INTO `locations` VALUES (31,'AB-224-BA',6,1,168,'2020-08-08',1);
INSERT INTO `locations` VALUES (32,'CB-424-BC',6,6,1457,'2020-04-09',1);
INSERT INTO `locations` VALUES (33,'DF-269-EF',3,3,183,'2020-06-15',2);
INSERT INTO `locations` VALUES (34,'DF-269-EF',3,1,NULL,'2020-12-24',1);
INSERT INTO `locations` VALUES (35,'DE-254-AE',5,5,NULL,'2020-12-24',1);
INSERT INTO `locations` VALUES (36,'AA-654-BA',7,7,NULL,'2020-12-24',1);
INSERT INTO `locations` VALUES (37,'CB-424-BC',3,6,NULL,'2020-12-24',2);
INSERT INTO `locations` VALUES (38,'DB-566-DF',4,8,NULL,'2020-12-24',1);
INSERT INTO `locations` VALUES (39,'EE-854-EF',9,9,NULL,'2020-10-23',0);
INSERT INTO `locations` VALUES (40,'AE-478-DD',1,1,NULL,'2020-06-01',0);
CREATE TABLE IF NOT EXISTS `agences` (
	`id`	INTEGER NOT NULL,
	`nom`	TEXT,
	`adresse`	TEXT,
	`code`	TEXT,
	`ville`	TEXT,
	`pays`	TEXT,
	PRIMARY KEY(`id`)
);

INSERT INTO `agences` VALUES (1,'S&eacutepamieuayeur','5 quai des bavards','56100','Lorient','France');
INSERT INTO `agences` VALUES (2,'Moincheryapa','4 rue Parmentier','56100','Lorient','France');
INSERT INTO `agences` VALUES (3,'Pacher','5 avenue du lac','56000','Vannes','France');
INSERT INTO `agences` VALUES (4,'Pourcoipahici','45 boulevard Leon Blum','56100','Lorient','France');
INSERT INTO `agences` VALUES (5,'Quiquanveu','45 rue de Siam','29000','Brest','France');
INSERT INTO `agences` VALUES (6,'Pafameu','35 route de Lorient','35000','Rennes','France');
INSERT INTO `agences` VALUES (7,'Padarnac','45 rue du Soleil','31000','Toulouse','France');
INSERT INTO `agences` VALUES (8,'Ass&eacutebienpourtoi','5 place de la Lune','33000','Bordeaux','France');
INSERT INTO `agences` VALUES (9,'Fal&eacutepa','18 boulevard des bavards','29990','&Icircle de Sein','France');
INSERT INTO `agences` VALUES (10,'Pacherdutou','15 boulevard des muets','75001','Paris','France');
INSERT INTO `agences` VALUES (11,'Pourcoipala','18 boulevard de la mer','22300','Lannion','France');
INSERT INTO `agences` VALUES (12,'Viendonc','18 route de la plage','78000','Versailles','France');
COMMIT;
