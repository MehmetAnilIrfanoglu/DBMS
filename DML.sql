-- Insertion for citizen status codes 
insert into CitizenStatus values (0, "Healthy person");
insert into CitizenStatus values (1, "Patient stays in the home");
insert into CitizenStatus values (2, "Patient stays in the normal capacity of the hospital");
insert into CitizenStatus values (3, "Patient stays in the intensive care capacity of the hospital");
insert into CitizenStatus values (4, "Recovered person");
insert into CitizenStatus values (5, "Dead");

-- Insertion for city
insert into City values (6, "Ankara");
insert into City values (34, "Istanbul");
insert into City values (35, "Izmir");
insert into City values (38, "Kayseri");
insert into City values (44, "Malatya");

-- Insertion for workplace
insert into Workplace values (11, "Tail Restaurant", 10, 90658956505, 6);
insert into Workplace values (12, "Purple Restaurant", 75, 909856956505, 34);
insert into Workplace values (13, "Grey Hospital", 1256, 907686956505, 34);
insert into Workplace values (14, "Blue Hospital", 568, 906982956505, 35);
insert into Workplace values (15, "Pink Company", 75, 901236956505, 35);
insert into Workplace values (16, "Marble Company", 236, 907236956505, 38);
insert into Workplace values (17, "Yellow Vaccination Center", 21, 90569876505, 38);
insert into Workplace values (18, "Red Vaccination Center", 24, 90125986505, 44);
insert into Workplace values (19, "Orange Restaurant", 47, 899856956505, 34);
insert into Workplace values (20, "Black Company", 311, 891236956505, 34);

-- Insertion for citizen
insert into Citizen values ( 101, "Jack", "jfdhaskdjfhsadkf", 1650, "male", 905453115505, null, 34, 0);
insert into Citizen values ( 102, "John", "jfdhaskdjfhsadkf", 2650, "male", 905753156505, 13, 34, 0);
insert into Citizen values ( 103, "Michael", "jfdhaskdjfhsadkf", 6250, "male", 905453163505, null, 34, 0);
insert into Citizen values ( 104, "Elizabeth", "jfdhaskdjfhsadkf", 6550, "female", 905547115505, 13, 34, 0);
insert into Citizen values ( 105, "Scarlett", "jfdhaskdjfhsadkf", 6580, "female", 905453198505, 13, 34, 0);
insert into Citizen values ( 106, "Brad", "jfdhaskdjfhsadkf", 650, "male", 905454568505, null, 35, 0);
insert into Citizen values ( 107, "Elon", "jfdhaskdjfhsadkf", 6540, "male", 905453112359, 14, 35, 0);
insert into Citizen values ( 108, "Jodie", "jfdhaskdjfhsadkf", 8250, "female", 905233115505, null, 35, 0);
insert into Citizen values ( 109, "Anna", "jfdhaskdjfhsadkf", 5680, "female", 905455915505, 14, 35, 0);
insert into Citizen values ( 110, "Elena", "jfdhaskdjfhsadkf", 4250, "female", 905446525505, null, 35, 0);

insert into Citizen values ( 111, "Steve", "jfdhaskdjfhsadkf", 2890, "male", 905453458905, 11, 6, 1);
insert into Citizen values ( 112, "Franz", "jfdhaskdjfhsadkf", 1250, "male", 905451235505, 11, 6, 1);
insert into Citizen values ( 113, "Ahmet", "jfdhaskdjfhsadkf", 12550, "female", 905233114585, null, 34, 1);
insert into Citizen values ( 114, "Mehmet", "jfdhaskdjfhsadkf", 250, "female", 905233125986, null, 38, 1);
insert into Citizen values ( 115, "Salih", "jfdhaskdjfhsadkf", 850, "female", 905239658742, null, 44, 1);
insert into Citizen values ( 116, "Jack", "jfdhaskdjfhsadkf", 1650, "male", 895453115505, null, 6, 1);
insert into Citizen values ( 117, "John", "jfdhaskdjfhsadkf", 2250, "male", 895753156505, 12, 34, 1);
insert into Citizen values ( 118, "Michael", "jfdhaskdjfhsadkf", 6250, "male", 895453163505, null, 6, 1);
insert into Citizen values ( 119, "Elizabeth", "jfdhaskdjfhsadkf", 6550, "female", 895547115505, 12, 34, 1);
insert into Citizen values ( 120, "Scarlett", "jfdhaskdjfhsadkf", 6580, "female", 895453198505, 15, 35, 1);

