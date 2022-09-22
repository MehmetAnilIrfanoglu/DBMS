drop database dataproject;
create database dataproject;
use dataproject;

CREATE TABLE `adress` (
  `idadress` int NOT NULL AUTO_INCREMENT,
  `city` varchar(45) NOT NULL,
  `district` varchar(100) NOT NULL,
  PRIMARY KEY (`idadress`)
);

CREATE TABLE `person` (
  `idperson` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `adressId` int NOT NULL,
  PRIMARY KEY (`idperson`),
  KEY `person_FK1_idx` (`adressId`),
  CONSTRAINT `person_FK1` FOREIGN KEY (`adressId`) REFERENCES `adress` (`idadress`)
) ;

CREATE TABLE `hangar` (
  `idhangar` int NOT NULL AUTO_INCREMENT,
  `hangarPassword` varchar(45) NOT NULL,
  `addressId` int NOT NULL,
  `hangarName` varchar(45) NOT NULL,
  PRIMARY KEY (`idhangar`),
  KEY `hangar_FK1_idx` (`addressId`),
  CONSTRAINT `hangar_FK1` FOREIGN KEY (`addressId`) REFERENCES `adress` (`idadress`)
);

CREATE TABLE `user` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `personId` int NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`iduser`),
  KEY `user_FK1_idx` (`personId`),
  CONSTRAINT `user_FK1` FOREIGN KEY (`personId`) REFERENCES `person` (`idperson`)
) ;

CREATE TABLE `cloth` (
  `idcloth` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `clothSize` varchar(45) NOT NULL,
  `clothType` varchar(45) NOT NULL,
  `hangarId` int DEFAULT NULL,
  PRIMARY KEY (`idcloth`),
  KEY `cloth_FK2_idx` (`hangarId`),
  KEY `cloth_FK1_idx` (`userId`),
  CONSTRAINT `cloth_FK1` FOREIGN KEY (`userId`) REFERENCES `user` (`iduser`),
  CONSTRAINT `cloth_FK2` FOREIGN KEY (`hangarId`) REFERENCES `hangar` (`idhangar`)
);

CREATE TABLE `transporter` (
  `idtransporter` int NOT NULL AUTO_INCREMENT,
  `personId` int NOT NULL,
  `hangarId` int NOT NULL,
  PRIMARY KEY (`idtransporter`),
  KEY `transporter_FK2_idx` (`hangarId`),
  KEY `transporter_FK1_idx` (`personId`),
  CONSTRAINT `transporter_FK1` FOREIGN KEY (`personId`) REFERENCES `person` (`idperson`),
  CONSTRAINT `transporter_FK2` FOREIGN KEY (`hangarId`) REFERENCES `hangar` (`idhangar`)
);

CREATE TABLE `clothgiver` (
  `idclothgiver` int NOT NULL,
  `clothGivenCount` int NOT NULL,
  PRIMARY KEY (`idclothgiver`),
  KEY `clothgiver_FK1_idx` (`idclothgiver`),
  CONSTRAINT `clothgiver_FK1` FOREIGN KEY (`idclothgiver`) REFERENCES `user` (`iduser`)
);

CREATE TABLE `clothtaker` (
  `idclothtaker` int NOT NULL,
  `lowerSize` varchar(45) NOT NULL,
  `upperSize` varchar(45) NOT NULL,
  `clothTakenCount` int NOT NULL,
  PRIMARY KEY (`idclothtaker`),
  CONSTRAINT `clothtaker_FK1` FOREIGN KEY (`idclothtaker`) REFERENCES `person` (`idperson`)
)  ;

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
  KEY `giveaway_FK3_idx` (`clothgiverId`),
  KEY `giveaway_FK4_idx` (`hangarId`),
  KEY `giveaway_FK2_idx` (`transporterId`),
  CONSTRAINT `giveaway_FK1` FOREIGN KEY (`clothId`) REFERENCES `cloth` (`idcloth`),
  CONSTRAINT `giveaway_FK2` FOREIGN KEY (`transporterId`) REFERENCES `transporter` (`idtransporter`),
  CONSTRAINT `giveaway_FK3` FOREIGN KEY (`clothgiverId`) REFERENCES `clothgiver` (`idclothgiver`),
  CONSTRAINT `giveaway_FK4` FOREIGN KEY (`hangarId`) REFERENCES `hangar` (`idhangar`)
);

