#relacionamentos 


#forma 1 relacionando pelo WHERE


select * from tblFilme;
 
select tblFilme.nome as nomeFilme, 
     tblFilme.dataLancamento,
	tblGenero.nome as nomeGenero, 
    tblclassificacao.faixaEtaria
    
    
from  tblFilme,tblGenero,tblclassificacao ,tblFilmeGenero

where  tblFilme.idFilme = tblFilmeGenero.idFilme and 
	tblGenero.idGenero = tblFilmeGenero.idGenero and 
    tblClassificacao.idClassificacao = tblFilme.idClassificacao;
    
    
 select * from  tblFilmeGenero where idFilme=2;
 
 select * from tblGenero;
 
 select * from tblClassificacao;
 
 select * from tblFilmeGenero;
 

#forma 2 relacionando pelo FROM

# lefr join - faz a relacao entre duas tabelas , trazendo os dados que existiram na tabela da esquerda e houvcer relacao com 
# a tabela da direita , alem de trazer os dados da tabela da esquerda que nao se relacionaram com dados da direita 

# right  join - faz a relacao entre duas tabelas , trazendo os dados que existiram na tabela da esquerda e houvcer relacao com 
# a tabela da direita , alem de trazer os dados da tabela da direita  que nao se relacionaram com dados da esquerda  



# relacao com join 

select tblFilme.nome as nomeFilme,
       tblFilme.dataLancamento,
       tblGenero.nome as nomeGenero,
       tblClassificacao.FaixaEtaria
       
 from  tblFilme inner join tblFilmeGenero 
       on tblFilme.idFilme = tblFilmeGenero.idFilme
  inner join tblGenero 
         on tblGenero.idGenero  = tblFilmeGenero.idGenero 
inner join tblClassificacao
        on tblClassificacao.idClassificacao = 
            tblFilme.idClassificacao;
        
 
 
 
 
#  left join 
select tblFilme.nome as nomeFilme, 
     tblGenero.nome as nomeGenero
     
  from tblFilme left join tblFilmeGenero
   on tblFilme.idFilme = tblFilmeGenero.idFilme
   left join tblGenero
    on tblGenero.idGenero = tblFilmeGenero.idGenero;
    
    
#   right join
select tblFilme.nome as nomeFilme, 
     tblGenero.nome as nomeGenero
     
  from tblFilme right join tblFilmeGenero
   on tblFilme.idFilme = tblFilmeGenero.idFilme
   right join tblGenero
    on tblGenero.idGenero = tblFilmeGenero.idGenero;
    
    
    
    
 
 
 
 #  left join 
select tblFilme.nome as nomeFilme, 
     tblGenero.nome as nomeGenero
     
  from tblFilme left join tblFilmeGenero
   on tblFilme.idFilme = tblFilmeGenero.idFilme
   left join tblGenero
    on tblGenero.idGenero = tblFilmeGenero.idGenero
    
    
    union  # full
    
#  right join   

  
select tblFilme.nome as nomeFilme, 
     tblGenero.nome as nomeGenero
     
  from tblFilme right join tblFilmeGenero
   on tblFilme.idFilme = tblFilmeGenero.idFilme
   right join tblGenero
    on tblGenero.idGenero = tblFilmeGenero.idGenero; 
    
      
    
    
 
 
 
 select tblFilme.nome as momeFilme,
        tblFilme.sinopse as sinopseFilme,
        tblGenero.nome as nomeGenero,
        tblClassificacao.faixaEtaria as NomefaixaEtaria,
        tblAtores.nome as nomeAtores,
        tblDiretores.nome as diretosAtores 
        
      from tblAtor inner join tblFilmeAtor on tblFilme.idFilme = tblFilmeAtor.idFilmne 
        
        
        
        where tblFilme.dataLancamento  > '1995' 
        order by dataLancamento asc; 
        
        
         
        
 
 select * from tblFilme;
 
  
 select tblFilme.nome as momeFilme,
        tblFilme.sinopse as sinopseFilme,
        tblGenero.nome as nomeGenero,
        tblClassificacao.faixaEtaria as NomefaixaEtaria,
        tblAtores.nome as nomeAtores,
        tblDiretores.nome as diretosAtores 
        
 from tblFilme 
			 inner join tblClassificacao 
			 on tblClassificacao.idClassificacao = tblFilme.idClassificacao
			 
			 inner join tblFilmeGenero 
			 on tblFilme.idFilme = tblFilmeGenero.idFilme
			 
			 inner join tblGenero
			 on tblGenero.idGenero = tblFilmeGenero.idGenero
			 
			inner join tblFilmeAtor
			 on tblFilme.idFilme = tblFilmeAtor.idFilme
	   
		   inner join tblAtor
		   on tblAtor.idAtor = tblFilmeAtor.idAtor
		 
		    inner join tblFilmeDiretor
		    on tblFilme.idFilme = tblFilmeDiretor.idFilme
		 
		    inner join tblDiretor 
		    on tblDiretor.idDiretor = tblFilmeDiretor.idDiretor
            
        where year(tblFilme.dataLancamento)  >= '1995'       
         
      
         /*group by - nao fazer repeticao exemplo: tblFilme.nome == nao repetir o nome do filme  */
            group by tblFilme.nome, tblAtor.nome  
            order by tblFilme.dataLancamento asc;
            
            
            
            
     
 
        

        
        
        