insert into Citizen values ( 121, "Brad", "jfdhaskdjfhsadkf", 650, "male", 895454568505, 15, 35, 2);
insert into Citizen values ( 122, "Elon", "jfdhaskdjfhsadkf", 6540, "male", 895453112359, 15, 35, 2);
insert into Citizen values ( 123, "Jodie", "jfdhaskdjfhsadkf", 8250, "female", 895233115505, null, 35, 2);
insert into Citizen values ( 124, "Anna", "jfdhaskdjfhsadkf", 5680, "female", 895455915505, 16, 38, 2);
insert into Citizen values ( 125, "Elena", "jfdhaskdjfhsadkf", 4250, "female", 895446525505, 16, 38, 2);
insert into Citizen values ( 126, "Steve", "jfdhaskdjfhsadkf", 2890, "male", 895453458905, 17, 38, 2);
insert into Citizen values ( 127, "Franz", "jfdhaskdjfhsadkf", 1250, "male", 895451235505, 18, 44, 2);
insert into Citizen values ( 128, "Ahmet", "jfdhaskdjfhsadkf", 12550, "female", 895233114585, null, 35, 2);
insert into Citizen values ( 129, "Mehmet", "jfdhaskdjfhsadkf", 250, "female", 895233125986, null, 44, 2);
insert into Citizen values ( 130, "Salih", "jfdhaskdjfhsadkf", 850, "female", 895239658742, null, 44, 2);

insert into Citizen values ( 131, "Jack", "jfdhaskdjfhsadkf", 1650, "male", 885453115505, null, 35, 3);
insert into Citizen values ( 132, "John", "jfdhaskdjfhsadkf", 2650, "male", 885753156505, 11, 6, 3);
insert into Citizen values ( 133, "Michael", "jfdhaskdjfhsadkf", 6250, "male", 885453163505, null, 38, 3);
insert into Citizen values ( 134, "Elizabeth", "jfdhaskdjfhsadkf", 6550, "female", 885547115505, 11, 6, 3);
insert into Citizen values ( 135, "Scarlett", "jfdhaskdjfhsadkf", 6580, "female", 885453198505, 12, 34, 3);
insert into Citizen values ( 136, "Brad", "jfdhaskdjfhsadkf", 650, "male", 885454568505, 12, 34, 3);
insert into Citizen values ( 137, "Elon", "jfdhaskdjfhsadkf", 6540, "male", 885453112359, 15, 35, 3);
insert into Citizen values ( 138, "Jodie", "jfdhaskdjfhsadkf", 8250, "female", 885233115505, null, 34, 3);
insert into Citizen values ( 139, "Anna", "jfdhaskdjfhsadkf", 5680, "female", 885455915505, 15, 35, 3);
insert into Citizen values ( 140, "Elena", "jfdhaskdjfhsadkf", 4250, "female", 885446525505, 16, 38, 3);

