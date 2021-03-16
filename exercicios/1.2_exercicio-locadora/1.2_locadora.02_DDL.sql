--DDL

CREATE DATABASE Locadora;

USE Locadora;

CREATE TABLE Empresa
(
	idEmpresa	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR (150) NOT NULL
);

CREATE TABLE Marca
(
	idMarca		INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR (150)
);

CREATE TABLE Modelo
(
	idModelo	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR (150)
	,idMarca	INT FOREIGN KEY REFERENCES Marca (idMarca)
);

CREATE TABLE Veiculo
(
	idVeiculo	INT PRIMARY KEY IDENTITY
	,Placa		CHAR NOT NULL
	,idEmpresa	INT FOREIGN KEY REFERENCES Empresa (idEmpresa)
	,idModelo	INT FOREIGN KEY REFERENCES Modelo (idModelo)
);

CREATE TABLE Cliente
(
	idCliente INT PRIMARY KEY IDENTITY
	,Nome	  VARCHAR (150)
	,CPF	  CHAR NOT NULL
);

CREATE TABLE Aluguel
(
	idAluguel	INT PRIMARY KEY IDENTITY
	,Valor		MONEY NOT NULL
	,idVeiculo	INT FOREIGN KEY REFERENCES Veiculo (idVeiculo)
	,idCliente	INT FOREIGN KEY REFERENCES Cliente	(idCliente)
	,DataRetirada DATE NOT NULL
	,DataEntrega DATE NOT NULL
);

ALTER TABLE Veiculo
ALTER COLUMN Placa CHAR(7);

ALTER TABLE Clientes
ALTER COLUMN CPF CHAR(11);