--DQL

USE Clinica;

SELECT * FROM Dono;
SELECT * FROM Tipo;
SELECT * FROM Ra�a;
SELECT * FROM Pet;
SELECT * FROM Veterin�rio;
SELECT * FROM Clinica;

SELECT 
	IdAtendimento,
    IdVeterinario,
	IdPet,
	
	FORMAT(Valor, 'c', 'pt-br') as Valor,
	DataDaConsulta,
	Descricao
FROM Atendimento;

--todos os veterin�rios de uma cl�nica espec�fica
SELECT
	Clinica.Nome AS Clinica,
	Veterin�rio.Nome AS [Veterin�rio],
	CRMV
FROM Clinica

INNER JOIN Veterin�rio
ON Clinica.IdClinica = Veterinario.IdClinica
WHERE Clinica.Nome LIKE '%Dr.Pol';

--todas as ra�as que come�am com a letra 'S'
SELECT * FROM Ra�a
WHERE Ra�a LIKE 'P%';

--todos com tipos de pet que terminam com a letra 'O'
SELECT * FROM Tipo
WHERE Tipo LIKE '%o'

--todos os pets e seus respectivos donos
SELECT Dono.Nome AS Dono, Pet.Nome AS Pet FROM Dono
INNER JOIN Pet
ON Dono.IdDono = Pet.IdDono;