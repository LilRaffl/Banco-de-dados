-- apagar o banco de dados
drop database dbacademia2;

-- criar o banco de dado

create database dbacademia2;

-- acessando o banco de dados dbpets

use dbacademia2;

--criando as tabelas do banco de dados


create table tbatividade(
codAt int not null auto_increment,
atividade varchar(45),
primary key(codAt));

create table tbmonitor(
codmon int not null auto_increment,
nome_munitor int not null,
primary key(codmon));

create table tbinstrutor(
codInst int not null auto_increment,
Rginstrutor varchar(45) not null,
nome varchar(45) not null,
nacimento date not null,
titulacao varchar(45) not null,
telefone varchar(45) not null,
codAt int not null,
primary key(codInst));


create table tbturma(
codtur int not null auto_increment,
quantos_alu int not null ,
horario_aula datetime not null,
duracao_aula datetime not null,
data_inicio date not null,
data_fim date not null,
codAt int not null,
codInst int not null,
codmon int not null,
primary key(codtur),
foreign key(codAt)references tbatividade(codAt),
foreign key(codmon)references tbmonitor(codmon),
foreign key(codInst)references tbinstrutor(codInst));


create table tbalunos(
codalun int not null auto_increment,
data_matricula date not null,
nome varchar(45) not null,
endereco varchar(45) not null,
telefone varchar(45) not null,
nascimento date not null,
altura decimal(9,2) not null,
peso decimal(9,2) not null,
codtur int not null,
primary key(codalun),
foreign key(codtur)references tbturma(codtur));




create table tbregistro(
codreg int not null auto_increment,
ausencia int default 0,
codtur int not null,
codalun int not null,
primary key(codreg),
foreign key(codtur)references tbturma(codtur),
foreign key(codalun)references tbalunos(codalun));
 


insert into tbatividade(atividade)
	values('marco');


insert into tbmonitor(nome_munitor)
	values('farofa'); 

insert into tbinstrutor(Rginstrutor,nome,nacimento,titulacao,telefone)
	values('1234567892','Teixeira','1998/01/25','instrutor','12356798');


insert into tbturma(quantos_alu,horario_aula,duracao_aula,data_inicio,data_fim,codAt,codInst,codmon)
	values(5,'15:00:00','15:00:00','2003/02/12','2003/03/12',1,1,1);


insert into tbalunos(data_matricula,nome,endereco,telefone,nascimento,altura,peso,codtur)
	values('2001/01/10','rafael','rua nao sei','12344567','2002/02/10',1.5,1.5,1);


insert tbregistro(ausencia,codtur,codalun)
 values(0,1,1);

select * from tbatividade;
select * from tbmonitor;
select * from tbinstrutor;
select * from tbturma;
select * from tbalunos;



desc tbatividade;
desc tbinstrutor;
desc tbmonitor;
desc tbturma;
desc tbalunos;
desc tbregistro;
