create database dbjogos;

use dbjogos;


create table tblcategorias(
idcategorias int not null auto_increment primary key,
tipo varchar(100) not null


);


create table tblusuarios(
idusuarios int not null auto_increment primary key,
nome varchar(100) not null,
usuario varchar(100) not null,
senha varchar (100) not null

);


insert into tblcontatos(
   nome,
   email,
   celular
) 
values(
 'thiago',
 'thiagobueno@123',
 '12222222222'


);


create table tblcontatos(
idcontatos int not null auto_increment primary key,
nome varchar(100) not null,
email varchar(30) not null,
celular varchar(20) not null

);

drop table tbljogos;




drop table tbljogos;



create table tbljogos(
idjogos int not null auto_increment primary key,
nome varchar(100) not null,
foto varchar(100) not null,
destaques boolean,
promocao float


);




select * from tbljogos;
drop table tbljogos;

insert into tbljogos( nome, destaques, promocao ) values ( 'thiago', '0', '1000' ); 

create table tbljogos(
idjogos int not null auto_increment primary key,
nome varchar(100) not null,
imagem varchar(100) not null,
valor float not null,
dataLancamento float,
destaques boolean,
promocao float,
descricao varchar(100) not null

);
drop table tbljogos;

insert into tbljogos( nome, valor, dataLancamento, destaques, promocao, descricao, ) values ( 'thiago', '', '', '0', '1000', '' );
insert tbljogos (nome, valor, dataLancamento, destaques, promocao, descricao) values ('thiago', '', '', '0', '1000', '');

insert into tbljogos( nome, valor, dataLancamento, destaques, promocao, descricao, ) values ( 'thiago', '', '', '0', '100', '' );
insert into tblusuarios (nome , usuario , senha ) values('thiago' , 'thiago','123');