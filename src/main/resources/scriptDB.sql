drop table Geek if exists cascade;
drop table Interet if exists cascade;
drop table Geek_Interet if exists cascade;
drop sequence geek_seq if exists;
drop sequence interet_seq if exists;

Create Table Geek (
	id 		numeric not null,
	nom 	varchar(25) not null,	
	prenom 	varchar(25) not null,
	mail 	varchar(60) not null,
	sexe 	varchar(10) not null,
	primary key (id)
);

Create table Interet (
	id 		numeric not null,
	libelle varchar(100) not null,
	primary key (id)
);

Create table Geek_Interet (
	id_geek numeric not null,
	id_interet numeric not null,
	primary key (id_geek, id_interet),
	foreign key (id_geek) references Geek(id),
	foreign key (id_interet) references Interet(id)
);


create sequence geek_seq start with 1000;
create sequence interet_seq start with 1000;

INSERT INTO Geek (id,nom,prenom,mail,sexe) VALUES (1,'Mcintosh','Frances','magna.Praesent.interdum@Nullamvitae.ca','Femme'),(2,'Molina','Maile','placerat.orci@nonenim.edu','Femme'),(3,'Reese','Craig','Morbi.neque.tellus@sedhendrerita.co.uk','Homme'),(4,'Grant','Althea','Fusce.diam@interdumfeugiatSed.net','Homme'),(5,'Mueller','September','non.justo@ornare.com','Homme'),(6,'Goff','Jerome','laoreet.lectus@magna.ca','Femme'),(7,'Johnston','Deborah','magnis.dis@sapienmolestie.ca','Femme'),(8,'Parks','Heather','tempor@euismodmauriseu.com','Femme'),(9,'Park','Alexa','Ut.tincidunt@Vivamuseuismodurna.org','Femme'),(10,'Ross','Ferdinand','turpis.In.condimentum@magnisdis.net','Homme');
INSERT INTO Geek (id,nom,prenom,mail,sexe) VALUES (11,'Hanson','Lillian','leo@egestas.ca','Femme'),(12,'Wilkinson','Hillary','arcu.Vestibulum@facilisismagnatellus.edu','Femme'),(13,'Kerr','Jennifer','dui.semper.et@elit.ca','Homme'),(14,'Shelton','Shelly','id.erat@auctorquis.org','Homme'),(15,'Dalton','Rhiannon','lacinia.Sed.congue@antebibendum.org','Homme'),(16,'Lester','Harlan','dignissim.tempor.arcu@nullaIntegerurna.edu','Homme'),(17,'Burris','Brock','vulputate.eu@amifringilla.com','Femme'),(18,'Hill','Gloria','id@auctorvelit.edu','Femme'),(19,'Carter','Adele','Duis.at.lacus@eunullaat.co.uk','Femme'),(20,'Fox','Nelle','Proin.ultrices.Duis@dictum.com','Femme');
INSERT INTO Geek (id,nom,prenom,mail,sexe) VALUES (21,'Lyons','Simone','Pellentesque@tristique.co.uk','Homme'),(22,'Gallegos','Dillon','montes.nascetur.ridiculus@Maurisutquam.org','Homme'),(23,'Talley','Giacomo','blandit.mattis@ultricies.ca','Femme'),(24,'Watkins','Jordan','ipsum.primis@diam.org','Homme'),(25,'Massey','Rachel','Phasellus.elit.pede@ultricesposuerecubilia.com','Homme'),(26,'West','Stone','mattis.ornare@arcuSed.edu','Femme'),(27,'Wilder','Cleo','elit.pretium@ante.edu','Homme'),(28,'Paul','Hedwig','odio.sagittis@Duis.co.uk','Homme'),(29,'Austin','Anjolie','amet.ante@litora.co.uk','Femme'),(30,'Best','Emerson','sem@est.edu','Homme');
INSERT INTO Geek (id,nom,prenom,mail,sexe) VALUES (31,'Kelly','Susan','tempor@interdum.co.uk','Homme'),(32,'Nolan','Sylvia','ligula@Lorem.ca','Homme'),(33,'Mills','Emmanuel','Nam.consequat@mollis.com','Femme'),(34,'Strong','Carl','Donec.feugiat@Duis.edu','Homme'),(35,'Lynch','Raya','ipsum@Namtempor.edu','Homme'),(36,'Navarro','Claire','dictum@Nunc.ca','Femme'),(37,'Cash','Meredith','Praesent.luctus.Curabitur@Inlorem.co.uk','Femme'),(38,'Erickson','Malcolm','non.enim@vitaevelitegestas.co.uk','Homme'),(39,'Wolf','Cairo','dictum.cursus@Quisquevarius.net','Femme'),(40,'Romero','Armand','ullamcorper.magna.Sed@tempor.org','Homme');
INSERT INTO Geek (id,nom,prenom,mail,sexe) VALUES (41,'Pate','Camilla','aliquet.Proin@ipsumDonecsollicitudin.org','Homme'),(42,'Bradshaw','Nathaniel','elit@risus.co.uk','Homme'),(43,'Keith','Hyacinth','nec.euismod@metus.edu','Femme'),(44,'Bell','Hanna','dolor@rhoncusNullam.com','Femme'),(45,'Webb','Cherokee','lectus@incursus.org','Homme'),(46,'Suarez','Odette','Duis.risus.odio@lectusasollicitudin.edu','Homme'),(47,'Fletcher','Brittany','Suspendisse@lobortisquispede.ca','Femme'),(48,'Goodwin','Wilma','non.lacinia@nequeNullam.com','Femme'),(49,'Moody','Zena','neque.tellus.imperdiet@mollisdui.edu','Homme'),(50,'Frederick','Hilda','blandit@ullamcorper.org','Femme');
INSERT INTO Geek (id,nom,prenom,mail,sexe) VALUES (51,'England','Conan','ipsum.cursus@nisisemsemper.ca','Femme'),(52,'Bird','Whilemina','Nullam@penatibus.net','Femme'),(53,'Levine','Imani','feugiat.nec@mattis.net','Femme'),(54,'Miles','Holly','elit.pretium@vellectusCum.net','Homme'),(55,'Vega','Carol','felis.Nulla@eu.edu','Femme'),(56,'Wells','Aristotle','erat.Sed.nunc@eget.org','Homme'),(57,'Garcia','Finn','malesuada.augue@nisi.ca','Homme'),(58,'Haley','Justin','arcu.iaculis@nisinibhlacinia.ca','Homme'),(59,'Reynolds','Rhiannon','et.libero.Proin@mifelis.edu','Homme'),(60,'Mayer','Brynne','placerat.eget.venenatis@egetvarius.com','Femme');
INSERT INTO Geek (id,nom,prenom,mail,sexe) VALUES (61,'Clarke','Rhiannon','Aliquam.nec.enim@arcueuodio.com','Homme'),(62,'Tran','Cameron','mauris.blandit@pharetraut.co.uk','Homme'),(63,'Snyder','Whilemina','In@Duismienim.com','Homme'),(64,'Luna','Kelsie','dolor.Nulla.semper@placeratCrasdictum.org','Homme'),(65,'Ramsey','Sade','erat.eget.tincidunt@eget.ca','Homme'),(66,'Hamilton','Xaviera','sed.dictum@MorbivehiculaPellentesque.edu','Homme'),(67,'Mcintosh','Patrick','metus@duiquisaccumsan.edu','Femme'),(68,'Sosa','Aurelia','ut@aliquetsem.co.uk','Homme'),(69,'Harrington','Stella','malesuada.augue@lectus.net','Femme'),(70,'Daniels','Oprah','luctus@venenatisvelfaucibus.co.uk','Femme');
INSERT INTO Geek (id,nom,prenom,mail,sexe) VALUES (71,'Blake','Camille','sem@eleifend.org','Homme'),(72,'Preston','Carl','nisi.nibh@lobortisultricesVivamus.ca','Femme'),(73,'Pollard','Shelly','ac@tellusAenean.org','Femme'),(74,'Wallace','Castor','sit@congue.edu','Homme'),(75,'Blevins','Regan','egestas.Fusce@loremvitaeodio.net','Homme'),(76,'Kane','Malik','rhoncus.Nullam@elit.net','Femme'),(77,'Wolf','Vera','hymenaeos.Mauris@porttitorinterdum.net','Femme'),(78,'Wyatt','Piper','congue.turpis.In@musDonec.com','Homme'),(79,'Wolf','Anthony','egestas.lacinia@ipsum.co.uk','Femme'),(80,'Clements','Savannah','luctus.sit.amet@egetnisidictum.ca','Femme');
INSERT INTO Geek (id,nom,prenom,mail,sexe) VALUES (81,'Buchanan','Rose','dolor@porttitorerosnec.co.uk','Femme'),(82,'Bean','Baker','bibendum@diamPellentesquehabitant.co.uk','Homme'),(83,'Mayer','Raja','Duis.ac.arcu@Donecdignissimmagna.edu','Homme'),(84,'Garza','Ori','vitae.sodales@Aeneangravida.ca','Femme'),(85,'Bond','Walker','a@nonduinec.co.uk','Femme'),(86,'Benton','Kirby','Sed.diam@sitametmassa.co.uk','Homme'),(87,'Craft','Jade','Suspendisse@ligulaNullamenim.co.uk','Femme'),(88,'Kramer','Amelia','Vivamus@estcongue.org','Femme'),(89,'Aguirre','Megan','nibh.Quisque@Uttinciduntvehicula.com','Homme'),(90,'Contreras','Fulton','mollis@velconvallisin.edu','Femme');
INSERT INTO Geek (id,nom,prenom,mail,sexe) VALUES (91,'Barton','Andrew','semper.pretium@semper.com','Homme'),(92,'Chandler','Brody','accumsan.interdum@turpis.com','Homme'),(93,'David','Todd','augue.porttitor.interdum@per.net','Homme'),(94,'Fleming','Emma','egestas@disparturient.com','Homme'),(95,'Becker','Daryl','feugiat@montesnasceturridiculus.net','Homme'),(96,'Kinney','Lee','Nunc@auctornuncnulla.com','Femme'),(97,'Adkins','Hyacinth','sit@iaculisnec.co.uk','Femme'),(98,'Hartman','William','nulla.Donec@fermentumvelmauris.ca','Homme'),(99,'Oneill','Amir','hendrerit.Donec.porttitor@parturientmontes.com','Femme'),(100,'Espinoza','Nayda','Aenean.egestas.hendrerit@dictumProineget.com','Homme');


