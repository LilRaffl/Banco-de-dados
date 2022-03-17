drop database tbsistema;
-- criar o banco de dado dbmercearia

create database tbsistema;

--visualizar o banco de dados

show databases;

-- acessando o banco de dados dbmercearia

use tbsistema;

--criando as tabelas do banco de dados

create table tbdemandamensal(
mes int(11),

ano int(11),
demanda int(11),
previsao decimal(9.2),
tb_tipo_sanguineo_cod_tipo_sanguinio int(11),
tb_produtos_cod_produto int (11)
);

insert into tbdemandamensal()

create table tbtiposanguineo(
cod_tipo_sanguineo int(11),
descricao_tipo varchar (45)
);

create table tbdoadores(
codigo int,
cpf int(10),
nome varchar(45),
endereco varchar(45),
tb_tipo_sanguineo_cod_tipo_sanguinio int(11),
data_nacimento varchar(8),
cidade varchar(45),
uf char(2),
estado_civil varchar(45),
email varchar(45),
telefone varchar(45)
);

insert into tbdoadores(codigo,nome,cpf,telefone,endereco,data_nacimento,cidade,uf,estado_civil,email,tb_tipo_sanguineo_cod_tipo_sanguinio)
values(1,'Teixeira','123.456.789','(11) 96455-7546','rua nao sei aonde ','2001/00/20','Sao paulo','sp','morto/casado','tex@.com','o');


select * from tbdoadores;




create table tbsaida(
nome_paciente varchar(100),
nome_hospital varchar(100),
data_saida date,
rt int(11),
tb_tipo_sanguineo_cod_tipo_sanguinio int(11),
tb_entradas_cod_bolsa int(11)
);

create table tbentradas(
data_entrada date, 
volume int(11),
tb_produtos_cod_produto int(11),
tb_tipo_sanguineo_cod_tipo_sanguinio int(11),
validade date,
cod_bolsa int(11)
);

create table tbproduto(
cod_produto int(11),
descricao_produto varchar(45),
sigla char(5),
validade int(11),
lead_time_horas int(11)
);

desc tbdemandamensal;
desc tbtiposanguineo;
desc tbdoadores;
desc tbsaida;
desc tbproduto;
desc tbentradas; 










