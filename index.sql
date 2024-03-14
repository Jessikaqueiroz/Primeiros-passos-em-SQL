create database cadastro
default character set utf8
default collate utf8_general_ci;

use cadastro;
create table pessoas(
id int not null auto_increment,
nome varchar (30) not null,
nascimento date,
sexo enum ('M', 'F'),
peso decimal (5,2),
altura decimal (3,2),
nacionalidade varchar (20) default 'Brasil',
primary key (id)
);
insert into pessoas values 
(default, 'Maria', '1990-05-25', 'F', 55.2, 1.65, 'Brasil'), 
(default, 'Pedro', '1987-09-12', 'M', 89.54, 1.89, 'Argentina'),
(default, 'Cláudio', '1988-07-14', 'M', 90.57, 1.78, 'Brasil'),
(default, 'Márcia', '1992-12-23', 'F', 62.25, 1.66, 'Portugal');

select * from pessoas;

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
drop column profissao;

alter table pessoas
add column codigo int first;

alter table pessoas 
modify column profissao varchar(20) default '';

alter table pessoas
change column profissao prof varchar(20) default'';

alter table pessoas
rename to humanos;

describe humanos;

create table if not exists criaturas (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
)default charset = utf8; 

describe criaturas;

alter table criaturas 
rename to cursos;

describe cursos;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key (idcurso);

insert into cursos values
('1', 'html4', 'cursos de hatml5', '40', '17', '2014'),
('2', 'algoritmo', 'logica de programação', '20', '19', '2021'),
('3', 'photoshop', 'ediçção de foto', '15', '12', '2019'),
('4', 'pgp', 'php para iniciantes', '40', '20', '2018'),
('5', 'jarva', 'introduçao a linguagem', '50', '17', '2000'),
('6', 'php', 'para avançados', '35', '15', '2014'),
('7', 'Mysql', 'banco de dados', '28', '17', '2016'),
('8', 'word', 'editor de texto', '70', '50', '2020'),
('9', 'sapateado', 'dabça legal', '20', '10', '2014'),
('10', 'youtube', 'canal de vídeos', '50', '17', '2019');
 
 update cursos 
 set nome = 'HTML'
 where idcurso = '1';
 
 update cursos 
 set nome ='php outro', ano = '2015'
 where idcurso = '4';
 
 update cursos
 set nome = 'java', carga = '80'
 where idcurso = '5';
 
 
 
 
 
 select * from cursos