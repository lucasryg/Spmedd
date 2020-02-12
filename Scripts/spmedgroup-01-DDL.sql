--Criar banco de dados
create database SPMedGroup_tarde;

--Usar banco de dados
use SPMedGroup_tarde;

--DDL criação de tabelas

create table Endereco(
	IdEndereco int primary key identity,
	Endereco varchar(155),
	CEP varchar(155),
	Estado varchar(155),
	Cidade varchar(155)
);

create table Especialidade(
	IdEspecialidade int primary key identity,
	Especialidade varchar (150) not null
);

create table Clinicas (
	IdClinica int primary key identity,
	IdEndereco int foreign key references Endereco (IdEndereco),
	Telefone varchar(150)not null,
	RazaoSocial varchar(150)not null
);

create table TipoUsuario(
	IdTipoUsuario int primary key identity,
	Titulo varchar(150) not null unique 
);

create table Usuario(
	IdUsuario int primary key identity,
	Nome varchar(150) not null,
	Email varchar(150)not null unique ,
	Senha varchar(150)not null,
	IdTipoUsuario int foreign key references TipoUsuario (IdTipoUsuario)
);

create table Prontuario(
	IdProntuario int primary key identity,
	IdUsuario int foreign key references Usuario (IdUsuario),
	IdClinica int foreign key references Clinicas (IdClinica),
	DataNascimento date,
	RG varchar (150) not null unique,
	Telefone varchar(150) not null ,
	Peso varchar(150) not null ,
	Altura varchar(150),
	CPF varchar(150) not null unique ,
	IdEndereco int foreign key references Endereco (IdEndereco),
	Necessidade varchar(150) not null
);

create table Adminstrador(
	IdAdminstrador int primary key identity,
	IdUsuario int foreign key references Usuario (IdUsuario)
);

create table Medicos(
	IdMedico int primary key identity, 
	IdEspecialidade int foreign key references Especialidade (IdEspecialidade),
	IdUsuario int foreign key references Usuario (IdUsuario),
	IdClinica int foreign key references Clinicas (IdClinica),
	CNPJ varchar(150) not null unique,
	RazaoSocial varchar(150)  not null ,
	CRM varchar(150) not null unique
);

create table Consultas(
	IdConsulta int primary key identity,
	Situacao varchar(150) not null ,
	DataEhora date,
	IdMedico int foreign key references Medicos (IdMedico),
	IdClinica int foreign key references Clinicas (IdClinica),
	IdProntuario int foreign key references Prontuario (IdProntuario)
);

select * from Prontuario;

use Biblioteca_Tarde

drop database SPMedGroup_tarde;






