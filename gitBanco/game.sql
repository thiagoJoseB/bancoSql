create database dbjogos

use dbjogos

create table tblcategorias (
  idcategorias int not null auto_increment primary key,
  tipo varchar (100) not null



);

show tables;
show databases;


select * from tblcategorias;

select * from tblcategorias order by idcategorias desc;

insert into tblcategorias(tipo)
   value('futebol');
   
   select * from tblcategorias where idcategorias = 4;
   
   update tblCategorias set tipo = 'indio' where idCategorias = 14;