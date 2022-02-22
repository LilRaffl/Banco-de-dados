-- apagar o banco de dados
drop database dbpets;

-- criar o banco de dadospets

create database dbpets;

--visualizar o banco de dados

show databases;

-- acessando o banco de dados dbpets

use dbpets;

--criando as tabelas do banco de dados

create table tbcliente(
idcliente int,
datanasc date,
nome varchar(100),
cpf Char(14),
genero char(1),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado char(2),
telefone char(10),
email varchar(100)
);

create table tbfornecedores(
idfornecedor int(11),
razaosocial varchar(100),
nomefantasia varchar(100),
cnpj varchar(15),
endereco varchar(100),
telefone char(11)

);
create table tbprodutos(
idproduto int(11),
codigodebarras varchar(13),
nomeprotudo varchar(100),
marca varchar(100),
tipo varchar(100),
fornecedor varchar(100),
valordacompra decimal(8,2),
valordavenda decimal(8,2),
quantidadeemestoque int(11),
fornecedores_idfornecedor int(11)
);

create table tbcompras_has_produtos(
	compraidcompra int(11),
	produtos_idprodutos int (11)
	);

create table tbcompras(
	idcompra int(11),
	produtos varchar(100),
	cpf_cliente varchar(14),
	cpf_funcionario char(14),
	valortotal decimal(8,2),
	data_atual date,
	funcionarios_id int(11),
	clientes_id Int(11)
	);

create table tbclientes(
	idcliente int(11),
	nome varchar(11),
	cpf varchar(11),
	datanasci date,
	genero char(1),
	endereco varchar(100),
	telefone(11)
	email varchar(100)
);

create table tbanimais(
	idanimal int(11),
	nomedoanimal varchar(100),
	especie varchar(100),
	raca varchar(100),
	genero char(1),
	datadenasci date,
	idclientes int (11),
);
create table tbanimais_servicos(
	idanimais int(11),
	clientesanimais int(11),
	servicosid Int(11)
);
create table tbservicos(
idservico int(11),
descricaoservico varchar(100),
valorservico decimal(8,2),
temposervico time 
);
create table tbservico_cliente(
	servico_idservico Int(11),
	cliente_idcliente int(11)

);


create table tbfuncionarios(
idfuncionarios int(11),
nome varchar(100),
cargo varchar(100),
cpf varchar(100),
endereco varchar(100),
telefone varchar(11),
email varchar(100)
);

create table tbcargo(
idcargo int(11),
cargo varchar (100),
salario decimal(8,2)
);





 --visualizando as tabelas 
 show tables;

 -- visualizando as estrutura das tabelas no banco de dados
 desc tbcliente;
 desc tbprodutos;
 desc tbfornecedores;
 desc tbcompras;
 desc tbanimais;
desc dbcliente;
desc tbservicos;
desc tbservico_cliente;
desc tbfuncionarios;
desc tbcargo;