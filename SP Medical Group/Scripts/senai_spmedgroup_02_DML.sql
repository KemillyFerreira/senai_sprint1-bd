--DML, onde inserimos os valores nas tabelas 

USE SpMedicalGroup
--determinamos qual banco de dados usar

--inserimos os valores que representam os tipos de usuário
INSERT INTO		TipoUsuário(Tipo)
VALUES			('Administrador')
				,('Médico')
				,('Paciente');

--inserimos os dados da Clínica
INSERT INTO		Clínica(endereçoClinica, nomeClinica, razãoSocial, cnpj)
VALUES			('Av. Barão Limeira, 532, São Paulo, SP', 'Clinica Possarle', 'SP Medical Group', '86400902000130');

--inserimos os nomes das especialidades
INSERT INTO		Especialidade(nomeEspecialidade)
VALUES			('Acupuntura')
				,('Anestesiologia')
				,('Angiologia')
				,('Cardiologia')
				,('Cirurgia Cardiovascular')
				,('Cirurgia de Mão')
				,('Cirurgia do Aparelho Digestivo')
				,('Cirurgia Geral')
				,('Cirurgia Pediátrica')
				,('Cirurgia Plástica')
				,('Cirurgia Torácica')
				,('Cirurgia Vascular')
				,('Dermatologia')
				,('Radioterapia')
				,('Urologia')
				,('Pediatria')
				,('Psiquiatria');

--inserimos os usuários e seus dados
INSERT INTO		Usuário(idTipoUsuário, nomeUsuário, email, senha)
VALUES			(1,'admin','admin@spmedicalgroup.com.br','admin1234')
				,(2,'ricardo.lemos','ricardo.lemos@spmedicalgroup.com.br','ricardo1234')
				,(2,'roberto.possarle','roberto.possarle@spmedicalgroup.com.br','roberto1234')
				,(2,'helena.strada','helena.souza@spmedicalgroup.com.br','helena1234')
				,(3,'ligia','ligia@gmail.com','ligia1234')
				,(3,'alexandre','alexandre@gmail.com','alexandre1234')
				,(3,'fernando','fernando@gmail.com','fernando1234')
				,(3,'henrique','henrique@gmail.com','henrique1234')
				,(3,'joao','joao@hotmail.com','joao1234')
				,(3,'bruno','bruno@gmail.com','bruno1234')
				,(3,'mariana','mariana@outlook.com','mariana1234');

--inserimos as informações do prontuário
INSERT INTO		Prontuário(idUsuário, nomePaciente, rg, cpf, endereçoPaciente, dataNascimento, telefonePaciente)
				(1,'Ligia','435225435','94839859000','Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000','13/10/1983','1134567654')
				,(2, 'Alexandre','326543457','73556944057','Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200','23/07/2001','11987656543')
				,(3,'Fernando','546365253','16839338002','Av. Ibirapuera - Indianópolis, 2927,  São Paulo - SP, 04029-200','10/10/1978','11972084453')
				,(4,'Henrique','543663625','14332654765','R. Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030','13/10/1985','1134566543')
				,(5,'João','325444441','91305348010','R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380','27/08/1975','1176566377')
				,(6,'Bruno','545662667','79799299004','Alameda dos Arapanés, 945 - Indianópolis, São Paulo - SP, 04524-001','21/03/1972','11954368769')
				,(7,'Mariana','545662668','13771913039','R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140','05/03/2018','');

--inserimos as informações dos médicos
INSERT INTO		Médico(idClínica, idUsuário, idEspecialidade, nomeMédico,crm)
VALUES			(1, 1, 3, 'Ricardo Lemos', '54356SP')
				,(1,2,18,'Roberto Possarle','53452SP')
				,(1,3,17,'Helena Strada','65463SP');

--inserimos as informações das consultas
INSERT INTO		Consulta(idMédico, idProntuário, dataConsulta, situação)
VALUES			(3, 7, '20/01/2020  15:00:00', 'Realizada')
				,(2, 2, '20/01/2020  15:00:00','Cancelada')
				,(2, 3,'07/02/2020  11:00:00','Realizada')
				,(2, 2,'06/02/2018  10:00:00','Realizada')
				,(1, 4,'07/02/2019  11:00:45','Cancelada')
				,(3, 7,'08/03/2020  15:00:00','Agendada')
				,(1, 4,'09/03/2020  11:00:45','Agendada');
