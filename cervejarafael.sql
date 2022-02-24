drop database dbcervejaria;

create database dbcervejaria;
	
show databases;

use dbcervejaria;

show tables;

create table venda(
codigo bigint,
data_criacao datetime,
valor_frete decimal(10,2),
valor_desconto decimal(10,2),
valor_total decimal(10,2),
status varchar(30),
observacao varchar(200),
data_hora_entrega datetime,
codigo_cliente bigint,
codigo_usuario bigint
);



create table item_venda(
codigo bigint,
qualidade int,
valor_unitario decimal(10,2),
codigo_cerveja bigint,
codigo_venda bigint
);



create table cerveja(
codigo bigint,
sku varchar(50),
nome varchar(80),
descricao text,
valor decimal(10,2),
teor_alcoolico decimal(10,2),
comissao decimal(10,2),
sabor varchar(50),
origem varchar(50),
codigo_estilo bigint,
quantidade_estoque int,
foto varchar(100),
content_type varchar(100)
);



create table estilo(
codigo bigint,
nome varchar(50)
);



create table cliente(
codigo bigint,
nome varchar(80),
tipo_pessoa varchar(15),
cpf_cnpj char(30),
telefone varchar(20),
email varchar(50),
logradouro varchar(50),
numero char(15),
complemento varchar(20),
cep char(15),
codigo_cidade bigint
);



create table cidade(
codigo bigint,
nome varchar(50),
codigo_estado bigint
);



create table estado(
codigo bigint,
nome varchar(50),
sigla char(2)
);



create table usuario(
codigo bigint,
nome varchar(50),
email varchar(50),
senha char(120),
ativo int,
data_nascimento date
);



create table usuario_grupo(
codigo_usuario bigint,
codigo_grupo bigint
);



create table grupo(
codigo bigint,
nome varchar(50)
);



create table grupo_permissao(
codigo_grupo bigint,
codigo_permissao bigint
);



create table permissao(
codigo bigint,
nome varchar(50)
);



create table schema_version(
installed_rank int,
version varchar(50),
description varchar(200),
type varchar(20),
script varchar(1000),
checksum int(11),
installed_by varchar(100),
installed_on timestamp,
execution_time int,
sucess int
);



desc venda;
desc item_venda;
desc cerveja;
desc estilo;
desc cliente;
desc cidade;
desc estado;
desc usuario;
desc usuario_grupo;
desc grupo;
desc grupo_permissao;
desc permissao;
desc schema_version;