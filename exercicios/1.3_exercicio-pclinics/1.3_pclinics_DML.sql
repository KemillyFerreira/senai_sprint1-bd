--DML

USE Clinica

INSERT INTO Dono	(Nome)
VALUES				('Kemilly')
					,('Larissa');

INSERT INTO Tipo	(Nome, idTipo)
VALUES				('Gato', 1)
					,('Cachorro', 2);

INSERT INTO Raça	(Raca, IdTipo)
VALUES				('Siames', 1)
					,('Labrador', 2);

INSERT INTO Pet	(idPet, idRaca, Nome, DataNascimento, idDono)
VALUES				(1, 2 'Kali', '28/02/2020', 2)
					,(4, 4, 'Tarzan', '13/11/2018', 4);

INSERT INTO Veterinário		(Nome)
VALUES						('Flavia')
							,('Fabiana');

UPDATE Veterinarios SET Nome = 'Kali' WHERE IdVeterinario = 5;

INSERT INTO Clinica (Endereco)
VALUES ('Rua Lucia');

INSERT INTO Atendimento(IdAtendimento, IdClinca, idVeterinário, idPet)
VALUES (10, 1, 5, 1)
	   ,(20, 2, 5, 4);

UPDATE Veterinarios
SET CRMV = '98765'
WHERE IdVeterinario = 1;

UPDATE Veterinarios
SET CRMV = '12345'
WHERE IdVeterinario = 2;

UPDATE Veterinarios
SET IdClinica = '1'
WHERE IdVeterinario = 1;

UPDATE Veterinarios
SET IdClinica = '1'
WHERE IdVeterinario = 2;