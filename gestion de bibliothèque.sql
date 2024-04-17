SELECT * FROM gestionbib.livres;

CREATE DATABASE gestionbib;

SELECT * FROM gestionbib.Livres;

INSERT INTO gestionbib.Livres (titre, lauteur, lannéepublication) 
VALUES 
('Carrie', 'Stephen King', 1974),
('Salem''s Lot', 'Stephen King', 1975),
('The Shining', 'Stephen King', 1977),
('Rage', 'Richard Bachman', 1977),
('The Stand', 'Stephen King', 1978),
('The Long Walk', 'Richard Bachman', 1979),
('The Dead Zone', 'Stephen King', 1979),
('Firestarter', 'Stephen King', 1980),
('Roadwork', 'Richard Bachman', 1981),
('Cujo', 'Stephen King', 1981),
('The Running Man', 'Richard Bachman', 1982),
('The Dark Tower: The Gunslinger', 'Stephen King', 1982),
('Christine', 'Stephen King', 1983),
('Pet Sematary', 'Stephen King', 1983),
('Cycle of the Werewolf', 'Stephen King', 1983),
('The Talisman', 'Stephen King', 1984),
('The Eyes of the Dragon', 'Stephen King', 1984),
('Thinner', 'Richard Bachman', 1984),
('It', 'Stephen King', 1986),
('The Dark Tower II: The Drawing of the Three', 'Stephen King', 1987),
('Misery', 'Stephen King', 1987),
('The Tommyknockers', 'Stephen King', 1987),
('The Dark Half', 'Stephen King', 1989),
('The Stand Uncut', 'Stephen King', 1990),
('The Dark Tower III: The Waste Lands', 'Stephen King', 1991),
('Needful Things', 'Stephen King', 1991),
('Gerald''s Game', 'Stephen King', 1992),
('Dolores Claiborne', 'Stephen King', 1992),
('Insomnia', 'Stephen King', 1994),
('Rose Madder', 'Stephen King', 1995),
('The Green Mile', 'Stephen King', 1996),
('Desperation', 'Stephen King', 1996),
('The Regulators', 'Richard Bachman', 1996),
('The Dark Tower IV: Wizard and Glass', 'Stephen King', 1997),
('Bag of Bones', 'Stephen King', 1998),
('The Girl Who Loved Tom Gordon', 'Stephen King', 1999),
('Dreamcatcher', 'Stephen King', 2001),
('Black House', 'Stephen King', 2001),
('From a Buick 8', 'Stephen King', 2002),
('The Colorado Kid', 'Stephen King', 2005),
('Cell', 'Stephen King', 2006),
('Lisey''s Story', 'Stephen King', 2006),
('Blaze', 'Richard Bachman', 2007);

use gestionbib;

create table Livres(
   id_livre int not null primary key auto_increment,
   titre varchar(130),
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