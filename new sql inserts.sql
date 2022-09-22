INSERT INTO address VALUES (1,"Rize","Çayeli");
INSERT INTO address VALUES (2,"Kayseri","Kocasinan");
INSERT INTO address VALUES (3,"Erzurum","Oltu");
INSERT INTO address VALUES (4,"Samsun","Bafra");
INSERT INTO address VALUES (5,"Trabzon","Of");

INSERT INTO person VALUES (1,"Anıl","irfanoğlu","123",20,"negative",1,"no");
INSERT INTO person VALUES (2,"Ali","Yılmaz","456",25,"unknown",3,"no");
INSERT INTO person VALUES (3,"Kasım","Yıldız","pass",36,"positive",5,"yes");
INSERT INTO person VALUES (4,"Cemre","Kalender","word",22,"positive",1,"yes");
INSERT INTO person VALUES (5,"Ahmet","Sezer","asdf",44,"positive",4,"no");

INSERT INTO doctor VALUES (5,"Cardiolog");

INSERT INTO officer VALUES (1,"Healthcare HQ","admin","Head of Department");

INSERT INTO patient VALUES (3,"alive",5);
INSERT INTO patient VALUES (4,"alive",5);

INSERT INTO hascorona VALUES (1,3,3,"08/05/2021","england");
INSERT INTO hascorona VALUES (2,4,4,"06/05/2021","original");

INSERT INTO hospitalroom VALUES (1,1,"intensive care");
INSERT INTO hospitalroom VALUES (2,1,"normal unit");
INSERT INTO hospitalroom VALUES (3,1,"intensive care");

INSERT INTO stayingin VALUES (1,1,3,"05/05/2021");
INSERT INTO stayingin VALUES (2,2,4,"04/05/2021");

INSERT INTO vaccine VALUES (1,100,"Sinovac","inactive");
INSERT INTO vaccine VALUES (2,100,"Biontech","vector");
INSERT INTO vaccine VALUES (3,100,"Astrazeneca","inactive");
INSERT INTO isvaccinated VALUES (1,3,1,4,"08/05/2021");
INSERT INTO isvaccinated VALUES (2,4,3,4,"08/05/2021");
INSERT INTO isvaccinated VALUES (3,1,2,5,"08/05/2021");

INSERT INTO contacted VALUES (2,"negative");

INSERT INTO contactedwith VALUES (1,3,2,"08/05/2021");

INSERT INTO casereport VALUES (1,2,2,3);

INSERT INTO canpublish VALUES (1,1,1,"Television");
