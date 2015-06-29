Create Table Geek (
	id 		numeric not null,
	nom 	varchar(25) not null,	
	prenom 	varchar(25) not null,
	mail 	varchar(60) not null,
	sex 	varchar(10) not null,
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

