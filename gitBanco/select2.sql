select * from tblfilme;


### concat() - permite concatenar strings 

select concat('O nome do filme é:' , nome) as nomefilme,
  nome,
  concat('Filme:' , nome, '- duracao: ', duracao) as nomefilme2
  from tblFilme;
  
  
  
  #concat_ws() - permite concatenar, utilizando 
  #um separador como padrao 
  
  
  select concat_ws('-', nome, duracao, dataLancamento, valor)
     as nomeFilmePersonalizado 
     from tblFilme;
     
     
  
  select concat_ws(';', nome, duracao, dataLancamento, valor)
     as nomeFilmePersonalizado 
     from tblFilme;
     
      select concat_ws(' | ', nome, duracao, dataLancamento, valor)
     as nomeFilmePersonalizado 
     from tblFilme;
     
     
     
     
     
  #retorna a posicao inicial da palavra chave que foi solicitada  
     
     select locate('morte', sinopse) as posicaoPalavra 
      from tblFilme;
     
     select locate('morte', sinopse) as posicaoPalavra,
     sinopse
      from tblFilme;
      
 # reverse()  - permite inverter a escrita de um conteudo      
select reverse(nome) from tblfilme;



#lenght() -- retorna a quantidade de caracteres de um conteudo
#char_lenght() --- retorna a quantidade de caracteres de um conteudo considerando todos os tipos de caracteres
select length(nome) as qtdeLetras
  from tblfilme;                    
    
#insert() --  permite inserir uma string dentro de um conteudo
#insert(atributo , posicao que sera inserida a nova palavra ,  quantidade de caracteres que devera apagar caso queira substituir uma palavra 
# ou se nao quiser substituir colocar o '0' ,  a nova string que sera inserida)
select insert(sinopse , 1 ,  0 , 'Filme ') as sinopse 
  from tblFilme; 




#substr() - permite cortar um pedaco de uma string 
#Ex: animacao 
      
select substr('animacao', 1, 5) as resultado; 

select substr('animacao', 5, 4) as resultado; 

select concat( substr('superacao', 1, 5), '-',  substr('superacao', 6, 4)) as resultado; 



-- select concat( insert(sinopse , 100 , 0 , 'saiba mais...')) as sinopse
--  from tblFilme;
-- 
-- select concat( insert(sinopse , 100 , 0 ) ('saiba mais...') as resultado;
 
-- select insert(sinopse , ,  0 , 'saiba mais... ') as sinopse 
--   from tblFilme; 
-- 




#correcao dos exercicios



#correcao dos exercicios (exercicio 1)

-- select reverse( concat(sinopse, "saiba mais..."))
--   from tblFilme;
  
 select concat(sinopse, "saiba mais...")
  from tblFilme;
  
  
select insert(sinopse, char_length(sinopse), 0 , "saiba mais...")
as resultado
from tblFilme;

-- select reverse(insert(sinopse, char_length(sinopse), 0 , "saiba mais..."))
-- as resultado
-- from tblFilme;
--    
  
  
 #exercicio 2  
 select insert(sinopse, locate(' ', sinopse), 0 , ' <b>(videolocadora Acme)</b> ')
 as resultado 
  from tblFilme;
  
  
 # exercicio 3
 
 select insert(sinopse, locate('família',sinopse), char_length('família'),
 '<strong>família</strong>')
 as resultado
 from tblFilme;
  
 
 #replace() --- localiza um caracter e substitui por outro , em 
 #qualquer parte do texto
 select replace(sinopse, 'família', '<strong>família</strong>') as resultado 
 from tblFilme;
 
 
 #exercicio 4 
 
 select replace(sinopse, 'Marlon Brando', 'Marlon Brando falecido em 2004')
 as resultado 
  from tblFilme
  where nome like '%Poderoso chefão%';
  
  
   #exercicio 5
   
   select concat((sinopse, 1, 20) ' saiba mais... ')
as resultado 
from tblFilme;


select concat(substr(sinopse , 1 , locate('.', sinopse)), 'saiba mais ....')
as resultado 
from tblFilme; 
 
 

 









select insert(sinopse , '%família%' , 0 , '<strong> família </strong>') as negrito
 from tblFilme;
 
 
 
-- select locate('Marlon Brando' , nome , concat('falecido em 2004: ' , nome)) as morte
-- from tblfilme;


select   locate('Marlon Brando' , sinopse , concat('falecido em 2004:' , sinopse)) as falecido
from tblfilme;





 
 
 








 select sinopse from  tblFilme;    