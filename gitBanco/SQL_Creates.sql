/*Permite criar um database*/
create database dbVideoLocadora20212;

/*permite visualizar os databes existentes no banco de dados*/
show databases;

/*permite apagar um database*/
drop database dbVideoLocadora20212;

/*permite ativar o database que sera ativado*/
use dbVideoLocadora20212;


/**tabela de idioma */
create table tblIdioma(
    idIdioma int not null auto_increment primary key,
    nome varchar(50) not null,
    unique index(idIdioma)
       


);

/*permite visualizar as tabelas existentes no database*/
show tables;

/*permite visualizar a descricao (estrutura) de uma tabela */
desc tblIdioma;

/*tabela de classificacao*/
create table tblClassificacao(
   idClassificacao int not null auto_increment,
   faixaEtaria varchar(6) not null,
   unique index(idClassificacao),
   primary key(idClassificacao)

);



/*permite alterar os atributos de uma tabela , modificando a sua estrutura*/
alter table tblClassificacao
   modify column faixaEtaria  varchar(6) not null;
   
 /* tabela genero*/  
create table tblGenero(
   idGenero int not null auto_increment primary key,
   nome varchar(50) not null,
   unique index(idGenero)

);

/* tabela nacionalidade*/  
create table tblNacionalidade(
 idNacionalidade int not null auto_increment primary key,
 nome varchar(50) not null,
 unique index(idNacionalidade)
 
);
 
 /* tabela sexo*/  
create table tblSexo(
 idSexo int not null auto_increment primary key,
 nome varchar(15) not null,
 unique index (idSexo)
 
);
 
 /* tabela legenda*/  
 create table tblLegenda(
 idLegenda int not null auto_increment primary key,
 nome varchar(50) not null,
 unique index (idLegenda)
 
);
 
 /* tabela filme*/ 
 create table tblFilme(
 idFilme int not null auto_increment primary key,
 nome varchar(80) not null,
 dataLancamento date not null,
 sinopse text not null,
 duracao time not null,
 idClassificacao int not null,
 
 /*nome do relacionamento*/
 constraint FK_Classificacao_Filme         /*chave primaria , e onde ela vai*/
 /*definicao de quem sera a FK nesta tabela*/
 foreign key (idClassificacao) /*id de quem esta vindo*/
 /*referencia da tabela que tem a PK para virar a FK*/
 references  tblClassificacao (idClassificacao), /* referencia , tabela que esta vindo e a referencia que é o id dela*/
 
 unique index (idFilme)
 
 
 
 );
 
 
 /* alterar uma tabela para adionar um novo atributo  e adicionar esse atributo com 
  


alter table tblFilme
drop foreign key FK_Classificacao_Filme;
#Alterar uma tabela para apagar um atributo
alter table tblFilme
drop column idClassificacao;

alter table tblFilme
add column idClassificacao int not null,
add constraint FK_Classificacao_Filme
foreign key(idClassificacao)
references tblClassificacao (idClassificacao);

show tables;

 */




/* intermediaria de filme e  idioma */
create table tblFilmeIdioma(
 idFilmeIdioma int not null auto_increment primary key,
 idFilme int not null,
 idIdioma int not null,
 
 constraint FK_Filme_FilmeIdioma 
 
 foreign key (idFilme)
 
 references tblFilme (idFilme),
 
 constraint FK_Idioma_FilmeIdioma
 
 foreign key (idIdioma)
 
 references tblIdioma  (idIdioma),
 
 
 
 
 unique index (idFilmeIdioma)


);


create table tblFilmeLegenda(
idFilmeLegenda int not null auto_increment primary key,
idFilme int not null,
idLegenda int not null,


constraint FK_Filme_FilmeLegenda

foreign key(idFilme)

references tblFilme (idFilme), 

constraint FK_Legenda_FilmeLegenda

foreign key(idLegenda)

references tblLegenda (idLegenda),


unique index(idFilmeLegenda)




);





create table tblFilmeGenero(
idFilmeGenero int not null auto_increment primary key,
idFilme int not null,
idGenero int not null,


constraint FK_Filme_FilmeGenero

foreign key (idFilme)

references tblFilme (idFilme),


constraint FK_Genero_FilmeGenero

foreign key (idGenero)

references tblGenero (idGenero),

unique index(idFilmeGenero)





);

select * from tblFilmeGenero;


create table tblDiretor(
idDiretor int not null auto_increment primary key,
nome varchar(80) not null,
nomeArtistico varchar(80),
dataNascimento date not null,
dataFalecimento date ,
biografia text,

idSexo int not null,

constraint FK_Sexo_Diretor

foreign key (idSexo)

references tblSexo (idSexo),

unique index(idDiretor)


);



   
        





































 
 



