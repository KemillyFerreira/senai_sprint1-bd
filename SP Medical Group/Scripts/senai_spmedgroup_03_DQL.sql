--SQL, aqui fazemos as consultas nas tabelas

USE SpMedicalGroup
--determinamos qual banco de dados usar

--mostrar todos os tipos de usu�ios
SELECT * FROM TipoUsu�rio;

--mostrar todas as cl�nicas
SELECT * FROM Cl�nica;

--mostrar todos os tipos de especialidade
SELECT * FROM Especialidade;

--mostrar todos os usu�rios cadastrados
SELECT * FROM Usu�rio;

--mostrar todos os prontu�rios
SELECT * FROM Prontu�rio;

--mostrar todos os m�dicos
SELECT * FROM M�dico;

--mostrar todas as consultas e suas situa��es
SELECT * FROM Consulta;

--mostrar o paciente e sua consulta
SELECT		nomePaciente AS Nome, telefonePaciente AS Telefone, dataConsulta AS [Data], situa��o AS Situa��o FROM Prontu�rio
INNER JOIN	Consulta
ON			Consulta.idProntu�rio = Prontu�rio.idProntu�rio;

--mostrar m�dicos e clinica onde trabalham
SELECT		crm AS CRM, nomeM�dico AS M�dico, email AS Email, nomeEspecialidade AS Especialidade, nomeClinica AS Cl�nica, cnpj AS CNPJ, raz�oSocial AS [Raz�o Social], endere�oClinica AS Endere�o FROM M�dico
INNER JOIN	Usu�rio
ON			Usu�rio.idUsu�rio = M�dico.idUsu�rio

INNER JOIN	Especialidade
ON			Especialidade.idEspecialidade = M�dico.idEspecialidade

INNER JOIN	Cl�nica
ON			Cl�nica.idCl�nica = M�dico.idCl�nica;


--mostrar as consultas com nome do Paciente, m�dico que ir� atende-l� e a situa��o da consulta
SELECT		nomePaciente, nomeM�dico, dataConsulta, situa��o FROM Consulta
INNER JOIN	Prontu�rio
ON			Prontu�rio.idProntu�rio = Consulta.idProntu�rio

INNER JOIN	M�dico
ON			M�dico.idM�dico = Consulta.idM�dico;


--mostrar os prontu�rios
SELECT		nomePaciente AS Nome, email AS Email, dataNascimento AS [Data de Nascimento], telefonePaciente AS Telefone, rg AS RG, cpf AS CPF, endere�oPaciente AS Endere�o FROM Prontu�rio
INNER JOIN	Usu�rio
ON			Usu�rio.idUsu�rio = Prontu�rio.idUsu�rio;


--mostrar todas as especialidades
SELECT nomeEspecialidade AS Especialidade FROM Especialidade;