insert into Citizen values ( 141, "Steve", "jfdhaskdjfhsadkf", 2890, "male", 885453458905, 16, 38, 4);
insert into Citizen values ( 142, "Franz", "jfdhaskdjfhsadkf", 1250, "male", 885451235505, 17, 38, 4);
insert into Citizen values ( 143, "Ahmet", "jfdhaskdjfhsadkf", 12550, "female", 885233114585, null, 6, 4);
insert into Citizen values ( 144, "Mehmet", "jfdhaskdjfhsadkf", 250, "female", 885233125986, null, 6, 4);
insert into Citizen values ( 145, "Salih", "jfdhaskdjfhsadkf", 850, "female", 885239658742, null, 35, 4);
insert into Citizen values ( 146, "Steve", "jfdhaskdjfhsadkf", 2890, "male", 875453458905, 17, 38, 4);
insert into Citizen values ( 147, "Franz", "jfdhaskdjfhsadkf", 1250, "male", 875451235505, 18, 44, 4);
insert into Citizen values ( 148, "Ahmet", "jfdhaskdjfhsadkf", 12550, "female", 875233114585, null, 35, 4);
insert into Citizen values ( 149, "Mehmet", "jfdhaskdjfhsadkf", 250, "female", 875233125986, null, 44, 4);
insert into Citizen values ( 150, "Salih", "jfdhaskdjfhsadkf", 850, "female", 875239658742, null, 34, 4);

insert into Citizen values ( 151, "Steve", "jfdhaskdjfhsadkf", 2890, "male", 865453458905, 18, 44, 5);
insert into Citizen values ( 152, "Franz", "jfdhaskdjfhsadkf", 1250, "male", 865451235505, 12, 34, 5);
insert into Citizen values ( 153, "Ahmet", "jfdhaskdjfhsadkf", 12550, "female", 865233114585, null, 35, 5);
insert into Citizen values ( 154, "Mehmet", "jfdhaskdjfhsadkf", 250, "female", 865233125986, null, 35, 5);
insert into Citizen values ( 155, "Salih", "jfdhaskdjfhsadkf", 850, "female", 865239658742, null, 44, 5);
insert into Citizen values ( 156, "Steve", "jfdhaskdjfhsadkf", 2890, "male", 855453458905, 17, 38, 5);
insert into Citizen values ( 157, "Franz", "jfdhaskdjfhsadkf", 1250, "male", 855451235505, 11, 6, 5);
insert into Citizen values ( 158, "Ahmet", "jfdhaskdjfhsadkf", 12550, "female", 855233114585, null, 34, 5);
insert into Citizen values ( 159, "Mehmet", "jfdhaskdjfhsadkf", 250, "female", 855233125986, null, 6, 5);
insert into Citizen values ( 160, "Salih", "jfdhaskdjfhsadkf", 850, "female", 855239658742, 15, 35, 5);

-- Insertion for doctor
insert into Doctor values (100, 102);
insert into Doctor values (200, 104);
insert into Doctor values (300, 105);
insert into Doctor values (400, 107);
insert into Doctor values (500, 109);

-- Insertion for GOfficeWorker
insert into GOfficeWorker values (10, 101, 1);
insert into GOfficeWorker values (20, 103, 2);
insert into GOfficeWorker values (30, 106, 3);
insert into GOfficeWorker values (40, 108, 4);
insert into GOfficeWorker values (50, 110, 5);

-- Insertion for hospital
insert into Hospital (workplace_id, normal_capacity, intensive_care_capacity) values (13, 254, 86);
insert into Hospital (workplace_id, normal_capacity, intensive_care_capacity) values (14, 568, 186);

-- Insertion for company
insert into Company (workplace_id, office_size) values (15, 125);
insert into Company (workplace_id, office_size) values (16, 345);
insert into Company (workplace_id, office_size) values (20, 1345);

-- Insertion for restaurant
insert into Restaurant (workplace_id, capacity) values (11, 45);
insert into Restaurant (workplace_id, capacity) values (12, 121);
insert into Restaurant (workplace_id, capacity) values (19, 46);

-- Insertion for vaccination center
insert into VaccinationCenter (workplace_id, vac_capacity) values (17, 450);
insert into VaccinationCenter (workplace_id, vac_capacity) values (18, 121);

-- Insertion for vaccine
insert into Vaccine values (1000, "Sinovac");
insert into Vaccine values (2000, "Biontech");
insert into Vaccine values (3000, "Pfizer");
insert into Vaccine values (4000, "Astra Zeneca");

