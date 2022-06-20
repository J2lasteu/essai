BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS `Table_villes` (
	`Planete`	TEXT,
	`Ville`	TEXT NOT NULL,
	PRIMARY KEY(`Planete`)
);
INSERT INTO `Table_villes` VALUES ('Trantor','Terminus');
INSERT INTO `Table_villes` VALUES ('Euterpe','Arcturus');
INSERT INTO `Table_villes` VALUES ('Helicon','Kalgan');
INSERT INTO `Table_villes` VALUES ('Aurora','Hesperos');
INSERT INTO `Table_villes` VALUES ('Gaia','Siwenna');
INSERT INTO `Table_villes` VALUES ('Avonlea','Greengables');
INSERT INTO `Table_villes` VALUES ('Nexon','Solaris');

CREATE TABLE IF NOT EXISTS `Table_responsables` (
	`NoAllee`	INTEGER,
	`NomAgent`	TEXT NOT NULL,
	PRIMARY KEY(`NoAllee`)
);
INSERT INTO `Table_responsables` VALUES (1,'Seldon');
INSERT INTO `Table_responsables` VALUES (2,'Pelorat');

CREATE TABLE IF NOT EXISTS `Table_miams` (
	`Aliment`	TEXT NOT NULL,
	`NomAlien`	TEXT,
	PRIMARY KEY(`NomAlien`)
);
INSERT INTO `Table_miams` VALUES ('Bortsch','Zorglub');
INSERT INTO `Table_miams` VALUES ('Bortsch','Blorx');
INSERT INTO `Table_miams` VALUES ('Zoumise','Urxiz');
INSERT INTO `Table_miams` VALUES ('Bortsch','Zbleurdite');
INSERT INTO `Table_miams` VALUES ('Schwanstucke','Darneurane');
INSERT INTO `Table_miams` VALUES ('Kashpir','Mulzo');
INSERT INTO `Table_miams` VALUES ('Kashpir','Zzzzzz');
INSERT INTO `Table_miams` VALUES ('Zoumise','Arghh');
INSERT INTO `Table_miams` VALUES ('Bortsch','Joranum');
INSERT INTO `Table_miams` VALUES ('Scone','AnnE');

CREATE TABLE IF NOT EXISTS `Table_gardiens` (
	`NomAgent`	TEXT,
	`VilleAgent`	TEXT NOT NULL,
	PRIMARY KEY(`NomAgent`)
);
INSERT INTO `Table_gardiens` VALUES ('Branno','Terminus');
INSERT INTO `Table_gardiens` VALUES ('Darrel','Terminus');
INSERT INTO `Table_gardiens` VALUES ('Demerzel','Acturus');
INSERT INTO `Table_gardiens` VALUES ('Seldon','Terminus');
INSERT INTO `Table_gardiens` VALUES ('Dornick','Kalgan');
INSERT INTO `Table_gardiens` VALUES ('Hardin','Terminus');
INSERT INTO `Table_gardiens` VALUES ('Trevize','Hesperos');
INSERT INTO `Table_gardiens` VALUES ('Pelorat','Kalgan');
INSERT INTO `Table_gardiens` VALUES ('Riose','Terminus');
INSERT INTO `Table_gardiens` VALUES ('Palver','Siwenna');
INSERT INTO `Table_gardiens` VALUES ('Amaryl','Arcturus');

CREATE TABLE IF NOT EXISTS `Table_aliens` (
	`NoCabine`	INT,
	`NomAlien`	TEXT NOT NULL,
	`Planete`	TEXT NOT NULL,
	`Sexe`	TEXT NOT NULL,
	PRIMARY KEY(`NoCabine`)
);
INSERT INTO `Table_aliens` VALUES (1,'Zorglub','Trantor','M');
INSERT INTO `Table_aliens` VALUES (2,'Blorx','Euterpe','M');
INSERT INTO `Table_aliens` VALUES (3,'Urxiz','Aurora','M');
INSERT INTO `Table_aliens` VALUES (4,'Zbleurdite','Trantor','F');
INSERT INTO `Table_aliens` VALUES (5,'Darneurane','Trantor','M');
INSERT INTO `Table_aliens` VALUES (6,'Mulzo','Helicon','M');
INSERT INTO `Table_aliens` VALUES (7,'Zzzzzz','Aurora','F');
INSERT INTO `Table_aliens` VALUES (8,'Arghh','Nexon','M');
INSERT INTO `Table_aliens` VALUES (9,'Joranum','Euterpe','F');
INSERT INTO `Table_aliens` VALUES (10,'AnnE','Avonlea','F');

CREATE TABLE IF NOT EXISTS `Table_agents` (
	`NoCabine`	INTEGER,
	`NomAgent`	TEXT NOT NULL,
	PRIMARY KEY(`NoCabine`)
);
INSERT INTO `Table_agents` VALUES (1,'Branno');
INSERT INTO `Table_agents` VALUES (2,'Darrel');
INSERT INTO `Table_agents` VALUES (3,'Demerzel');
INSERT INTO `Table_agents` VALUES (4,'Seldon');
INSERT INTO `Table_agents` VALUES (5,'Dornick');
INSERT INTO `Table_agents` VALUES (6,'Hardin');
INSERT INTO `Table_agents` VALUES (7,'Trevize');
INSERT INTO `Table_agents` VALUES (8,'Pelorat');
INSERT INTO `Table_agents` VALUES (9,'Riose');
INSERT INTO `Table_agents` VALUES (10,'Cordelia');

CREATE TABLE IF NOT EXISTS `Table_cabines` (
	`NoCabine`	INTEGER,
	`NoAllee`	INTEGER,
	PRIMARY KEY(`NoCabine`)
);
INSERT INTO `Table_cabines` VALUES (1,1);
INSERT INTO `Table_cabines` VALUES (2,1);
INSERT INTO `Table_cabines` VALUES (3,2);
INSERT INTO `Table_cabines` VALUES (4,1);
INSERT INTO `Table_cabines` VALUES (5,2);
INSERT INTO `Table_cabines` VALUES (6,2);
INSERT INTO `Table_cabines` VALUES (7,2);
INSERT INTO `Table_cabines` VALUES (8,1);
INSERT INTO `Table_cabines` VALUES (9,1);



SELECT name as "Table gardiens", (CASE WHEN pk=1 THEN type || "*" ELSE type END) AS " " FROM PRAGMA_TABLE_INFO("Table_gardiens");
SELECT name as "Table aliens", (CASE WHEN pk=1 THEN type || "*" ELSE type END) AS " " FROM PRAGMA_TABLE_INFO("Table_aliens");
SELECT name as "Table responsables", (CASE WHEN pk=1 THEN type || "*" ELSE type END) AS " " FROM PRAGMA_TABLE_INFO("Table_responsables");
SELECT name as "Table miams", (CASE WHEN pk=1 THEN type || "*" ELSE type END) AS " " FROM PRAGMA_TABLE_INFO("Table_miams");
SELECT name as "Table villes", (CASE WHEN pk=1 THEN type || "*" ELSE type END) AS " " FROM PRAGMA_TABLE_INFO("Table_villes");
SELECT name as "Table agents", (CASE WHEN pk=1 THEN type || "*" ELSE type END) AS " " FROM PRAGMA_TABLE_INFO("Table_agents");
SELECT name as "Table cabines", (CASE WHEN pk=1 THEN type || "*" ELSE type END) AS " " FROM PRAGMA_TABLE_INFO("Table_cabines");



COMMIT;
