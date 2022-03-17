drop database dbzoologico;

--1 criar o banco de dado

create database dbzoologico;

--visualizar o banco de dados

show databases;

-- acessando o banco de dados dbpets

use dbzoologico;

--2. Na database ZOOLOGICO, crei uma tabela chamada ANIMAIS com os seguintes 
create table tbanimais(
codigo int,
tipo char(15),
nome char(30),
idade int,
valor decimal(10,2)
);

insert into tbanimais(codigo,tipo,nome,idade,valor)
values(1,'cachorro','Djudi',3,'300.00');

insert into tbanimais(codigo,tipo,nome,idade,valor)
values(2,'cachorro','Sula',5,'300.00');

insert into tbanimais(codigo,tipo,nome,idade,valor)
values(3,'cachorro','Sarina',7,'300.00');

insert into tbanimais(codigo,tipo,nome,idade,valor)
values(4,'gato','pipa',2,'500.00');

insert into tbanimais(codigo,tipo,nome,idade,valor)
values(5,'gato','Sarangue',2,'500.00');

insert into tbanimais(codigo,tipo,nome,idade,valor)
values(6,'gato','clarences',1,'500.00');

insert into tbanimais(codigo,tipo,nome,idade,valor)
values(7,'coruja','Agnes',0,'700.00');

insert into tbanimais(codigo,tipo,nome,idade,valor)
values(8,'coruja','Arabela',1,'700.00');

insert into tbanimais(codigo,tipo,nome,idade,valor)
values(9,'sapo','Quash',1,'100.00');

insert into tbanimais(codigo,tipo,nome,idade,valor)
values(10,'peixe','fish',0,'100.00');

--3. Escreva um comando que exiba todas as colunas e todas as linhas da tabela ANIMAIS.

select * from tbanimais;

--4. Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS, apresentando todos os registros da tabela 
 select tipo, nome from tbanimais;  

--5. Escreva um comando que exiba apenas as colunas TIPO, NOME e IDADE da tabela ANIMAIS, apresentado todos os registros. 

select tipo, nome, idade from tbanimais;
--6 e 7. Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAISapresentando todos os registros. Apresente a legenda da coluna TIPO com o alias [Tipo de Animal] e a coluna nome com o alias [Nome do Animal]. 

select tipo as 'tipo de animal', nome as 'nome do animal', idade as 'tempo de vida' from tbanimais;

--8Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma

 select 'animal dometico' as 'procedencia', tipo, nome, idade as 'tempo de vida' from tbanimais;

--9. Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma:

select tipo, nome, idade, valor as 'valor original', (valor*1.10) as 'valor de venda' from tbanimais;

--10screva um comando que apresente os dados da tabela ANIMAIS como vemos a seguir, apresentando uma vez os dados repetidos.

select distinct tipo, valor as 'valor original',(valor*1.10) as 'valor de venda' from tbanimais;





