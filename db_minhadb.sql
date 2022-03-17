drop database db_minhadb;

create database db_minhadb;

use db_minhadb;

create table tbtelefones(
codigo int,
nome varchar(50),
telefone char(15)
);

show tables;
desc tbtelefones;

insert into Tbtelefones(codigo,nome,telefone)
	values(1,'marco Teixeira','(11)5555-456');


insert into Tbtelefones(codigo,nome,telefone)
	values(2,'rafael eli','(11)4568-456');

 insert into Tbtelefones(codigo,nome,telefone)
	values(3,'miquel arthur','(11)5456-567');

	insert into Tbtelefones(codigo,nome,telefone)
	values(4,'heitor alice','(11)1234-312');

	insert into Tbtelefones(codigo,nome,telefone)
	values(5,'theo helena','(11)4567-333');

	insert into Tbtelefones(codigo,nome,telefone)
	values(6,'fdassddsadas','(11)5555-555');



select * from tbtelefones;

delete from tbtelefones where codigo =2;

 



