create database dbjogos;

use dbjogos;


create table tblcategorias(
idcategorias int not null auto_increment primary key,
tipo varchar(100) not null


);

select * from tbljogos;


alter table tbljogos
add column idcategorias int not null,
add constraint FK_categorias_jogos
foreign key (idcategorias)
references tblcategorias(idcategorias);


create table tblusuarios(
idusuarios int not null auto_increment primary key,
nome varchar(100) not null,
usuario varchar(100) not null,
senha varchar (100) not null

);

drop tables tblusuarios;

select * from tblusuarios; 


insert into tbljogos( nome, foto, destaques, promocao, idcategorias ) values ( 'thiago', '6e3b62fb6b3446a7c1b4de6ede234d6c.jpg', '0', '100', 10 );

create table tblcontatos(
idcontatos int not null auto_increment primary key,
nome varchar(100) not null,
email varchar(30) not null,
celular varchar(20) not null

);

insert into tblusuarios(nome, usuario, senha) values('thiago','thiago','123');
select *from tblusuarios; 

insert into tbljogos( nome, valor, dataLancamento, destaques, promocao, descricao ) values ( 'thiago', '', '', '0', '10', '' );


#nao é essa
-- create table tbljogos(
-- idjogos int not null auto_increment primary key,
-- nome varchar(100) not null,
-- imagem varchar(100) not null,
-- valor float not null,
-- dataLancamento varchar(50) not null,
-- destaques boolean not null,
-- promocao float ,
-- descricao text not null
-- 
-- );

desc tbljogos;

-- #nao é essa
-- create table tbljogos(
-- idjogos int not null auto_increment primary key,
-- nome varchar(100) not null,
-- foto varchar(100) not null,
-- destaques boolean,
-- promocao float
-- 
-- 
-- );


select * from tbljogos where idcategorias = 24;


select * from tbljogos where idcategorias = 24;

create table tbljogos(
idjogos int not null auto_increment primary key,
nome varchar(100) not null,
foto varchar(100) not null,
valor varchar(50) not null,
destaques boolean,
promocao float,
descricao varchar(100) not null,
idcategorias int not null


);

drop table tbljogos;

select * from tbljogos;

create table tblCategoriasJogos(
 idCategoriasJogos int not null auto_increment primary key,
 idcategorias int not null,
 idjogos int not null,
 
 constraint FK_Categorias_CategoriasJogos
 
 foreign key (idcategorias)
 
 references tblcategorias (idcategorias),
 
 constraint FK_Jogos_CategoriasJogos
 
 foreign key (idjogos)
 
 references tbljogos  (idjogos),
 
 
 
 
 unique index (idCategoriasJogos)


);

insert into tbljogos( nome, foto, destaques, promocao, idCategoriasJogos ) values ( 'messi', 'fce9839673d18163bbfff1a8ddfc19a5.png', '0', '07745');

select *from tbljogos;

select *from tblCategoriasJogos;
select * from tbljogos where idcategorias = 25;


drop tables tblCategoriasJogos; 


select tbljogos. * ,  
     tblcategorias.tipo 
     
  from tbljogos inner join tblcategoriasJogos
   on tbljogos.idjogos = tblcategoriasJogos.idjogos
   inner join tblcategorias
    on tblcategorias.idcategorias = tblcategoriasJogos.idcategorias;
    

select * from tbljogos;

select * from tblCategoriasJogos inner join tblcategorias on tblcategorias.idcategorias =  tblcategoriasJogos.idcategorias inner join  tbljogos on  tbljogos.idjogos = tblcategoriasJogos.idjogos;

drop table tbljogos;
insert into tbljogos( nome, valor, dataLancamento, destaques, promocao, descricao ) values ( 'thiago', '', '', '0', '1000', '' );

drop table tbljogos;


insert into tbljogos( nome, valor, dataLancamento, destaques, promocao, descricao ) values ( 'thiago', '', '', '0', '10', '' ); 





select * from tbljogos order by idjogos desc;