CREATE TABLE `takes` (
  `idtakes` int NOT NULL AUTO_INCREMENT,
  `arrivalDate` date DEFAULT NULL,
  `transporterId` int NOT NULL,
  `clothId` int NOT NULL,
  `takenDate` date NOT NULL,
  `clothTakerId` int DEFAULT NULL,
  `hangarId` int NOT NULL,
  PRIMARY KEY (`idtakes`),
  KEY `takes_FK4_idx` (`clothTakerId`),
  KEY `takes_FK1_idx` (`clothId`),
  KEY `takes_FK3_idx` (`hangarId`),
  KEY `takes_FK2_idx` (`transporterId`),
  CONSTRAINT `takes_FK1` FOREIGN KEY (`clothId`) REFERENCES `cloth` (`idcloth`),
  CONSTRAINT `takes_FK2` FOREIGN KEY (`transporterId`) REFERENCES `transporter` (`idtransporter`),
  CONSTRAINT `takes_FK3` FOREIGN KEY (`hangarId`) REFERENCES `hangar` (`idhangar`),
  CONSTRAINT `takes_FK4` FOREIGN KEY (`clothTakerId`) REFERENCES `clothtaker` (`idclothtaker`)
);

INSERT INTO adress (city,district) VALUES ("Ankara","Meydan");
INSERT INTO adress (city,district) VALUES ("İstanbul","Meydan");
INSERT INTO adress (city,district) VALUES ("Trabzon","Meydan");
INSERT INTO adress (city,district) VALUES ("İzmir","Meydan");
INSERT INTO adress (city,district) VALUES ("Bursa","Meydan");
INSERT INTO adress (city,district) VALUES ("Antalya","Meydan");
INSERT INTO adress (city,district) VALUES ("Kayseri","Meydan");
INSERT INTO adress (city,district) VALUES ("Konya","Meydan");
INSERT INTO adress (city,district) VALUES ("Samsun","Meydan");
INSERT INTO adress (city,district) VALUES ("Muğla","Meydan");

Insert INTO person(name,surname,sex,adressId) VALUES ("Mustafa","Demiröz","male",3);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Sukufe","Arsoy","female",2);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Nur","Güçlü","female",1);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Yazganalp","Sakarya","male",1);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Tarık","Güçlü","male",4);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Yücelen","Mansız","male",2);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Emine","Safak","female",2);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Deviner","Bilge","male",9);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Elif","Mansız","female",8);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Sanur","Yüksel","female",10);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Dilder","Karadeniz","female",5);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Alaaddin","Korutürk","male",2);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Duruk","Erdoğan","male",4);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Nursan","Yıldırım","female",8);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Aydinç","Demir","male",1);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Abdurrahman","Sener","male",2);
Insert INTO person (name,surname,sex,adressId) VALUES ("Bilge","Eraslan","female",1);
Insert INTO person (name,surname,sex,adressId)  VALUES ("Ali","Zengin","male",2);
Insert INTO person (name,surname,sex,adressId)  VALUES ("Ahmet","Erdoğan","male",8);
Insert INTO person (name,surname,sex,adressId)  VALUES ("Mehmet","Durdu","male",9);
Insert INTO person (name,surname,sex,adressId)  VALUES ("Ayse","Akgündüz","female",7);
Insert INTO person (name,surname,sex,adressId) VALUES ("Nazım","Bilir","male",6);
Insert INTO person (name,surname,sex,adressId) VALUES ("Müğber","Sezer","male",1);
Insert INTO person (name,surname,sex,adressId)  VALUES ("Rıza","Akça","male",2);
Insert INTO person (name,surname,sex,adressId)  VALUES ("Nadir","Türk","male",10);
Insert INTO person (name,surname,sex,adressId)  VALUES ("Yaren","Şensoy","female",1);
Insert INTO person (name,surname,sex,adressId) VALUES ("Yudum","Aslan","female",4);
Insert INTO person (name,surname,sex,adressId) VALUES ("Beyza","Güçlü","female",1);
Insert INTO person (name,surname,sex,adressId) VALUES ("Akif","Ergül","male",9);
Insert INTO person (name,surname,sex,adressId) VALUES ("Melik","Soylu","male",1);
Insert INTO person (name,surname,sex,adressId) VALUES ("Berat","Aylak","male",2);
Insert INTO person (name,surname,sex,adressId) VALUES ("Ahmet","Aydın","male",1);
Insert INTO person (name,surname,sex,adressId) VALUES ("Melek","Erdal","female",2);
Insert INTO person (name,surname,sex,adressId) VALUES ("Nursena","Tütüncü","female",2);
Insert INTO person (name,surname,sex,adressId) VALUES ("Ali","Engin","male",2);
Insert INTO person (name,surname,sex,adressId) VALUES ("Elif","Tasdemir","female",2);
Insert INTO person (name,surname,sex,adressId) VALUES ("Öktem","Güvenç","male",1);
Insert INTO person (name,surname,sex,adressId) VALUES ("Nisa","Ateş","female",1);
Insert INTO person (name,surname,sex,adressId) VALUES ("Kadir","Yesilyurt","male",1);
Insert INTO person (name,surname,sex,adressId) VALUES ("Ugur","Gökdemir","male",2);
Insert INTO person (name,surname,sex,adressId) VALUES ("Mustafa","Öztaskın","male",2);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Ismail","Sulak","male",3);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Berat","Demircan","male",8);
Insert INTO person(name,surname,sex,adressId)  VALUES ("Anıl","Gürdemir","male",7);
Insert INTO person (name,surname,sex,adressId) VALUES ("Batuhan","Demirtürk","male",6);
Insert INTO person (name,surname,sex,adressId) VALUES ("Emine","Akcan","female",4);
Insert INTO person (name,surname,sex,adressId) VALUES ("Merve","Yaldız","female",3);
Insert INTO person (name,surname,sex,adressId) VALUES ("Hüma","Bayazıt","female",7);
Insert INTO person (name,surname,sex,adressId) VALUES ("Zeynep","Altunsoy","female",6);
Insert INTO person (name,surname,sex,adressId) VALUES ("Eren","Ercan","male",5);



