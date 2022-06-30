create database dbusuarios;

use dbusuarios;

create table tblusuarios(
idusuarios int not null auto_increment primary key,
nome varchar(100) not null,
usuario varchar(100) not null,
senha varchar (100)

);

show tables;

select * from tblusuarios;