INSERT INTO Interet (id,libelle) VALUES (1,'Java');
INSERT INTO Interet (id,libelle) VALUES (2,'J2EE');
INSERT INTO Interet (id,libelle) VALUES (3,'PHP');
INSERT INTO Interet (id,libelle) VALUES (4,'JS');
INSERT INTO Interet (id,libelle) VALUES (5,'Python');
INSERT INTO Interet (id,libelle) VALUES (6,'.Net');
INSERT INTO Interet (id,libelle) VALUES (7,'Dr Who');
INSERT INTO Interet (id,libelle) VALUES (8,'H2G2');
INSERT INTO Interet (id,libelle) VALUES (9,'Star Wars');
INSERT INTO Interet (id,libelle) VALUES (10,'Star Trek');
INSERT INTO Interet (id,libelle) VALUES (11,'World Of Warcraft');
INSERT INTO Interet (id,libelle) VALUES (12,'League of Legends');
INSERT INTO Interet (id,libelle) VALUES (13,'DOTA');
INSERT INTO Interet (id,libelle) VALUES (14,'Marvel');
INSERT INTO Interet (id,libelle) VALUES (15,'DC Comics');
INSERT INTO Interet (id,libelle) VALUES (16,'Skyrim');


INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (1,13),(2,16),(3,10),(4,15),(5,13),(6,2),(7,1),(8,12),(9,3),(10,13);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (11,11),(12,5),(13,16),(14,3),(15,2),(16,2),(17,16),(18,2),(19,6),(20,4);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (21,3),(22,16),(23,1),(24,2),(25,4),(26,8),(27,6),(28,7),(29,5),(30,9);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (31,13),(32,2),(33,6),(34,3),(35,6),(36,7),(37,10),(38,7),(39,1),(40,11);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (41,2),(42,5),(43,4),(44,2),(45,4),(46,3),(47,6),(48,6),(49,13),(50,5);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (51,2),(52,5),(53,15),(54,15),(55,8),(56,8),(57,13),(58,13),(59,9),(60,6);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (61,11),(62,15),(63,15),(64,6),(65,5),(66,2),(67,9),(68,15),(69,14),(70,9);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (71,10),(72,7),(73,2),(74,3),(75,1),(76,12),(77,9),(78,1),(79,4),(80,12);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (81,15),(82,11),(83,10),(84,11),(85,6),(86,10),(87,11),(88,3),(89,6),(90,12);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (91,6),(92,12),(93,6),(94,12),(95,12),(96,12),(97,2),(98,3),(99,3),(100,4);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (1,11),(2,10),(3,15),(4,4),(5,2),(6,1),(7,14),(8,5),(9,4),(10,8);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (11,7),(12,15),(13,5),(14,5),(15,10),(16,8),(17,5),(18,10),(19,13),(20,6);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (21,15),(22,11),(23,14),(24,14),(25,3),(26,4),(27,15),(28,16),(29,14),(30,5);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (31,9),(32,15),(33,10),(34,4),(35,12),(36,1),(37,5),(38,11),(39,5),(40,4);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (41,15),(42,13),(43,13),(44,8),(45,6),(46,2),(47,15),(48,15),(49,4),(50,3);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (51,4),(52,1),(53,1),(54,9),(55,4),(56,5),(57,9),(58,3),(59,10),(60,4);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (61,5),(62,1),(63,7),(64,12),(65,2),(66,9),(67,8),(68,12),(69,3),(70,9);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (71,6),(72,12),(73,1),(74,7),(75,5),(76,1),(77,10),(78,11),(79,16),(80,14);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (81,6),(82,6),(83,14),(84,6),(85,8),(86,1),(87,16),(88,7),(89,15),(90,4);
INSERT INTO Geek_Interet (id_geek,id_interet) VALUES (91,4),(92,4),(93,8),(94,1),(95,7),(96,8),(97,12),(98,6),(99,5),(100,13);
