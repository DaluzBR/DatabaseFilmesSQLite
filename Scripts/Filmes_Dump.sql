PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Atores(
Id INTEGER PRIMARY KEY AUTOINCREMENT,
PrimeiroNome varchar(20) NULL,
UltimoNome varchar(20) NULL,
Genero varchar(1) NULL
);
INSERT INTO Atores VALUES(1,'James','Stewart','M');
INSERT INTO Atores VALUES(2,'Deborah','Kerr','F');
INSERT INTO Atores VALUES(3,'Peter','OToole','M');
INSERT INTO Atores VALUES(4,'Robert','DeNiro','M');
INSERT INTO Atores VALUES(6,'Harrison','Ford','M');
INSERT INTO Atores VALUES(7,'Stephen','Baldwin','M');
INSERT INTO Atores VALUES(8,'Jack','Nicholson','M');
INSERT INTO Atores VALUES(9,'Mark','Wahlberg','M');
INSERT INTO Atores VALUES(10,'Woody','Allen','M');
INSERT INTO Atores VALUES(11,'Claire','Danes','F');
INSERT INTO Atores VALUES(12,'Tim','Robbins','M');
INSERT INTO Atores VALUES(13,'Kevin','Spacey','M');
INSERT INTO Atores VALUES(14,'Kate','Winslet','F');
INSERT INTO Atores VALUES(15,'Robin','Williams','M');
INSERT INTO Atores VALUES(16,'Jon','Voight','M');
INSERT INTO Atores VALUES(17,'Ewan','McGregor','M');
INSERT INTO Atores VALUES(18,'Christian','Bale','M');
INSERT INTO Atores VALUES(19,'Maggie','Gyllenhaal','F');
INSERT INTO Atores VALUES(20,'Dev','Patel','M');
INSERT INTO Atores VALUES(21,'Sigourney','Weaver','F');
INSERT INTO Atores VALUES(22,'David','Aston','M');
INSERT INTO Atores VALUES(23,'Ali','Astin','F');
CREATE TABLE ElencoFilme(
Id INTEGER PRIMARY KEY AUTOINCREMENT,
IdAtor INTEGER NOT NULL,
IdFilme INTEGER NULL,
Papel varchar(30) NULL,
FOREIGN KEY (IdAtor) REFERENCES Atores(Id),
FOREIGN KEY (IdFilme) REFERENCES Filme(Id)
);
INSERT INTO ElencoFilme VALUES(1,1,1,'John Scottie Ferguson');
INSERT INTO ElencoFilme VALUES(2,2,2,'Miss Giddens');
INSERT INTO ElencoFilme VALUES(3,3,3,'T.E. Lawrence');
INSERT INTO ElencoFilme VALUES(4,4,4,'Michael');
INSERT INTO ElencoFilme VALUES(5,6,6,'Rick Deckard');
INSERT INTO ElencoFilme VALUES(6,7,8,'McManus');
INSERT INTO ElencoFilme VALUES(7,9,10,'Eddie Adams');
INSERT INTO ElencoFilme VALUES(8,10,11,'Alvy Singer');
INSERT INTO ElencoFilme VALUES(9,11,12,'San');
INSERT INTO ElencoFilme VALUES(10,12,13,'Andy Dufresne');
INSERT INTO ElencoFilme VALUES(11,13,14,'Lester Burnham');
INSERT INTO ElencoFilme VALUES(12,14,15,'Rose DeWitt Bukater');
INSERT INTO ElencoFilme VALUES(13,15,16,'Sean Maguire');
INSERT INTO ElencoFilme VALUES(14,16,17,'Ed');
INSERT INTO ElencoFilme VALUES(15,17,18,'Renton');
INSERT INTO ElencoFilme VALUES(16,19,20,'Elizabeth Darko');
INSERT INTO ElencoFilme VALUES(17,20,21,'Older Jamal');
INSERT INTO ElencoFilme VALUES(18,21,22,'Ripley');
INSERT INTO ElencoFilme VALUES(19,13,23,'Bobby Darin');
INSERT INTO ElencoFilme VALUES(20,8,9,'J.J. Gittes');
INSERT INTO ElencoFilme VALUES(21,18,19,'Alfred Borden');
CREATE TABLE Filmes(
Id INTEGER PRIMARY KEY AUTOINCREMENT,
Nome varchar(50) NULL,
Ano INTEGER NULL,
Duracao INTEGER NULL
);
INSERT INTO Filmes VALUES(1,'Um Corpo que Cai',1958,128);
INSERT INTO Filmes VALUES(2,'Os Inocentes',1961,100);
INSERT INTO Filmes VALUES(3,'Lawrence da Arábia',1962,216);
INSERT INTO Filmes VALUES(4,'O Franco Atirador',1978,183);
INSERT INTO Filmes VALUES(5,'Amadeus',1984,160);
INSERT INTO Filmes VALUES(6,'Blade Runner',1982,117);
INSERT INTO Filmes VALUES(7,'De Olhos Bem Fechados',1999,159);
INSERT INTO Filmes VALUES(8,'Os Suspeitos',1995,106);
INSERT INTO Filmes VALUES(9,'Chinatown',1974,130);
INSERT INTO Filmes VALUES(10,'Boogie Nights - Prazer Sem Limites',1997,155);
INSERT INTO Filmes VALUES(11,'Noivo Neurótico, Noiva Nervosa',1977,93);
INSERT INTO Filmes VALUES(12,'Princesa Mononoke',1997,134);
INSERT INTO Filmes VALUES(13,'Um Sonho de Liberdade',1994,142);
INSERT INTO Filmes VALUES(14,'Beleza Americana',1999,122);
INSERT INTO Filmes VALUES(15,'Titanic',1997,194);
INSERT INTO Filmes VALUES(16,'Gênio Indomável',1997,126);
INSERT INTO Filmes VALUES(17,'Amargo pesadelo',1972,109);
INSERT INTO Filmes VALUES(18,'Trainspotting - Sem Limites',1996,94);
INSERT INTO Filmes VALUES(19,'O Grande Truque',2006,130);
INSERT INTO Filmes VALUES(20,'Donnie Darko',2001,113);
INSERT INTO Filmes VALUES(21,'Quem Quer Ser um Milionário?',2008,120);
INSERT INTO Filmes VALUES(22,'Aliens, O Resgate',1986,137);
INSERT INTO Filmes VALUES(23,'Uma Vida sem Limites',2004,118);
INSERT INTO Filmes VALUES(24,'Avatar',2009,162);
INSERT INTO Filmes VALUES(25,'Coração Valente',1995,178);
INSERT INTO Filmes VALUES(26,'Os Sete Samurais',1954,207);
INSERT INTO Filmes VALUES(27,'A Viagem de Chihiro',2001,125);
INSERT INTO Filmes VALUES(28,'De Volta para o Futuro',1985,116);
CREATE TABLE FilmesGenero(
Id INTEGER PRIMARY KEY AUTOINCREMENT,
IdGenero INTEGER NULL,
IdFilme INTEGER NULL,
FOREIGN KEY (IdGenero) REFERENCES Genero(Id),
FOREIGN KEY (IdFilme) REFERENCES Filme(Id)
);
INSERT INTO FilmesGenero VALUES(1,1,22);
INSERT INTO FilmesGenero VALUES(2,2,17);
INSERT INTO FilmesGenero VALUES(3,2,3);
INSERT INTO FilmesGenero VALUES(4,3,12);
INSERT INTO FilmesGenero VALUES(5,5,11);
INSERT INTO FilmesGenero VALUES(6,6,8);
INSERT INTO FilmesGenero VALUES(7,6,13);
INSERT INTO FilmesGenero VALUES(8,7,26);
INSERT INTO FilmesGenero VALUES(9,7,28);
INSERT INTO FilmesGenero VALUES(10,7,18);
INSERT INTO FilmesGenero VALUES(11,7,21);
INSERT INTO FilmesGenero VALUES(12,8,2);
INSERT INTO FilmesGenero VALUES(13,9,23);
INSERT INTO FilmesGenero VALUES(14,10,7);
INSERT INTO FilmesGenero VALUES(15,10,27);
INSERT INTO FilmesGenero VALUES(16,10,1);
INSERT INTO FilmesGenero VALUES(17,11,14);
INSERT INTO FilmesGenero VALUES(18,12,6);
INSERT INTO FilmesGenero VALUES(19,13,4);
CREATE TABLE Generos(
Id INTEGER PRIMARY KEY AUTOINCREMENT,
Genero varchar(20) NULL
);
INSERT INTO Generos VALUES(1,'Ação');
INSERT INTO Generos VALUES(2,'Aventura');
INSERT INTO Generos VALUES(3,'Animação');
INSERT INTO Generos VALUES(4,'Biografia');
INSERT INTO Generos VALUES(5,'Comédia');
INSERT INTO Generos VALUES(6,'Crime');
INSERT INTO Generos VALUES(7,'Drama');
INSERT INTO Generos VALUES(8,'Horror');
INSERT INTO Generos VALUES(9,'Musical');
INSERT INTO Generos VALUES(10,'Mistério');
INSERT INTO Generos VALUES(11,'Romance');
INSERT INTO Generos VALUES(12,'Suspense');
INSERT INTO Generos VALUES(13,'Guerra');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('Atores',23);
INSERT INTO sqlite_sequence VALUES('ElencoFilme',21);
INSERT INTO sqlite_sequence VALUES('Filmes',28);
INSERT INTO sqlite_sequence VALUES('FilmesGenero',19);
INSERT INTO sqlite_sequence VALUES('Generos',13);
COMMIT;
