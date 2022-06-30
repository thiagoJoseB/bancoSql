use dbVideoLocadora20212;

#PROCEDURES
select tblFilme.nome as nomeFilme, tblFilme.sinopse,
        tblGenero.nome as nomeGenero,
        tblClassificacao.faixaEtaria
from    tblFilme
        inner join tblFilmeGenero
		on tblFilme.idFilme = tblFilmeGenero.idFilme
      inner join tblGenero
       on tblGenero.idGenero = tblFilmeGenero.idGenero
	inner join tblClassificacao 
     on tblClassificacao.idClassificacao = 
       tblFilme.idClassificacao
       
       
where tblGenero.idGenero = 2;


/*
 IN - UTILIZADO QUANDO A PROCEDURE IRA APENAS RECEBER  ARGUMENTOS
 OUT - UTILIZADO QUANDO A PROCEDURE  IRA  RETORNAR  UM VALOR
 INOUT - UTILIZADO QUANDO A PROCEDURE IRA RECEBER ARGUMENTOS E RETORNAR VALORES
 
 





*/
#EXEMPLO 01 DE PROCEDURES
#CRIANDO UMA PROCEDURE  
DELIMITER $$
create procedure procListarFilmes (IN idGenero int)
BEGIN 
       
         
         # validacao para filtar pelo id do genero 
         if idGenero > 0 then 
         
select tblFilme.nome as nomeFilme, tblFilme.sinopse,
        tblGenero.nome as nomeGenero,
        tblClassificacao.faixaEtaria
from    tblFilme
        inner join tblFilmeGenero
		on tblFilme.idFilme = tblFilmeGenero.idFilme
      inner join tblGenero
       on tblGenero.idGenero = tblFilmeGenero.idGenero
	inner join tblClassificacao 
     on tblClassificacao.idClassificacao = 
       tblFilme.idClassificacao
       
       
   where tblGenero.idGenero = idGenero;




  elseif idGenero = 0 then 
  
  select tblFilme.nome as nomeFilme, tblFilme.sinopse,
        tblGenero.nome as nomeGenero,
        tblClassificacao.faixaEtaria
from    tblFilme
        inner join tblFilmeGenero
		on tblFilme.idFilme = tblFilmeGenero.idFilme
      inner join tblGenero
       on tblGenero.idGenero = tblFilmeGenero.idGenero
	inner join tblClassificacao 
     on tblClassificacao.idClassificacao = 
       tblFilme.idClassificacao;

       end if;

   END $$

#chama uma procedure 
call procListarFilmes(2);
#se colocar o 0 traz todos os filmes 
# se colocar um numero valido traz os filmes desse id 

#apaga uma procedure
drop procedure procListarFilmes;



#PROCEDURES EXEMPLO 02

DELIMITER $$
create procedure procListarFilmes (IN idGenero int)
BEGIN 
   
   #declarecao de variaveis 
   --  declare variavel int;
   --     set variavel = 0;


    #DECLARACAO DE VARIAVEIS DE COMANDO 
 
		set @scriptPadrao = '
        
        select tblFilme.nome as nomeFilme, tblFilme.sinopse,
        tblGenero.nome as nomeGenero,
        tblClassificacao.faixaEtaria
from    tblFilme
        inner join tblFilmeGenero
		on tblFilme.idFilme = tblFilmeGenero.idFilme
      inner join tblGenero
       on tblGenero.idGenero = tblFilmeGenero.idGenero
	inner join tblClassificacao 
     on tblClassificacao.idClassificacao = 
       tblFilme.idClassificacao ';
       
       if idGenero > 0 then 
       set @scriptGenero = concat(@scriptPadrao , ' where tblGenero.idGenero =' , idGenero);
       
       elseif idGenero = 0 then
         set @script = @scriptPadrao;
         end if;
         
         # transforma o que é uma varriavel em um comando executavel pelo BD
         prepare scriptSQL from @script;
         
         execute scriptSQL;

   END $$
   
   
   
   