-- Insertion for vaccine inventory
insert into VaccineInventory (vac_center_id, vaccine_id, quantity) values (17, 1000, 1250);
insert into VaccineInventory (vac_center_id, vaccine_id, quantity) values (17, 3000, 5650);
insert into VaccineInventory (vac_center_id, vaccine_id, quantity) values (17, 4000, 1890);
insert into VaccineInventory (vac_center_id, vaccine_id, quantity) values (17, 2000, 7589);
insert into VaccineInventory (vac_center_id, vaccine_id, quantity) values (18, 1000, 568);
insert into VaccineInventory (vac_center_id, vaccine_id, quantity) values (18, 3000, 7589);

-- Insertion for vaccination
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (101, 17, 4000, 100, "2021-03-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (101, 17, 4000, 100, "2021-02-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (103, 17, 1000, 200, "2021-01-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (108, 17, 1000, 200, "2021-03-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (108, 17, 1000, 200, "2021-04-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (112, 17, 2000, 100, "2021-05-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (115, 17, 2000, 400, "2021-01-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (117, 17, 3000, 200, "2021-01-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (120, 17, 4000, 100, "2021-02-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (121, 17, 1000, 200, "2021-03-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (124, 17, 2000, 100, "2021-05-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (125, 17, 3000, 200, "2021-06-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (126, 18, 4000, 100, "2021-07-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (134, 18, 1000, 400, "2021-08-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (137, 18, 1000, 200, "2021-09-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (134, 18, 1000, 300, "2021-03-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (147, 18, 2000, 100, "2021-03-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (155, 18, 3000, 300, "2021-12-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (156, 18, 1000, 300, "2021-07-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (157, 18, 1000, 400, "2021-10-17");
insert into Vaccination (ssn, vac_center_id, vaccine_id, doctor_id, vac_date) values (158, 18, 2000, 100, "2021-11-17");

-- Insertion for Test
insert into Test (ssn, doctor_id, result, test_date) values (111, 100, true, "2021-04-17");
insert into Test (ssn, doctor_id, result, test_date) values (113, 200, true, "2021-04-17");
insert into Test (ssn, doctor_id, result, test_date) values (115, 300, false, "2021-04-17");
insert into Test (ssn, doctor_id, result, test_date) values (122, 400, false, "2021-04-17");
insert into Test (ssn, doctor_id, result, test_date) values (128, 100, true, "2021-04-17");
insert into Test (ssn, doctor_id, result, test_date) values (129, 200, true, "2021-04-17");
insert into Test (ssn, doctor_id, result, test_date) values (133, 300, false, "2021-04-17");
insert into Test (ssn, doctor_id, result, test_date) values (135, 400, false, "2021-04-17");
insert into Test (ssn, doctor_id, result, test_date) values (136, 100, true, "2021-04-17");
insert into Test (ssn, doctor_id, result, test_date) values (144, 200, true, "2021-04-17");
insert into Test (ssn, doctor_id, result, test_date) values (145, 300, false, "2021-04-17");
insert into Test (ssn, doctor_id, result, test_date) values (148, 500, false, "2021-03-17");
insert into Test (ssn, doctor_id, result, test_date) values (156, 100, false, "2021-03-17");
insert into Test (ssn, doctor_id, result, test_date) values (157, 200, false, "2021-03-17");
insert into Test (ssn, doctor_id, result, test_date) values (158, 300, false, "2021-03-17");
insert into Test (ssn, doctor_id, result, test_date) values (159, 500, true, "2021-03-17");

-- Insertion for daily statistic
insert into DailyStatistic (worker_id, patient_number, recovered_number, death_number, vac_number, test_number, statistic_date) values (10, 28562, 12252, 304, 17452, 13458, "2021-04-15");
insert into DailyStatistic (worker_id, patient_number, recovered_number, death_number, vac_number, test_number, statistic_date) values (30, 32562, 16892, 312, 16952, 19648, "2021-04-16");
insert into DailyStatistic (worker_id, patient_number, recovered_number, death_number, vac_number, test_number, statistic_date) values (50, 23662, 12352, 376, 18552, 17548, "2021-04-17");

-- Insertion for restriction
insert into Restriction values (1312, 20, "During the month of May 2021, there will be a restriction of going out between 9pm and 5am.", "2021-03-30", false);
insert into Restriction values (1313, 30, "Buying everything except essential life goods are prohibited.", "2021-04-07", false);
insert into Restriction values (1314, 20, "Citizens who live in 30 big city and Zonguldak cannot go out at the weekends.", "2021-04-11", false);
insert into Restriction values (1315, 50, "Citizens working in the hospital are exempt from the restritctions.", "2021-04-15", true);
insert into Restriction values (1316, 40, "Citizens working in the touristic places can continue to work.", "2021-04-17", false);

-- Insertion for purchases
insert into Purchases (vaccine_id, vac_center_id, quantity, price, purchase_date) values (1000, 17, 1250, 20, "2021-02-17");
insert into Purchases (vaccine_id, vac_center_id, quantity, price, purchase_date) values (2000, 18, 2550, 40, "2021-02-17");
insert into Purchases (vaccine_id, vac_center_id, quantity, price, purchase_date) values (3000, 17, 4550, 30, "2021-02-17");
insert into Purchases (vaccine_id, vac_center_id, quantity, price, purchase_date) values (4000, 17, 4550, 30, "2021-02-17");
insert into Purchases (vaccine_id, vac_center_id, quantity, price, purchase_date) values (1000, 17, 1250, 20, "2021-03-17");
insert into Purchases (vaccine_id, vac_center_id, quantity, price, purchase_date) values (2000, 18, 2550, 40, "2021-03-17");
insert into Purchases (vaccine_id, vac_center_id, quantity, price, purchase_date) values (3000, 17, 4550, 30, "2021-03-17");
insert into Purchases (vaccine_id, vac_center_id, quantity, price, purchase_date) values (4000, 17, 4550, 30, "2021-03-17");
insert into Purchases (vaccine_id, vac_center_id, quantity, price, purchase_date) values (1000, 17, 1250, 20, "2021-04-17");
insert into Purchases (vaccine_id, vac_center_id, quantity, price, purchase_date) values (2000, 18, 2550, 40, "2021-04-17");
insert into Purchases (vaccine_id, vac_center_id, quantity, price, purchase_date) values (3000, 18, 4550, 30, "2021-04-17");
insert into Purchases (vaccine_id, vac_center_id, quantity, price, purchase_date) values (4000, 18, 4550, 30, "2021-04-17");

-- Insertion for financial aid
insert into FinancialAid values (1254, "First Citizen FA Package", 300);
insert into FinancialAid values (1754, "Second Citizen FA Package", 400);
insert into FinancialAid values (1464, "First Wrokplace FA Package", 1200);
insert into FinancialAid values (1784, "Second Workplace FA Package", 1500);

-- Insertion for citizen financial aid
insert into CitizenFA (fa_id, min_salary, max_salary) values (1254, 1700, 2300);
insert into CitizenFA (fa_id, min_salary, max_salary) values (1754, 2301, 2900);

-- Insertion for workplace financial aid
insert into WorkplaceFA (fa_id, min_employee_number, max_employee_number) values (1464, 6, 25);
insert into WorkplaceFA (fa_id, min_employee_number, max_employee_number) values (1784, 26, 75);

-- Insertion for citizen financial aid application
insert into CitizenFAApplication (fa_id, ssn, result) values (1254, 117, true);
insert into CitizenFAApplication (fa_id, ssn, result) values (1754, 141, false);
insert into CitizenFAApplication (fa_id, ssn, result) values (1254, 125, true);

-- Insertion for workplace financial aid application
insert into WorkplaceFAApplication (fa_id, workplace_id, result) values (1464, 11, false);
insert into WorkplaceFAApplication (fa_id, workplace_id, result) values (1784, 12, true);
insert into WorkplaceFAApplication (fa_id, workplace_id, result) values (1464, 16, false);

-- Insertion for dead
insert into Dead (ssn, death_date) values (151, "2021-04-17");
insert into Dead (ssn, death_date) values (152, "2021-04-17");
insert into Dead (ssn, death_date) values (153, "2021-04-17");
insert into Dead (ssn, death_date) values (154, "2021-04-17");
insert into Dead (ssn, death_date) values (155, "2021-04-17");
insert into Dead (ssn, death_date) values (156, "2021-04-17");
insert into Dead (ssn, death_date) values (157, "2021-04-17");
insert into Dead (ssn, death_date) values (158, "2021-04-17");
insert into Dead (ssn, death_date) values (159, "2021-04-17");
insert into Dead (ssn, death_date) values (160, "2021-04-17");

-- Insertion for Patient
insert into Patient (ssn, hospital_id, ill_date) values (111, 13, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (112, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (113, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (114, 13, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (115, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (116, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (117, 13, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (118, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (119, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (120, 13, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (121, 13, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (122, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (123, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (124, 13, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (125, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (126, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (127, 13, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (128, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (129, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (130, 13, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (131, 13, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (132, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (133, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (134, 13, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (135, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (136, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (137, 13, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (138, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (139, 14, "2021-04-17");
insert into Patient (ssn, hospital_id, ill_date) values (140, 14, "2021-04-21");
insert into Patient (ssn, hospital_id, ill_date) values (141, 13, "2021-02-20");
insert into Patient (ssn, hospital_id, ill_date) values (142, 14, "2021-02-19");
insert into Patient (ssn, hospital_id, ill_date) values (143, 14, "2021-02-18");
insert into Patient (ssn, hospital_id, ill_date) values (144, 13, "2021-01-17");
insert into Patient (ssn, hospital_id, ill_date) values (145, 14, "2021-01-16");
insert into Patient (ssn, hospital_id, ill_date) values (146, 14, "2021-01-15");
insert into Patient (ssn, hospital_id, ill_date) values (147, 13, "2021-02-13");
insert into Patient (ssn, hospital_id, ill_date) values (148, 14, "2021-02-12");
insert into Patient (ssn, hospital_id, ill_date) values (149, 14, "2021-01-11");
insert into Patient (ssn, hospital_id, ill_date) values (150, 13, "2021-01-10");
insert into Patient (ssn, hospital_id, ill_date) values (151, 13, "2021-03-17");
insert into Patient (ssn, hospital_id, ill_date) values (152, 14, "2021-03-17");
insert into Patient (ssn, hospital_id, ill_date) values (153, 14, "2021-03-17");
insert into Patient (ssn, hospital_id, ill_date) values (154, 13, "2021-03-17");
insert into Patient (ssn, hospital_id, ill_date) values (155, 14, "2021-03-17");
insert into Patient (ssn, hospital_id, ill_date) values (156, 14, "2021-03-17");
insert into Patient (ssn, hospital_id, ill_date) values (157, 13, "2021-03-17");
insert into Patient (ssn, hospital_id, ill_date) values (158, 14, "2021-03-17");
insert into Patient (ssn, hospital_id, ill_date) values (159, 14, "2021-03-17");
insert into Patient (ssn, hospital_id, ill_date) values (160, 13, "2021-03-17");

-- Insertion for Recovered
insert into Recovered (ssn, recovery_date) values (141, "2021-04-17");
insert into Recovered (ssn, recovery_date) values (142, "2021-04-17");
insert into Recovered (ssn, recovery_date) values (143, "2021-04-17");
insert into Recovered (ssn, recovery_date) values (144, "2021-04-17");
insert into Recovered (ssn, recovery_date) values (145, "2021-04-17");
insert into Recovered (ssn, recovery_date) values (146, "2021-04-17");
insert into Recovered (ssn, recovery_date) values (147, "2021-04-17");
insert into Recovered (ssn, recovery_date) values (148, "2021-04-17");
insert into Recovered (ssn, recovery_date) values (149, "2021-04-17");
insert into Recovered (ssn, recovery_date) values (150, "2021-04-17");
