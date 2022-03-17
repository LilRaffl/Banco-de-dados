drop database dbmercearia;

create database dbmercearia;

use dbmercearia;


create table tbfuncionarios(
codfunc int not null auto_increment,
nome varchar(100) not null,
salario decimal(9,2) default 0.0 check(salario >=0.0),
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
primary key(codfunc));

create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(50) not null,
senha varchar(50) not null,
codfunc int not null,
primary key(codUsu),
foreign key(codfunc)references tbfuncionarios(codfunc));

desc tbfuncionarios;
desc tbUsuarios;