INSERT INTO user (personId,username,password) VALUES (1,"sandarsa","1234");
INSERT INTO user (personId,username,password) VALUES (2,"yolgezer","12345");
INSERT INTO user (personId,username,password) VALUES (3,"apollo","1234");
INSERT INTO user (personId,username,password) VALUES (4,"america","1234567");
INSERT INTO user (personId,username,password) VALUES (5,"nobody","pass");


INSERT INTO hangar(hangarPassword,addressId,hangarName) VALUES (23487,1,"Ankara Meydan Hangar");
INSERT INTO hangar(hangarPassword,addressId,hangarName) VALUES (23485,2,"Istanbul Meydan Hangar");
INSERT INTO hangar(hangarPassword,addressId,hangarName) VALUES (34523,3,"Trabzon Meydan Hangar");
INSERT INTO hangar(hangarPassword,addressId,hangarName) VALUES (78643,4,"Izmir Meydan Hangar");
INSERT INTO hangar(hangarPassword,addressId,hangarName) VALUES (34532,5,"Bursa Meydan Hangar");
INSERT INTO hangar(hangarPassword,addressId,hangarName) VALUES (23487,6,"Antalya Meydan Hangar");
INSERT INTO hangar(hangarPassword,addressId,hangarName) VALUES (87483,7,"Kayseri Meydan Hangar");
INSERT INTO hangar(hangarPassword,addressId,hangarName) VALUES (53435,8,"Konya Meydan Hangar");
INSERT INTO hangar(hangarPassword,addressId,hangarName) VALUES (98564,9,"Samsun Meydan Hangar");
INSERT INTO hangar(hangarPassword,addressId,hangarName) VALUES (98746,10,"Mugla Meydan Hangar");


INSERT INTO cloth(userId,clothSize,clothType,hangarId) VALUES (1,"M","T-Shirt",1);
INSERT INTO cloth(userId,clothSize,clothType,hangarId) VALUES (2,"XXL","T-Shirt",2);
INSERT INTO cloth(userId,clothSize,clothType,hangarId) VALUES (3,"L","Pants",1);
INSERT INTO cloth(userId,clothSize,clothType,hangarId) VALUES (3,"S","Skirt",1);
INSERT INTO cloth(userId,clothSize,clothType,hangarId) VALUES (4,"M","T-Shirt",1);
INSERT INTO cloth(userId,clothSize,clothType,hangarId) VALUES (4,"L","Skirt",2);
INSERT INTO cloth(userId,clothSize,clothType,hangarId) VALUES (1,"XL","T-Shirt",1);
INSERT INTO cloth(userId,clothSize,clothType,hangarId) VALUES (2,"M","Pants",3);


INSERT INTO transporter(personId,hangarId) VALUES (15,1);
INSERT INTO transporter(personId,hangarId) VALUES (16,2);
INSERT INTO transporter(personId,hangarId) VALUES (17,3);
INSERT INTO transporter(personId,hangarId) VALUES (18,4);
INSERT INTO transporter(personId,hangarId) VALUES (19,5);
INSERT INTO transporter(personId,hangarId) VALUES (20,6);
INSERT INTO transporter(personId,hangarId) VALUES (21,1);
INSERT INTO transporter(personId,hangarId) VALUES (22,1);

