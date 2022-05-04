CREATE TABLE `adress` (
  `idadress` int NOT NULL,
  `city` varchar(45) NOT NULL,
  `district` varchar(100) NOT NULL,
  PRIMARY KEY (`idadress`)
) 
;

CREATE TABLE `person` (
  `idperson` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `adressId` int NOT NULL,
  PRIMARY KEY (`idperson`),
  KEY `person_FK1_idx` (`adressId`),
  CONSTRAINT `person_FK1` FOREIGN KEY (`adressId`) REFERENCES `adress` (`idadress`)
) 
;

CREATE TABLE `hangar` (
  `idhangar` int NOT NULL,
  `addressId` int NOT NULL,
  `hangarName` varchar(45) NOT NULL,
  PRIMARY KEY (`idhangar`),
  KEY `hangar_FK1_idx` (`addressId`),
  CONSTRAINT `hangar_FK1` FOREIGN KEY (`addressId`) REFERENCES `adress` (`idadress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
;

CREATE TABLE `user` (
  `iduser` int NOT NULL,
  `personId` int NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`iduser`),
  KEY `user_FK1_idx` (`personId`),
  CONSTRAINT `user_FK1` FOREIGN KEY (`personId`) REFERENCES `person` (`idperson`)
) 
;

CREATE TABLE `cloth` (
  `idcloth` int NOT NULL,
  `userId` int NOT NULL,
  `clothSize` int NOT NULL,
  `clothType` int NOT NULL,
  `hangarId` int DEFAULT NULL,
  PRIMARY KEY (`idcloth`),
  KEY `cloth_FK1_idx` (`userId`),
  KEY `cloth_FK2_idx` (`hangarId`),
  CONSTRAINT `cloth_FK1` FOREIGN KEY (`userId`) REFERENCES `user` (`iduser`),
  CONSTRAINT `cloth_FK2` FOREIGN KEY (`hangarId`) REFERENCES `hangar` (`idhangar`)
) 
;

CREATE TABLE `transporter` (
  `idtransporter` int NOT NULL,
  `userId` int NOT NULL,
  `hangarId` int NOT NULL,
  PRIMARY KEY (`idtransporter`),
  KEY `transporter_FK1_idx` (`userId`),
  KEY `transporter_FK2_idx` (`hangarId`),
  CONSTRAINT `transporter_FK1` FOREIGN KEY (`userId`) REFERENCES `user` (`iduser`),
  CONSTRAINT `transporter_FK2` FOREIGN KEY (`hangarId`) REFERENCES `hangar` (`idhangar`)
) 
;

CREATE TABLE `clothgiver` (
  `idclothgiver` int NOT NULL,
  `clothGivenCount` int NOT NULL,
  KEY `clothgiver_FK1_idx` (`idclothgiver`),
  CONSTRAINT `clothgiver_FK1` FOREIGN KEY (`idclothgiver`) REFERENCES `user` (`iduser`)
) 
;
CREATE TABLE `clothtaker` (
  `idclothtaker` int NOT NULL,
  `lowerSize` int NOT NULL,
  `upperSize` int NOT NULL,
  `clothTakenCount` int NOT NULL,
  PRIMARY KEY (`idclothtaker`),
  CONSTRAINT `clothTaker_FK1` FOREIGN KEY (`idclothtaker`) REFERENCES `person` (`idperson`)
) 
;
CREATE TABLE `giveaway` (
  `idgiveaway` int NOT NULL AUTO_INCREMENT,
  `clothId` int NOT NULL,
  `transporterId` int DEFAULT NULL,
  `takenDate` date NOT NULL,
  `arrivalDate` date DEFAULT NULL,
  `clothgiverId` int NOT NULL,
  `hangarId` int NOT NULL,
  PRIMARY KEY (`idgiveaway`),
  KEY `giveaway_FK1_idx` (`clothId`),
  KEY `giveaway_FK2_idx` (`transporterId`),
  KEY `giveaway_FK3_idx` (`clothgiverId`),
  KEY `giveaway_FK4_idx` (`hangarId`),
  CONSTRAINT `giveaway_FK1` FOREIGN KEY (`clothId`) REFERENCES `cloth` (`idcloth`),
  CONSTRAINT `giveaway_FK2` FOREIGN KEY (`transporterId`) REFERENCES `transporter` (`idtransporter`),
  CONSTRAINT `giveaway_FK3` FOREIGN KEY (`clothgiverId`) REFERENCES `clothgiver` (`idclothgiver`),
  CONSTRAINT `giveaway_FK4` FOREIGN KEY (`hangarId`) REFERENCES `hangar` (`idhangar`)
) 
;


CREATE TABLE `takes` (
  `idtakes` int NOT NULL AUTO_INCREMENT,
  `arrivalDate` date DEFAULT NULL,
  `transporterId` int NOT NULL,
  `clothId` int NOT NULL,
  `takenDate` date NOT NULL,
  `clothTakerId` int DEFAULT NULL,
  `hangarId` int NOT NULL,
  PRIMARY KEY (`idtakes`),
  KEY `takes_FK1_idx` (`clothId`),
  KEY `takes_FK2_idx` (`transporterId`),
  KEY `takes_FK3_idx` (`hangarId`),
  KEY `takes_FK4_idx` (`clothTakerId`),
  CONSTRAINT `takes_FK1` FOREIGN KEY (`clothId`) REFERENCES `cloth` (`idcloth`),
  CONSTRAINT `takes_FK2` FOREIGN KEY (`transporterId`) REFERENCES `transporter` (`idtransporter`),
  CONSTRAINT `takes_FK3` FOREIGN KEY (`hangarId`) REFERENCES `hangar` (`idhangar`),
  CONSTRAINT `takes_FK4` FOREIGN KEY (`clothTakerId`) REFERENCES `clothtaker` (`idclothtaker`)
) 
;





