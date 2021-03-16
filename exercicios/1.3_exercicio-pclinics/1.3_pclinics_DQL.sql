--DQL

USE Clinica;

SELECT * FROM Dono;
SELECT * FROM Tipo;
SELECT * FROM Raça;
SELECT * FROM Pet;
SELECT * FROM Veterinário;
SELECT * FROM Clinica;

SELECT 
	IdAtendimento,
    IdVeterinario,
	IdPet,
	
	FORMAT(Valor, 'c', 'pt-br') as Valor,
	DataDaConsulta,
	Descricao
FROM Atendimento;

--todos os veterinários de uma clínica específica
SELECT
	Clinica.Nome AS Clinica,
	Veterinário.Nome AS [Veterinário],
	CRMV
FROM Clinica

INNER JOIN Veterinário
ON Clinica.IdClinica = Veterinario.IdClinica
WHERE Clinica.Nome LIKE '%Dr.Pol';

--todas as raças que começam com a letra 'S'
SELECT * FROM Raça
WHERE Raça LIKE 'P%';

--todos com tipos de pet que terminam com a letra 'O'
SELECT * FROM Tipo
WHERE Tipo LIKE '%o'

--todos os pets e seus respectivos donos
SELECT Dono.Nome AS Dono, Pet.Nome AS Pet FROM Dono
INNER JOIN Pet
ON Dono.IdDono = Pet.IdDono;