select * from tblFilme;

select tblfilme.nome , tblclassificacao.faixaEtaria
 from tblfilme inner join tblclassificacao
  on tblclassificacao.idClassificacao =    
  tblfilme.idClassificacao;