drop database tbmercearia;
-- criar o banco de dado dbmercearia

create database tbmercearia;

--visualizar o banco de dados

show databases;

-- acessando o banco de dados dbmercearia

use tbmercearia;

--criando as tabelas do banco de dados

create table tbclientes( 
idcliente int,
nome varchar(45),
telefone varchar(45),
email varchar(45)
);

create table tbvenda( 
id int, 
valor_total decimal(10.2),
data datetime,
cliente_id int,
vendedor_id int,
pagamento_id int 
);

create table tbvendedor( 
id int,
nome varchar(45)
);

create table tbpagamento(
id int,
forma_de_pagamento varchar(45)
 );

create table tbvendas_has_produto( 
venda_id int,
produto_id int
);

create table tbproduto(
id int,
nome varchar(45),
preco decimal(10.2),
qtd_estoque varchar(45),
categoria_id int,
fornecedor_id int
);

create table tbcategoria( 
id int,
nome varchar(45)
);

create table tbfornecedores(
id int,
cnpj varchar(45),
nome varchar(45)
);

desc tbclientes;
desc tbvenda;
desc tbvendedor;
desc tbpagamento;
desc tbvendas_has_produto;
desc tbproduto; 
desc tbcategoria;
desc tbfornecedores;

