--DQL

USE Locadora;

SELECT * FROM Empresa;
SELECT * FROM Marca;
SELECT * FROM Modelo;
SELECT * FROM Veiculo;
SELECT * FROM Cliente;
SELECT * FROM Aluguel;

SELECT IdAluguel,
	   FORMAT(DataDeRetirada, 'd', 'pt-bt')	AS [Data de Retirada],
	   
	   FORMAT(DataDeEntrega, 'd', 'pt-bt')	AS [Data de Entrega],
	   Cliente.Nome	AS [Cliente],
	   Modelo.Nome	AS [Carro],
	   
	   FORMAT(Valor, 'c', 'pt-br') AS Valor

FROM Aluguel
LEFT JOIN Cliente
ON Aluguel.IdCliente = Cliente.IdCliente

INNER JOIN Veiculo
ON Aluguel.IdVeiculo = Veiculo.IdVeiculo

INNER JOIN Modelo
ON Veiculo.IdModelo = Modelo.IdModelo;

SELECT IdAluguel,
	   FORMAT(DataDeRetirada, 'd', 'pt-bt')	AS [Data de Retirada],
	   FORMAT(DataDeEntrega, 'd', 'pt-bt')	AS [Data de Entrega],
	   Cliente.Nome AS [Cliente],
	   Modelo.Nome AS [Carro],
	   FORMAT(Valor, 'c', 'pt-br') AS Valor

FROM Aluguel
LEFT JOIN Cliente
ON Aluguel.IdCliente = Cliente.IdCliente

INNER JOIN Veiculo
ON Aluguel.IdVeiculo = Veiculo.IdVeiculo

INNER JOIN Modelo
ON Veiculo.IdModelo = Modelo.IdModelo
WHERE Cliente.Nome LIKE 'Kemilly'