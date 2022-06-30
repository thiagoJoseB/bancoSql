select * from tblfilme;



# update 
update tblfilme set nome = 'O Rei leão'
 where idfilme = 3;
 
 
 #delete
 
 delete from tblfilme 
  where idfilme = 3;
  
  
  #select 
  /*
  select (coloca os campos que serao exibidos no filtro)
  from  (coloca se as tabelas que serao ultilizadas no filtro)
  where  (coloca se o criterio de busca sera aplicado na consulta )
  
  
  */
  
  # permite listar todos os campos e toos os registros da tabela 
  # (*) significa todos os campos 
  select * from tblfilme;
  
  # Select expecificando atributos 
  select nome , sinopse from tblfilme;
  
  # Colocando nome da tabela com o campo 
  select tblfilme.nome, tblfilme.sinopse
   from tblfilme;
  
  #colocando nome na tabela para trazer todos os campos 
  select tblfilme. * from tblfilme;
  
  # permite criar um nome virtual a uma coluna ou tabela 
  select nome as nomeFilme, sinopse , duracao 
  from tblfilme;
  
  select * from tblfilme 
   where nome = 'rei leao';
   
    select * from tblfilme 
   where nome like 'leao';
   
   #like % no inicio localiza todos os itens que terminam com aquela palavra 
    select * from tblfilme 
   where nome like '%leao';
   
   
   # like % no final - localiza todos os itens que comecam com aquela palavra 
   select * from tblfilme 
   where nome like 'leao%';

# like % % -  no comeco e no final - localiza todos os itens que tenham a palavra  em qualquer parte do campo 
select * from tblfilme 
   where nome like '%leao%';   
   
   /*
   
   like - funciona como se fosse o = 
   like % no inicio localiza todos os itens que terminam com aquela palavra 
   like % no final - localiza todos os itens que comecam com aquela palavra 
   like % % -  no comeco e no final - localiza todos os itens que tenham a palavra  em qualquer parte do campo 
   
   
   */
   
   select * from tblfilme 
   where (nome like '%morte%'
     or sinopse like '%morte%')
     and dataLancamento > '1980-01-01';
     
     
     
     
     
     
 /* Operacores de comparacao 
 =
 like
 <
 >
 <=
 >=
 <> - diferente 
 
 
 
 */   
 
 /*opereradores logicos 
 
 OR  -- 3 prioridade
 AND -- 2 prioridade
 NOT  -- 1 prioridade
 ( )  -- nivel 0
 
 
 **/ 
 
 
 
 alter table tblFilme 
  add column qtde int,
  add column valor float;

select * from tblFilme;

update tblFilme set qtde = 5,
               valor = '8.50'
		where idFilme =  6;
               
               
               
update tblFilme set qtde = 4,
               valor = '8.00'
		where idFilme =  1;
        
        
update tblFilme set qtde = 3,
               valor = '9.00'
		where idFilme =  2;
        
        
update tblFilme set qtde = 2,
               valor = '9.50'
		where idFilme =  3;
        
        
        
update tblFilme set qtde = 7,
               valor = '7.00'
		where idFilme =  4;
        
        
        
        
update tblFilme set qtde = 6,
               valor = '7.50'
		where idFilme =  5;
        
        
        
        
update tblFilme set qtde = 10,
               valor = '9.70'
		where idFilme =  7;
        
        
        
        
update tblFilme set qtde = 4,
               valor = '3.60'
		where idFilme =  8;
        
        
update tblFilme set qtde = 7,
               valor = '5.70'
		where idFilme =  9;
        
        
 select * from tblFilme;    
 
 
 
 select * from tblFilme 
   where qtde >= 8 and nome like '%rei%';
   
  
   select * from tblFilme 
   where qtde >= 8 and nome not like '%rei%';
  
 
 /* exemenplo de como usar operadores logicos 
 diferentes do mesmo criterio */
 
  select nome from tblFilme 
where (qtde = 1 or qtde = 5 or qtde = 6 or qtde = 7)
      and nome like '%rei%';
  
/*

in() - permite fazer uma busca de varios valores,
substituindo a utilizacao do or (como no exemplo acima)

not in () - inverte o resultado da busca 
*/  
  
 select nome , qtde from tblFilme 
 where qtde in (1,5,6,7) and 
   nome like '%rei%';
   
select nome , qtde from tblFilme 
 where qtde not in (1,5,6,7) and 
   nome like '%rei%';
   
   
   
  /* asc - ordernar por ordem crescente A-Z , desc - ordernadar na ordem decrecente z - a */  
  
  
  /*order by atributo asc - permite ordenar de forma crescente */
  /*order by atributo desc - permite ordenar de forma decrescente */
   select * from tblFilme 
   order by nome asc , duracao desc;      
   
   
/*limit - permite limitar a quantidade de itens no resultado do select */

select * from tblFilme
  order by idFilme asc limit 2;
  
  
   
 select * from tblFilme
  order by idFilme desc limit 2;  
  
  /* count() --  permite contar a qtde de intes 
    levando como referencia apenas o valores que nao sejam nulos */
  
  select count(*) as qtdeFilmes from tblFilme;
  
select count(nome) as qtdeFilmes from tblFilme;

/*select count(nome) , count(nomeArtistico)  as qtdeAtor from tblAtor;*/






/*min() - retorna o menor valor de uma coluna 
  max()  - retorna o maior valor de uma colona  */
  
select min(qtde) as qtdeMinima from tblFilme; 
  
select min(qtde) as qtdeMinima , nome from tblFilme; 
  
select max(qtde) as qtdeMax from tblFilme; 

/*sum */
select sum(qtde) as totalFilmes from tblFilme;
  
 select sum(qtde) as totalFilmes from tblFilme
      where nome like '%chefão%';
 
 

  