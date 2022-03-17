-- apagar o banco de dados

drop database dbclinica;


-- criar o banco de dado


create database dbclinica;


-- acessando o banco de dados 


use dbclinica;


--criando as tabelas do banco de dados



create table tbmedico(
codmed int not null auto_increment,
nmMedico varchar(45) not null,
telefoneMedico varchar(13) not null,
primary key(codmed));


create table tbpaciente(
codpac int not null auto_increment,
nmPaciente varchar(45) not null,
telpaciente varchar(13) not null,
convenio varchar(45) not null,
primary key(codpac));



create table tbreceitaMedica(
codrec int not null auto_increment,
descricao varchar(500) not null,
primary key(codrec));




create table tbconsulta(
codcons int not null auto_increment,
dt_consulta datetime not null,
codmed int not null,
codpac int not null,
codrec int not null,
primary key(codcons),
foreign key(codmed)references tbmedico(codmed),
foreign key(codrec)references tbreceitaMedica(codrec),
foreign key(codpac)references tbpaciente(codpac));





insert into tbmedico(nmMedico,telefoneMedico)
	values('marco Teixeira','(11)5555-456');

insert into tbpaciente(nmPaciente,telpaciente,convenio)
	values('marco Teixeira','(11)5555-2581','covenio geral');

insert into tbreceitaMedica(descricao)
	values('500 palavras');

insert into tbconsulta(dt_consulta,codmed,codrec,codpac)
	values('2001/05/05 17:45:00',1,1,1);



select * from tbmedico;
select * from tbpaciente;
select * from tbreceitaMedica;
select * from tbconsulta;
 

desc tbmedico;
desc tbpaciente;
desc tbreceitaMedica;
desc tbconsulta;

