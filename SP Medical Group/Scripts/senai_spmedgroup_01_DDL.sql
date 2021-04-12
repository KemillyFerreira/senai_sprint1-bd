--DDL, onde criamos as tabelas

CREATE DATABASE SpMedicalGroup
--criando banco de dados chamado SpMedicalGroup

USE SpMedicalGroup
--determinando qual banco de dados será usado

CREATE TABLE TipoUsuário
--criando a tabela TipoUsupario
(
	idTipoUsuário	INT PRIMARY KEY IDENTITY
	,Tipo			VARCHAR (15) NOT NULL
);

CREATE TABLE Clínica
--criando a tabela Clínica
(
	idClínica			INT PRIMARY KEY IDENTITY
	,endereçoClínica	VARCHAR	(250) NOT NULL
	,nomeClínica		VARCHAR	(200) NOT NULL
	,razãoSocial		VARCHAR	(200) NOT NULL
	,cnpj				CHAR	(14)  NOT NULL
);

CREATE TABLE Especialidade
--criando a tabela Especialidade
(
	idEspecialidade		INT PRIMARY KEY IDENTITY
	,nomeEspecialidade	VARCHAR (250) NOT NULL
);

CREATE TABLE Usuário
--criando a tabela usuário
(
	idUsuário		INT PRIMARY KEY IDENTITY
	,idTipoUsuário	INT FOREIGN KEY REFERENCES tipoUsuário(idTipoUsuário)
	,nomeUsuário	VARCHAR (250) NOT NULL
	,email			VARCHAR (250) NOT NULL
	,senha			VARCHAR (250) NOT NULL
);

CREATE TABLE Prontuário
--criando a tabela Prontuário
(
	idProntuário	INT PRIMARY KEY IDENTITY
	,idUsuário		INT FOREIGN KEY REFERENCES Usuário(idUsuário)
	,nomePaciente	VARCHAR (250) NOT NULL
	,rg				CHAR (9) NOT NULL
	,cpf			CHAR (11) NOT NULL
	,endereçoPaciente	VARCHAR (250) NOT NULL
	,dataNascimento		DATE NOT NULL
	,telefonePaciente	VARCHAR (11) NOT NULL	
);

CREATE TABLE Médico
--criando a table Médico
(
	idMédico	INT PRIMARY KEY IDENTITY
	,idClínica	INT FOREIGN KEY REFERENCES Clínica(idClínica)
	,idUsuário	INT FOREIGN KEY REFERENCES Usuário(idUsuário)
	,idEspecialidade	INT FOREIGN KEY REFERENCES Especialidade(idEspecialidade)
	,nomeMédico	VARCHAR (250) NOT NULL
	,crm		VARCHAR (7) NOT NULL
);

CREATE TABLE Consulta
--criando tabela Consulta
(
	idConsulta	INT PRIMARY KEY IDENTITY
	,idMédico	INT FOREIGN KEY REFERENCES Médico(idMédico)
	,idProntuário	INT FOREIGN KEY REFERENCES Prontuário(idProntuário)
	,dataConsulta	DATETIME NOT NULL
	,situação		VARCHAR(100) NOT NULL	
);