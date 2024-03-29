--DQL

--define o banco de dados a ser usado
USE Gufi_manha_
GO

--lista todos os tipos de usuarios
SELECT * FROM tiposUsuarios

--lista todos os usu�iros
SELECT * FROM usuarios

--lista todas as institui��es
SELECT * FROM instituicoes

--lista todos os tipos de eventos
SELECT * FROM tiposEventos

--lista todos os eventos
SELECT * FROM eventos

--lista todas as presen�as
SELECT * FROM presencas

--lista os dados dos usu�rios mostrando o tipo tamb�m
SELECT idUsuario, tituloTipoUsuario, nomeUsuario, email FROM usuarios
INNER JOIN tiposUsuarios
ON	usuarios.idTipoUsuario = tiposUsuarios.idTipoUsuario;

--seleciona os dados dos eventos, da institui��o e dos tipos de evento
SELECT nomeFantasia [Local], idEvento, tituloTipoEvento, nomeEvento, acessoLivre, 
dataEvento, descricao
FROM Eventos E
INNER JOIN tiposEventos TE
ON E.idTipoEvento = TE.idTipoEvento
INNER JOIN instituicoes I
ON E.idInstituicao = I.idInstituicao;

-- Seleciona os dados dos eventos, da institui��o, dos tipos de eventos e dos usu�rios
SELECT nomeUsuario Usuario, email, nomeEvento Evento, tituloTipoEvento Tema, dataEvento [Data]
FROM usuarios U
INNER JOIN Presencas P
ON P.idUsuario = U.idUsuario
INNER JOIN Eventos E
ON P.idEvento = E.idEvento
INNER JOIN tiposEventos TE
ON E.idTipoEvento = TE.idTipoEvento;

-- Busca um usu�rio atrav�s do seu e-mail e senha
SELECT tituloTipoUsuario [Permiss�o], nomeUsuario, email 
FROM usuarios U 
INNER JOIN tiposUsuarios TU 
ON U.idTipoUsuario = TU.idTipoUsuario 
WHERE email = 'saulo@email.com' AND senha = 'saulo123'
