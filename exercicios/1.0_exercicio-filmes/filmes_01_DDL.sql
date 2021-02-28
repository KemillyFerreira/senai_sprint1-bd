--Cria um banco de dados 
CREATE DATABASE Filmes;

--Define qual banco será usado
USE Filmes;

CREATE TABLE Generos
(
	idGenero INT PRIMARY KEY
	,Nome	 VARCHAR (150) NOT NULL --Não pode ser nulo
);

CREATE TABLE Filmes
(
	idFilme		INT PRIMARY KEY
	,idGenero	INT FOREIGN KEY REFERENCES Generos (idGenero)
	,Titulo VARCHAR (150) NOT NULL
);

--DDL