-- apagar o banco de dados

drop database db_cds;


-- criar o banco de dado


create database db_cds;


-- acessando o banco de dados 


use db_cds;


--criando as tabelas do banco de dados



create table tbartista(
cod_art int not null,
nome_art varchar(100) not null,
primary key(cod_art));

create table tbgravadoras(
cod_grav int not null,
nome_grav varchar(50) not null,
primary key(cod_grav));


create table tbcategorias(
cod_cat int not null,
nome_cat varchar(50) not null,
primary key(cod_cat));

create table tbestados(
cod_est int not null,
sigla_est varchar(2) not null,
nome_est varchar(50) not null,
primary key(cod_est));  
 
create table tbcidades(
cod_cid int Not null,
cidade varchar(50) not null,
cod_est int not null,
primary key(cod_cid),
foreign key(cod_est)references tbestados(cod_est));

create table tbclientes(
cod_cli int not null,
nome_cli varchar(50) not null,
end_cli varchar(45) not null,
renda_cli decimal(9,2) not null default 0.0 check(renda_cli >=0.0),
sexo char(1) not null default 'F' check(sexo in ('F','M')),
cod_cid int Not null,	
primary key(cod_cli),
foreign key(cod_cid)references tbcidades(cod_cid));


create table tbconjuge(
cod_conj varchar(50) not null,
nome_conj varchar(50) not null,
renda_conj  decimal(9,2) not null default 0.0 check(renda_conj >=0.0),
sexo char(1) not null default 'F' check(sexo in ('F','M')),
cod_cli int not null,
primary key(cod_conj),
foreign key(cod_cli)references tbclientes(cod_cli));

create table tbfuncionarios(
cod_func int not null,
nome varchar(50) not null,
endereco varchar(100) not null,
sal_fun decimal(9,2) not null default 0.0 check(sal_fun >=0.0),
sexo char(1) not null default 'F' check(sexo in ('F','M')),
primary key(cod_func));

create table tbdependentes(
cod_dep int not null,
nome_dep varchar(100) not null,
sexo char(1) not null default 'F' check(sexo in ('F','M')),
cod_func int not null,
primary key(cod_dep),
foreign key(cod_func)references tbfuncionarios(cod_func));

create table tbtitulos(
cod_titu int not null,
nome_cd varchar(50) not null unique,
qtd_etq int not null check(qtd_etq >0),
cod_cat int not null,
cod_grav int not null,
primary key(cod_titu),
foreign key(cod_cat)references tbcategorias(cod_cat),
foreign key(cod_grav)references tbgravadoras(cod_grav));

create table tbpedidos(
cod_pedi int not null,
data_pedi datetime not null,
val decimal(9,2) not null default 0.0 check(val >=0.0),
cod_cli int not null,
cod_func int not null,
primary key(cod_pedi),
foreign key(cod_cli)references tbclientes(cod_cli),
foreign key(cod_func)references tbfuncionarios(cod_func));

create table tbtitulos_pedidos(
qtd_cd int not null check(qtd_cd >=1),
val_cd decimal(9,2) not null check(val_cd >0),
cod_pedi int not null,
cod_titu int not null,
foreign key(cod_pedi)references tbpedidos(cod_pedi),
foreign key(cod_titu)references tbtitulos(cod_titu));

create table tbtitulos_artista(
cod_titu int not null,
cod_art int not null,
foreign key(cod_titu)references tbtitulos(cod_titu),
foreign key(cod_art)references tbartista(cod_art));











desc tbartista;
desc tbgravadoras;
desc tbcategorias;
desc tbestados;
desc tbcidades;
desc tbclientes;
desc tbconjuge;
desc tbfuncionarios;
desc tbdependentes;
desc tbtitulos;
desc tbpedidos;
desc tbtitulos_pedidos;
desc tbtitulos_artista;









