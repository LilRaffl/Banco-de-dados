-- apagar o banco de dados
drop database dbacademia;

-- criar o banco de dado

create database dbacademia;

--visualizar o banco de dados

show databases;

-- acessando o banco de dados dbpets

use dbacademia;

--criando as tabelas do banco de dados

create table tbmonitor(
id_aluno int
);

create table tbalunos(
matriculas int,
data_matricula date,
nome varchar(45),
endereco varchar(45),
telefone varchar(45),
nascimento date,
altura decimal(9.2),
peso decimal(9.2),
id_turma int
);

create table tbregistro(
id_aluno int,
id_turma int,
ausencia int,
id_registro int
);
 

create table tbturma(
id int,
quantos_alu int,
horario_aula datetime,
duracao_aula datetime,
data_inicio date,
data_fim date,
atividade int,
id_instrutor int,
id_monitor int
);

create table tbintrutor(
rg int,
nome varchar(45),
nacimento date,
titulacao varchar(45),
telefone varchar(45)
);

create table tbatividade(
id int,
atividade varchar(45)
);

desc tbmonitor;
desc tbalunos;
desc tbregistro;
desc tbturma;
desc tbintrutor;
desc tbatividade;
