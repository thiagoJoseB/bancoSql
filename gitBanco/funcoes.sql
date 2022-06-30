#criar functions


#deterministc = é ultilizado quando o tipo de dados do retorno da funcao 
#é o mesmo da entrada ,caso seja algum argumento , ou é utilizado quando a funcao nao tem argumento de entrada apenas de saida 


# not deterministc == é utilizado quando o tipo de dados de retorno 
#da funcao sera diferente do tipo de dados do argumento da entrada 





## permite especificar caracter ou simbolo que sera ultilizado para fechamento da funcao 

DELIMITER $$ 

create function loadMessage ()
    returns char(15)
    deterministic
    
    BEGIN 
    
    # CRIAR A LOGICA DA FUNCAO 
    
    #Criar variaveis 
    declare horaAtual time;
    declare hora char(2);
    declare mensagem char(15);
    
   #SET  atribuir algum dado em uma variavel  
   
   #pegar a hora a hora atualizada do servidor 
    set horaAtual = curtime();
    
    #separendo apenas a hora
    set hora = hour(horaAtual);
    
    if hora < 12 and hora >= 5 then 
        set  mensagem = 'Bom dia';
        
      elseif hora >= 12 and hora <=18 then 
       set mensagem = 'Boa tarde';
       
       elseif hora >= 19 and hora <= 23 then 
       set mensagem = 'Boa noite';
       
       else 
         set mensagem = 'Boa madrugada';
    
        end if;
    
      return mensagem;
    
    
      END $$
    
 # visualizandoo uma funcao    
 select  loadMessage() as mensagem;  

# apagando uma funcao 
drop function loadMessage;


 