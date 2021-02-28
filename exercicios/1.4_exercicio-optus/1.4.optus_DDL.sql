CREATE DATABASE Optus

USE Optus;

CREATE TABLE Usuário
(
	idUsuário	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR (150)
	,Email		VARCHAR (150)
	,Senha		VARCHAR (150)
	,Permissão	VARCHAR	(150)
);

CREATE TABLE ESTILO
(
	idEstilo	INT PRIMARY KEY IDENTITY
	,NomE		VARCHAR (150)
);

CREATE TABLE Artista
(
	idArtista	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR (150)
);

CREATE TABLE Album
(
	idAlbum			INT PRIMARY KEY IDENTITY
	,idArtista		INT FOREIGN KEY REFERENCES Artista (idArtista)
	,Titulo			VARCHAR (150)
	,DataLançamento	VARCHAR (150)
	,Localização	VARCHAR (150)
	,Minutos		VARCHAR (150)
	,Ativo			VARCHAR (100)
);

CREATE TABLE AlbunsEstilo
(
	idAlbum		INT FOREIGN KEY REFERENCES Album (idAlbum)
	,idArtista	INT FOREIGN KEY REFERENCES Artista (idArtista)
);