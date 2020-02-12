--Usar banco de dados 
use SPMedGroup_tarde;

--Inserir os dados na tabela

insert into Prontuario (IdUsuario,IdClinica,DataNascimento,RG,Telefone,Peso,Altura,Necessidade,IdEndereco,CPF)
values (1,1,'13/10/1983','43522543-5','11 3456-7654',	'70Kg',	'1.8','Alta',1,'94839859000'),
(2,1,'23/07/2001','32654345-7','11 98765-6543','60Kg','1.68',	'Baixa',1,'73556944057'),
(3,1,'10/10/1978','54636525-3','	11 97208-4453',	'90Kg','	1.92','	Média',2,'16839338002'),
(4,1,'13/10/1985'	,'54366362-5'	,'11 3456-6543'	,'50kg'	,'1.62'	,'Alta'	,3	,'14332654765'),
(5,	1,'27/08/1975'	,'t32544444-1'	,'11 7656-6377'	,'70kg'	,'1.89'	,'Baixa',	1	,'91305348010'),
(6	,1	,'21/03/1972'	,'54566266-7'	,'11 95436-8769'	,'90Kg',	'2.0'	,'Média',2,'79799299004'),
(7,	1,	'05/03/2018',	'54566266-8','93213211','	54kg',	'1.5',	'Alta',	3,	'13771913039')

insert into Endereco(Endereco, CEP, Estado, Cidade)
values ('Rua Estado de Israel 240','04022-000','São Paulo','São Paulo'),
('Av. Paulista, 1578 - Bela Vista,','01310-200', 'São Paulo ',' SP'),
('Av. Ibirapuera - 2927','04029-200','São Paulo','Sp')

insert into Especialidade(Especialidade)
values ('Acupuntura'),('Anestesiologia'),('Angiologia'),('Psiquiatria'),('Cirurgia Cardiovascular'),('Pediatria');

select * from Especialidade;

insert into Clinicas (IdEndereco,Telefone,RazaoSocial)
values (2,'9421423','SpMedicalGroup');

insert into TipoUsuario(Titulo)
values ('Admin'),('Usuario'),('Médico');

insert into Usuario (Nome, Email,Senha,IdTipoUsuario)
values
('Mariana','	mariana@senai',	'info@132',	2),
('Alexandre','Alexandre@senai','info@132',	2),
('Fernando'	,'fernando@fernando.com'	,'info@132',	2),
('Alexandre'	,'Alexandre@senia',	'info@132'	,2),
('Henrique'	,'Henrique@senai.com'	,'info@132',	2),
('Mariana','	rafael@rafael',	'info@132',	2),
('Henrique',	'Henrique@sena22i.com',	'info@132',	2),
('Ricardo Lemos',	'ricardo.lemos@spmedicalgroup.com.br',	'info@132',	3),
('Roberto Porssarle',	'roberto.possarle@spmedicalgroup.com.br',	'info@132',	3),
('Helena Strada',	'helena.souza@spmedicalgroup.com.br',	'info@132',	3)

select * from Medicos;

insert into Consultas(Situacao,DataEhora,IdMedico,IdClinica,IdProntuario)
values ('Realizada','	20/01/2020 15:00',	10,	1,	1),

('Cancelada'	,'06/01/2020 10:00'	,12	,1	,2),
('Realizada',	'07/02/2020 11:00',	12,	1,	3),
('Realizada',	'06/02/2018 10:00',	12,	1,	4),
('Cancelada',	'07/02/2019 11:00',	11,	1,	5),
('Agendada',	'08/03/2020 15:00',	13,	1,	6),
('Agendada',	'09/03/2020 11:00',	11,	1,	7);


insert into Medicos(IdEspecialidade, IdUsuario,IdClinica,CNPJ,RazaoSocial,CRM)
values 
(	1,	5,	1,	'321321321',	'Sp Medical Group',	'321321321'),
(	4,	6,	1,	'543543643',	'Sp Medical Group',	'32131321'),
(	2,	7,	1,	'86.400.902/0001-30'	,'SP Medical Group',	'54356-SP'),
(	4	,8	,1	,'86.400.902/001-30'	,'SP Medical Group',	'53452-SP'),
(	6,	9,	1,	'86.400.902/0021-30',	'SP Medical Group',	'65463-SP');

insert into Adminstrador(IdUsuario)
values (1);


