INSERT INTO clothgiver(idClothGiver,clothGivenCount) VALUES (1,0);
INSERT INTO clothgiver(idClothGiver,clothGivenCount) VALUES (2,0);
INSERT INTO clothgiver(idClothGiver,clothGivenCount) VALUES (3,0);
INSERT INTO clothgiver(idClothGiver,clothGivenCount) VALUES (4,0);
INSERT INTO clothgiver(idClothGiver,clothGivenCount) VALUES (5,0);


INSERT INTO clothtaker(idClothTaker,lowerSize,upperSize,clothTakenCount) VALUES (25,"S","M",0);
INSERT INTO clothtaker(idClothTaker,lowerSize,upperSize,clothTakenCount) VALUES (26,"M","M",0);
INSERT INTO clothtaker(idClothTaker,lowerSize,upperSize,clothTakenCount) VALUES (27,"L","XL",0);
INSERT INTO clothtaker(idClothTaker,lowerSize,upperSize,clothTakenCount) VALUES (28,"XXL","XL",0);
INSERT INTO clothtaker(idClothTaker,lowerSize,upperSize,clothTakenCount) VALUES (29,"S","M",0);
INSERT INTO clothtaker(idClothTaker,lowerSize,upperSize,clothTakenCount) VALUES (30,"M","M",0);

INSERT INTO giveaway(clothId,transporterId,takenDate,arrivalDate,clothGiverId,hangarId) VALUES (1,1,"2021-05-25","2020-06-01",3,1);
INSERT INTO giveaway(clothId,transporterId,takenDate,clothGiverId,hangarId) VALUES (2,1,"2021-05-25",3,1);
INSERT INTO giveaway(clothId,takenDate,clothGiverId,hangarId) VALUES (3,"2021-05-25",1,1);
INSERT INTO giveaway(clothId,transporterId,takenDate,arrivalDate,clothGiverId,hangarId) VALUES (4,1,"2021-05-25","2020-06-01",3,1);


INSERT INTO takes(arrivalDate,transporterId,clothId,takenDate,clothTakerId,hangarId) VALUES ("2021-06-15",1,1,"2021-06-14",30,1);
INSERT INTO takes(transporterId,clothId,takenDate,clothTakerId,hangarId) VALUES (1,2,"2021-06-14",25,1);

Create view avaliable_cloths_in_given_hangar as select idcloth,clothType, clothSize,hangarName
from giveaway inner join cloth inner join hangar on giveaway.clothId=cloth.idcloth and hangar.idhangar = cloth.hangarId where arrivalDate is not null and (clothId) not in 
(select clothId from takes);
;

Create view on_the_way_cloths as select username,clothId,clothType,clothSize,hangarName,name,surname,transporterId from person inner join takes inner join cloth inner join user inner join hangar  on hangar.idhangar=takes.hangarId and cloth.userId = user.iduser and takes.clothTakerId = person.idperson and cloth.idcloth = takes.clothId where  arrivalDate is  null;

Create view arrived_cloths as select username,clothId,clothType, clothSize,hangarName,name,surname from person inner join takes inner join cloth inner join user inner join hangar  on hangar.idhangar=takes.hangarId and cloth.userId = user.iduser and takes.clothTakerId = person.idperson and cloth.idcloth = takes.clothId where  arrivalDate is not  null;

Create view cloths_waiting_for_transfer as select idcloth,clothType,clothSize,hangarName,username
from cloth inner join hangar inner join user on hangar.idhangar = cloth.hangarId and cloth.userId = user.iduser where (idcloth) not in (select clothId from takes);
;

Create view cloth_didnt_arrive_hangar as select idcloth,clothType, clothSize,hangarName
from giveaway inner join cloth inner join hangar on giveaway.clothId=cloth.idcloth and hangar.idhangar = cloth.hangarId where arrivalDate is null and (clothId) not in 
(select clothId from takes);
;


Create view transporter_information as select idtransporter,name,surname,hangarName,hangarId,personId from transporter inner join hangar inner join person on hangar.idhangar = transporter.hangarId and person.idperson=transporter.personId; 

Create view clothTaking_person as select idperson,name,surname,lowerSize,upperSize,city,district from person inner 
join clothtaker inner join adress on person.idperson=clothtaker.idclothtaker and person.adressId=adress.idadress;