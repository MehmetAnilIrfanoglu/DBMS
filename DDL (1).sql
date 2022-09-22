drop database emrullah;
create database emrullah;
use emrullah;

create table CitizenStatus
	(status_id		numeric(1) NOT NULL, 
	 status_desc	varchar(255) NOT NULL, 
	 primary key (status_id)
	);

create table City
	(city_id                numeric(2) NOT NULL, 
     city_name              varchar(99) NOT NULL,
     primary key (city_id)
	); 

create table Workplace
	(workplace_id   numeric(20) NOT NULL, 
     place_name	    varchar(255) NOT NULL,
     emp_number     numeric(20) NOT NULL, 
     phone          numeric(12) NOT NULL,
     city_id        numeric(2), 
	 primary key (workplace_id),
     foreign key (city_id) references City (city_id)
	);

create table Citizen
	(ssn		    numeric(20) NOT NULL, 
     citizen_name   varchar(15) NOT NULL, 
     password_hash  varchar(255) NOT NULL,
     salary         numeric(12,2) check (salary > -1) NOT NULL,
     gender         varchar(10) NOT NULL,
     phone          numeric(12) NOT NULL,
     workplace_id   numeric(20),
     city_id        numeric(2),
	 status_id      numeric(1) NOT NULL,
	 primary key (ssn),
     foreign key (status_id) references CitizenStatus (status_id),
     foreign key (city_id) references City (city_id),
	 foreign key (workplace_id) references Workplace (workplace_id)
	);

create table Doctor
	(doctor_id	    numeric(20) NOT NULL, 
     ssn            numeric(20) NOT NULL, 
	 primary key (doctor_id),
     foreign key (ssn) references Citizen (ssn)
	);  

create table GOfficeWorker
	(worker_id	    numeric(20) NOT NULL, 
     ssn            numeric(20) NOT NULL, 
     auth_level     numeric(1) NOT NULL, 
	 primary key (worker_id),
     foreign key (ssn) references Citizen (ssn)
	);

create table Hospital
	(ID			                int NOT NULL AUTO_INCREMENT,
     workplace_id               numeric(20) NOT NULL, 
     normal_capacity            numeric(20) NOT NULL, 
     intensive_care_capacity    numeric(12) NOT NULL, 
     primary key (ID),
	 foreign key (workplace_id) references Workplace (workplace_id)
	);

create table Company
	(ID			            int NOT NULL AUTO_INCREMENT,
     workplace_id           numeric(20) NOT NULL, 
     office_size            numeric(20) NOT NULL, 
     primary key (ID),
	 foreign key (workplace_id) references Workplace (workplace_id)
	);

create table Restaurant
	(ID			            int NOT NULL AUTO_INCREMENT,
     workplace_id           numeric(20) NOT NULL, 
     capacity               numeric(5) NOT NULL, 
     primary key (ID),
	 foreign key (workplace_id) references Workplace (workplace_id)
	);

create table VaccinationCenter
	(ID                     int NOT NULL AUTO_INCREMENT,
     workplace_id           numeric(20) NOT NULL, 
     vac_capacity           numeric(20) NOT NULL,
     primary key (ID),
     foreign key (workplace_id) references Workplace (workplace_id)
	); 

create table Vaccine
	(vaccine_id             numeric(20) NOT NULL, 
     vac_name               varchar(99) NOT NULL,
     primary key (vaccine_id)
	);   

create table VaccineInventory
	(ID                     int NOT NULL AUTO_INCREMENT,
     vac_center_id          numeric(20) NOT NULL,
     vaccine_id             numeric(20) NOT NULL, 
     quantity               numeric(20) NOT NULL,
     primary key (ID),
     foreign key (vac_center_id) references VaccinationCenter (workplace_id),
     foreign key (vaccine_id) references Vaccine (vaccine_id)
	);

create table Vaccination
	(ID                     int NOT NULL AUTO_INCREMENT,
     ssn	                numeric(20) NOT NULL, 
     vac_center_id          numeric(20) NOT NULL,
     vaccine_id             numeric(20) NOT NULL,
     doctor_id              numeric(20) NOT NULL,
     vac_date               date NOT NULL,
     primary key (ID),
     foreign key (ssn) references Citizen (ssn),
     foreign key (vac_center_id) references VaccinationCenter (workplace_id),
     foreign key (doctor_id) references Doctor (doctor_id),
     foreign key (vaccine_id) references Vaccine (vaccine_id)
	); 

