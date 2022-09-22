CREATE TABLE `Address` (
 `Address_Id` numeric NOT NULL,
 `City` varchar (20) NOT NULL,
 `District` varchar (20) NOT NULL,
 PRIMARY KEY (`Address_Id`)
);


CREATE TABLE `Person` (
 `Person_Id` numeric NOT NULL,
 `Name` varchar(45) NOT NULL,
 `Surname` varchar(45) NOT NULL,
 `Password` varchar(45) NOT NULL,
 `Age` numeric NOT NULL,
 `TestResult` varchar(20) NOT NULL,
 `Address_Id` numeric NOT NULL,
 `Quarantine_Status` varchar(20) NOT NULL,
 PRIMARY KEY (`Person_Id`),
 FOREIGN KEY (`Address_Id`)
 REFERENCES `midterm`. `Address` (`Address_Id`)
);

CREATE TABLE `Doctor` (
 `Doctor_Id` numeric NOT NULL,
 `Reputation` varchar (45) NOT NULL,
 PRIMARY KEY (`Doctor_Id`)
);

CREATE TABLE `Patient` (
 `Patient_Id` numeric NOT NULL,
 `Status` varchar(45) NOT NULL,
 `Attendant_Id` numeric NOT NULL,
 PRIMARY KEY (`Patient_Id`),
 FOREIGN KEY (`Patient_Id`)
 REFERENCES `midterm`. `Person` (`Person_Id`),
 FOREIGN KEY (`Attendant_Id`)
 REFERENCES `midterm`. `Doctor` (`Doctor_Id`)
);

CREATE TABLE `Contacted` (
 `Contact_Id` numeric NOT NULL,
 `TestResult` varchar(45) NOT NULL,
 PRIMARY KEY (`Contact_Id`),
 FOREIGN KEY (`Contact_Id`)
 REFERENCES `midterm`. `Person` (`Person_Id`)
);

CREATE TABLE `HospitalRoom` (
 `Room_Id` numeric NOT NULL,
 `BedNumber` numeric NOT NULL,
 `RoomType` varchar(45) NOT NULL,
 PRIMARY KEY (`Room_Id`)
);

CREATE TABLE `Officer` (
 `Officer_Id` numeric NOT NULL,
 `OfficeName` varchar(45) NOT NULL,
 `OfficerPassword` varchar(45) NOT NULL,
 `OfficerRank` varchar(45) NOT NULL,
 PRIMARY KEY (`Officer_Id`),
 FOREIGN KEY (`Officer_Id`)
 REFERENCES `midterm`. `Person` (`Person_Id`)
);

CREATE TABLE `CaseReport` (
 `Report_Id` numeric NOT NULL,
 `NumberOfCases` numeric NOT NULL,
 `NumberOfUsedRooms` numeric NOT NULL,
 `NumberOfVaccinatedPeople` numeric NOT NULL,
 PRIMARY KEY (`Report_Id`)
);

CREATE TABLE `Vaccine` (
 `Vaccine_Id` numeric NOT NULL,
 `VaccineCount` numeric NOT NULL,
 `VaccineName` varchar(45) NOT NULL,
 `VaccineType` varchar(45) NOT NULL,
 PRIMARY KEY (`Vaccine_Id`)
);

CREATE TABLE `ContactedWith` (
 `Carrier_Id` int AUTO_INCREMENT ,
 `Patient_Id` numeric NOT NULL,
 `Contact_Id` numeric NOT NULL,
 `Date` varchar (20) NOT NULL,
 PRIMARY KEY (`Carrier_Id`) ,
 FOREIGN KEY (`Patient_Id`)
 REFERENCES `midterm`. `Patient` (`Patient_Id`),
 FOREIGN KEY (`Contact_Id`)
 REFERENCES `midterm`. `Contacted` (`Contact_Id`)
);


CREATE TABLE `HasCorona` (
 `Case_Id` int AUTO_INCREMENT,
 `Person_Id` numeric NOT NULL,
 `Patient_Id` numeric NOT NULL,
 `Date` varchar (20) NOT NULL,
 `CoronaVariant` varchar (20) NOT NULL,
 PRIMARY KEY (`Case_Id`),
 FOREIGN KEY (`Person_Id`)
 REFERENCES `midterm`. `Person` (`Person_Id`),
 FOREIGN KEY (`Patient_Id`)
 REFERENCES `midterm`. `Patient` (`Patient_Id`)
);

CREATE TABLE `IsVaccinated` (
 `Vaccination_Id` int AUTO_INCREMENT,
 `Person_Id` numeric NOT NULL,
 `Vaccine_Id` numeric NOT NULL,
 `Address_Id` numeric NOT NULL,
 `Date` varchar (20) NOT NULL,
 PRIMARY KEY (`Vaccination_Id`),
 FOREIGN KEY (`Person_Id`)
 REFERENCES `midterm`. `Person` (`Person_Id`),
 FOREIGN KEY (`Vaccine_Id`)
 REFERENCES `midterm`. `Vaccine` (`Vaccine_Id`),
 FOREIGN KEY (`Address_Id`)
 REFERENCES `midterm`. `Address` (`Address_Id`)
);

CREATE TABLE `CanPublish` (
 `Publish_Id` int AUTO_INCREMENT,
 `Officer_Id` numeric NOT NULL,
 `Report_Id` numeric NOT NULL,
 `Channel` varchar (45) NOT NULL,
 PRIMARY KEY (`Publish_Id`),
 FOREIGN KEY (`Officer_Id`)
 REFERENCES `midterm`. `Officer` (`Officer_Id`),
 FOREIGN KEY (`Report_Id`)
 REFERENCES `midterm`. `CaseReport` (`Report_Id`)
);

CREATE TABLE `StayingIn` (
 `Staying_Id` int AUTO_INCREMENT,
 `Room_Id` numeric NOT NULL,
 `Patient_Id` numeric NOT NULL,
 `StartingDate` varchar (45) NOT NULL,
 PRIMARY KEY (`Staying_Id`),
 FOREIGN KEY (`Room_Id`)
 REFERENCES `midterm`. `HospitalRoom` (`Room_Id`),
 FOREIGN KEY (`Patient_Id`)
 REFERENCES `midterm`. `Patient` (`Patient_Id`)
);

