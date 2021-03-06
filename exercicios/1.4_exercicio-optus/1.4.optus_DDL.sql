--DDL

CREATE DATABASE Optus

USE Optus;

CREATE TABLE Usu�rio
(
	idUsu�rio	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR (150)
	,Email		VARCHAR (150)
	,Senha		VARCHAR (150)
	,Permiss�o	VARCHAR	(150)
);

CREATE TABLE Estilo
(
	idEstilo	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR (150)
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
	,DataLan�amento	VARCHAR (150)
	,Localiza��o	VARCHAR (150)
	,Minutos		VARCHAR (150)
	,Ativo			VARCHAR (100)
);

CREATE TABLE AlbunsEstilo
(
	idAlbum		INT FOREIGN KEY REFERENCES Album (idAlbum)
	,idArtista	INT FOREIGN KEY REFERENCES Artista (idArtista)
);