--DQL

--define o banco de dados a ser usado
USE Gufi_manha_
GO

--lista todos os tipos de usuarios
SELECT * FROM tiposUsuarios

--lista todos os usuáiros
SELECT * FROM usuarios

--lista todas as instituições
SELECT * FROM instituicoes

--lista todos os tipos de eventos
SELECT * FROM tiposEventos

--lista todos os eventos
SELECT * FROM eventos

--lista todas as presenças
SELECT * FROM presencas

--lista os dados dos usuários mostrando o tipo também
SELECT idUsuario, tituloTipoUsuario, nomeUsuario, email FROM usuarios
INNER JOIN tiposUsuarios
ON	usuarios.idTipoUsuario = tiposUsuarios.idTipoUsuario;

--seleciona os dados dos eventos, da instituição e dos tipos de evento
SELECT nomeFantasia [Local], idEvento, tituloTipoEvento, nomeEvento, acessoLivre, 
dataEvento, descricao
FROM Eventos E
INNER JOIN tiposEventos TE
ON E.idTipoEvento = TE.idTipoEvento
INNER JOIN instituicoes I
ON E.idInstituicao = I.idInstituicao;

-- Seleciona os dados dos eventos, da instituição, dos tipos de eventos e dos usuários
SELECT nomeUsuario Usuario, email, nomeEvento Evento, tituloTipoEvento Tema, dataEvento [Data]
FROM usuarios U
INNER JOIN Presencas P
ON P.idUsuario = U.idUsuario
INNER JOIN Eventos E
ON P.idEvento = E.idEvento
INNER JOIN tiposEventos TE
ON E.idTipoEvento = TE.idTipoEvento;

-- Busca um usuário através do seu e-mail e senha
SELECT tituloTipoUsuario [Permissão], nomeUsuario, email 
FROM usuarios U 
INNER JOIN tiposUsuarios TU 
ON U.idTipoUsuario = TU.idTipoUsuario 
WHERE email = 'saulo@email.com' AND senha = 'saulo123'
