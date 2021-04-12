--SQL, aqui fazemos as consultas nas tabelas

USE SpMedicalGroup
--determinamos qual banco de dados usar

--mostrar todos os tipos de usuáios
SELECT * FROM TipoUsuário;

--mostrar todas as clínicas
SELECT * FROM Clínica;

--mostrar todos os tipos de especialidade
SELECT * FROM Especialidade;

--mostrar todos os usuários cadastrados
SELECT * FROM Usuário;

--mostrar todos os prontuários
SELECT * FROM Prontuário;

--mostrar todos os médicos
SELECT * FROM Médico;

--mostrar todas as consultas e suas situações
SELECT * FROM Consulta;

--mostrar o paciente e sua consulta
SELECT		nomePaciente AS Nome, telefonePaciente AS Telefone, dataConsulta AS [Data], situação AS Situação FROM Prontuário
INNER JOIN	Consulta
ON			Consulta.idProntuário = Prontuário.idProntuário;

--mostrar médicos e clinica onde trabalham
SELECT		crm AS CRM, nomeMédico AS Médico, email AS Email, nomeEspecialidade AS Especialidade, nomeClinica AS Clínica, cnpj AS CNPJ, razãoSocial AS [Razão Social], endereçoClinica AS Endereço FROM Médico
INNER JOIN	Usuário
ON			Usuário.idUsuário = Médico.idUsuário

INNER JOIN	Especialidade
ON			Especialidade.idEspecialidade = Médico.idEspecialidade

INNER JOIN	Clínica
ON			Clínica.idClínica = Médico.idClínica;


--mostrar as consultas com nome do Paciente, médico que irá atende-lô e a situação da consulta
SELECT		nomePaciente, nomeMédico, dataConsulta, situação FROM Consulta
INNER JOIN	Prontuário
ON			Prontuário.idProntuário = Consulta.idProntuário

INNER JOIN	Médico
ON			Médico.idMédico = Consulta.idMédico;


--mostrar os prontuários
SELECT		nomePaciente AS Nome, email AS Email, dataNascimento AS [Data de Nascimento], telefonePaciente AS Telefone, rg AS RG, cpf AS CPF, endereçoPaciente AS Endereço FROM Prontuário
INNER JOIN	Usuário
ON			Usuário.idUsuário = Prontuário.idUsuário;


--mostrar todas as especialidades
SELECT nomeEspecialidade AS Especialidade FROM Especialidade;