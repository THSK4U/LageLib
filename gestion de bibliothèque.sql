use `gestion de bibliothèque`;

create table Livres(
   id_livre int not null primary key auto_increment,
   titre varchar(30),
   lauteur varchar(30),
   lannéepublication int 
);

create table Membres(
   id_membre int not null primary key auto_increment,
   nom_mb varchar(40),
   ladresse varchar(50),
  numérotéléphone int 
);

create table adminn(
  id_admin int not null primary key auto_increment,
  name_ad varchar(40),
  password varchar(30)
);

create table Emprunts(
  id_emprunt int not null primary key auto_increment,
  date_demprunt int,
  date_retour int,
  id_livre int,
  id_membre int,
  FOREIGN KEY (id_membre) REFERENCES Membres(id_membre),
  FOREIGN KEY (id_livre) REFERENCES Livres(id_livre)
);