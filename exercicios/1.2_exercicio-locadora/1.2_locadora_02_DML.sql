--DML

USE Locadora;

INSERT INTO Empresas	(Nome)
VALUES					('Decolar')
						,('Movida');

INSERT INTO Marca		(Nome)
VALUES					('Honda')
						,('Nissan');

INSERT INTO Modelo		(Nome, IdMarca)
VALUES					('HRV', 1),
						('Kicks', 2);

INSERT INTO Veiculo	(Placa, IdModelo, IdEmpresa)
VALUES					('KSF1921', 1, 2),
						('RSF3031', 2, 2);

INSERT INTO Cliente	(Nome, CPF)
VALUES					('Kemilly', '88888888888'),
						('Raphaela', '33333333333');

INSERT INTO Aluguel	(IdCliente, IdVeiculo, Valor, DataDeRetirada, DataDeEntrega)
VALUES					(1, 3, 450, '25/01/2021', '05/02/2021'),
						(3, 3, 150, '10/02/2021', '05/03/2021');