create table Test
	(test_id                int NOT NULL AUTO_INCREMENT,
     ssn	                numeric(20) NOT NULL, 
     doctor_id              numeric(20) NOT NULL,
     result                 boolean NOT NULL,
     test_date              date NOT NULL,
     primary key (test_id),
     foreign key (ssn) references Citizen (ssn),
     foreign key (doctor_id) references Doctor (doctor_id)
	); 

create table DailyStatistic
	(statistic_id                  int NOT NULL AUTO_INCREMENT,
     worker_id                     numeric(20) NOT NULL,
     patient_number	               numeric(20) NOT NULL, 
     recovered_number	           numeric(20) NOT NULL,
     death_number	               numeric(20) NOT NULL,
     vac_number	                   numeric(20) NOT NULL,
     test_number	               numeric(20) NOT NULL,
     statistic_date                date,
     primary key (statistic_id),
     foreign key (worker_id) references GOfficeWorker (worker_id)
	); 

create table Purchases
	(purchase_id                    int NOT NULL AUTO_INCREMENT, 
     vaccine_id	                    numeric(20) NOT NULL, 
     vac_center_id                  numeric(20) NOT NULL,
     quantity                       numeric(20) NOT NULL,
     price                          numeric(20) NOT NULL,
     purchase_date                  date NOT NULL,
     primary key (purchase_id),
     foreign key (vac_center_id) references VaccinationCenter (workplace_id),
     foreign key (vaccine_id) references Vaccine (vaccine_id)
	);

create table Restriction
	(restriction_id                 numeric(20) NOT NULL,
     worker_id                      numeric(20) NOT NULL,
     detail    	                    varchar(255) NOT NULL,
     publish_date                   date NOT NULL,
	 is_need_permission             boolean NOT NULL,
     primary key (restriction_id),
     foreign key (worker_id) references GOfficeWorker (worker_id)
	);  

create table FinancialAid
	(fa_id                          numeric(20) NOT NULL,
     fa_name    	                varchar(255) NOT NULL,
	 aid_amount                     numeric(20) NOT NULL,
     primary key (fa_id)
	);  

create table CitizenFA
	(ID                         int NOT NULL AUTO_INCREMENT,
     fa_id                      numeric(20) NOT NULL,
     min_salary                 numeric(6) NOT NULL, 
     max_salary                 numeric(6) NOT NULL,
     primary key (ID),
     foreign key (fa_id) references FinancialAid (fa_id)
	);

create table WorkplaceFA
	(ID                         int NOT NULL AUTO_INCREMENT,
     fa_id                      numeric(20) NOT NULL,
     min_employee_number        numeric(6) NOT NULL, 
     max_employee_number        numeric(6) NOT NULL,
     primary key (ID),
     foreign key (fa_id) references FinancialAid (fa_id)
	);

create table CitizenFAApplication
	(ID                         int NOT NULL AUTO_INCREMENT,
     fa_id                      numeric(20) NOT NULL,
     ssn                        numeric(20) NOT NULL,
     result                     boolean, 
     primary key (ID),
     foreign key (fa_id) references FinancialAid (fa_id),
     foreign key (ssn) references Citizen (ssn)
	);

create table WorkplaceFAApplication
	(ID                         int NOT NULL AUTO_INCREMENT,
     fa_id                      numeric(20) NOT NULL,
     workplace_id               numeric(20) NOT NULL,
     result                     boolean, 
     primary key (ID),
     foreign key (fa_id) references FinancialAid (fa_id),
     foreign key (workplace_id) references Workplace (workplace_id)
	);

create table Dead
	(ID                         int NOT NULL AUTO_INCREMENT,
     ssn                        numeric(20) NOT NULL,
     death_date                 date NOT NULL,
     primary key (ID),
     foreign key (ssn) references Citizen (ssn)
	);

create table Patient
	(ID                         int NOT NULL AUTO_INCREMENT,
     ssn                        numeric(20) NOT NULL,
     hospital_id                numeric(20),
     ill_date                   date NOT NULL,
     primary key (ID),
     foreign key (ssn) references Citizen (ssn),
     foreign key (hospital_id) references Hospital (workplace_id)
	);

create table Recovered
	(ID                         int NOT NULL AUTO_INCREMENT,
     ssn                        numeric(20) NOT NULL,
     recovery_date              date NOT NULL,
     primary key (ID),
     foreign key (ssn) references Citizen (ssn)
	);