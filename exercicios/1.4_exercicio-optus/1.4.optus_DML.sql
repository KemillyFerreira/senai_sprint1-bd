--DML

USE Optus;

INSERT INTO Usu�rio		(Nome, Email, Senha, Permiss�o)
VALUES					('Kemilly', 'ksf@gmail.com', '987654', 'administrador')
						,('Raphaela','rfs@yahoo.com', '987654', 'comum');

INSERT INTO Artista		(idArtista, Nome)
VALUES					(1, 'Sintese')
						,(2, 'Pink Floyd')
						,(3, 'Ventania');

INSERT INTO Estilo		(idEstilo, Nome)
VALUES					(1, 'Rap')
						,(2, 'Reggae')
						,(3, 'Rock');

INSERT INTO Album		(idAlbum, Titulo, DataLan�amento, Localiza��o, Minutos, Ativo, idArtista)
VALUES					(1, 'Ambrosia', '2020', 'Brasil', '54', '1', '1')
						,(2, 'S� Para Loucos', '2000', 'Brasil', '70', '1', '3')
						,(3, 'The Division Bell', '1994', 'Reino Unido', '66', '1', '2');

INSERT INTO AlbunsEstilo (idAlbum, idArtista)
VALUES					 ('1', '1')
						 ,('2', '2')
						 ,('3', '3');