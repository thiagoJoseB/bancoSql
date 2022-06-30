##Views e Procedures
#criar uma VIEW

create view vwListarFilmes as 

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
            
            
  #vizualizar uma VIEW 
  select * from vwListarFilmes;
  
  # permite vizualizar as views e tabelas criadas no banco de dados
   show tables;
   # permite visualizar a estrutura da view
   desc vwListarFilmes;
   
   # permite visualizar a estrutura de uma viu (select que foi criado)
   show create view vwListarFilmes;
   
  
  
  
  # permite alterar uma view 
   alter view vwlistarFilmes as
   
   
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
            
        -- where year(tblFilme.dataLancamento)  >= '1995'       
         
      
         /*group by - nao fazer repeticao exemplo: tblFilme.nome == nao repetir o nome do filme  */
            group by tblFilme.nome, tblAtor.nome  
            order by tblFilme.dataLancamento asc;
            
   
   
   # apagar uma VIEW
   
   drop view vwlistarFilmes;
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   