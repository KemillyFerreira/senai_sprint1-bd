--DDL, onde criamos as tabelas

CREATE DATABASE SpMedicalGroup
--criando banco de dados chamado SpMedicalGroup

USE SpMedicalGroup
--determinando qual banco de dados ser� usado

CREATE TABLE TipoUsu�rio
--criando a tabela TipoUsupario
(
	idTipoUsu�rio	INT PRIMARY KEY IDENTITY
	,Tipo			VARCHAR (15) NOT NULL
);

CREATE TABLE Cl�nica
--criando a tabela Cl�nica
(
	idCl�nica			INT PRIMARY KEY IDENTITY
	,endere�oCl�nica	VARCHAR	(250) NOT NULL
	,nomeCl�nica		VARCHAR	(200) NOT NULL
	,raz�oSocial		VARCHAR	(200) NOT NULL
	,cnpj				CHAR	(14)  NOT NULL
);

CREATE TABLE Especialidade
--criando a tabela Especialidade
(
	idEspecialidade		INT PRIMARY KEY IDENTITY
	,nomeEspecialidade	VARCHAR (250) NOT NULL
);

CREATE TABLE Usu�rio
--criando a tabela usu�rio
(
	idUsu�rio		INT PRIMARY KEY IDENTITY
	,idTipoUsu�rio	INT FOREIGN KEY REFERENCES tipoUsu�rio(idTipoUsu�rio)
	,nomeUsu�rio	VARCHAR (250) NOT NULL
	,email			VARCHAR (250) NOT NULL
	,senha			VARCHAR (250) NOT NULL
);

CREATE TABLE Prontu�rio
--criando a tabela Prontu�rio
(
	idProntu�rio	INT PRIMARY KEY IDENTITY
	,idUsu�rio		INT FOREIGN KEY REFERENCES Usu�rio(idUsu�rio)
	,nomePaciente	VARCHAR (250) NOT NULL
	,rg				CHAR (9) NOT NULL
	,cpf			CHAR (11) NOT NULL
	,endere�oPaciente	VARCHAR (250) NOT NULL
	,dataNascimento		DATE NOT NULL
	,telefonePaciente	VARCHAR (11) NOT NULL	
);

CREATE TABLE M�dico
--criando a table M�dico
(
	idM�dico	INT PRIMARY KEY IDENTITY
	,idCl�nica	INT FOREIGN KEY REFERENCES Cl�nica(idCl�nica)
	,idUsu�rio	INT FOREIGN KEY REFERENCES Usu�rio(idUsu�rio)
	,idEspecialidade	INT FOREIGN KEY REFERENCES Especialidade(idEspecialidade)
	,nomeM�dico	VARCHAR (250) NOT NULL
	,crm		VARCHAR (7) NOT NULL
);

CREATE TABLE Consulta
--criando tabela Consulta
(
	idConsulta	INT PRIMARY KEY IDENTITY
	,idM�dico	INT FOREIGN KEY REFERENCES M�dico(idM�dico)
	,idProntu�rio	INT FOREIGN KEY REFERENCES Prontu�rio(idProntu�rio)
	,dataConsulta	DATETIME NOT NULL
	,situa��o		VARCHAR(100) NOT NULL	
);