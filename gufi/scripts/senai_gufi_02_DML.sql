--DML

--define o banco de dados a ser usado
USE Gufi_manha_
GO

--insere os tipos de  usuários
INSERT INTO		tiposUsuarios(tituloTipoUsuario)
VALUES			('Administrador')
				,('Comum');
GO

--insere os usuários
INSERT INTO		usuarios(idTipoUsuario, nomeUsuario, email, senha)
VALUES			(1, 'administrador', 'adm@adm.com', 'adm123')
				,(2, 'Caique', 'caique@email.com', 'caique123')
				,(2, 'Saulo', 'saulo@email.com', 'saulo123');
GO

--insere a instituição
INSERT INTO		instituicoes(cnpj, nomeFantasia, endereco)
VALUES			('99999999999999', 'Escola SENAI de Informática', 'Al. Barão de Limeira, 538');
GO

--insere os tipos de eventos
INSERT INTO		tiposEventos(tituloTipoEvento)
VALUES			('C#')
				,('ReactJs')
				,('SQL');
GO

--insere os eventos
INSERT INTO		eventos(idTipoEvento, idInstituicao, nomeEvento, acessoLivre, dataEvento, descricao)
VALUES			(1, 1, 'Orientação a objeto', 1, '07/04/2021', 'Conceitos sobre os pilares da programação orientada a objetos')
				,(2, 1, 'Ciclo de vida', 0, '08/04/2021', 'Como utilizar os ciclos de vida com a biblioteca ReactJs');
GO

--insere as presencas
INSERT INTO		presencas(idUsuario, idEvento, situacao)
VALUES			(2, 2, 'não confirmada')
				,(3, 1, 'confirmada');
GO

--insere os eventos
INSERT INTO		eventos(idTipoEvento, idInstituicao, nomeEvento, dataEvento, descricao)
VALUES			(3, 1, 'Introdução a SQL', '09/04/2021', 'Comandos básicos utilizando SQL Server');
GO

--insere as presencas
INSERT INTO		presencas(idUsuario, idEvento, situacao)
VALUES			(2, 3, 'confirmada');
GO
