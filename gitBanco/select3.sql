

select nome, qtde, valor, (qtde*valor)as valorTotal 
from tblfilme;



#permite limitar a quantidade de casas decimais
select nome, qtde, valor, round((qtde*valor), 2)as valorTotal 
from tblfilme;

select nome, qtde, valor, 
concat('R$ ', round((qtde*valor), 2))as valorTotal 
from tblfilme;



# so traz o numero inteiro 
select nome, qtde, valor, round((qtde*valor), 0)as valorTotal 
from tblfilme;



select nome , qtde, valor, round((valor - (valor * 10)/100),2) as desconto
from tblFilme;


# avg permite retornar a media de uma coluna de valores
#pow() -- permite calcular a potencia 
select round(sum(valor),2) as Somatotal,
round(avg(valor),2) as media
from tblfilme;


#operacoe com data e hora


#retorna a data atual do servidor de banco
select curdate() as dataAtual;
select current_date() as dataAtual;


#retorna a hora atualizada do servidor de banco 
select curtime() as horaAtual;
select current_time() as horaAtual;

#retorna a data e hora atualizado do servidor de banco 
select current_timestamp() as dataHoraAtual;


#formatador de hora 
select time_format(current_time(), '%H') as hora;

select time_format(current_time(), '%h') as hora ;


select time_format(current_time(), '%i') as minuto;

select time_format(current_time(), '%s') as segundo;

select time_format(current_time(), '%r') as horaAm_Pm; # 0 a 12 pm

select time_format(current_time(), '%T') as hora;  # 0 a 24

select time_format(current_time(), '%H:%i') as horaPersonalizado;



select hour(curtime()) as horas;
select minute(curtime()) as horas;
select second(curtime()) as horas;

# calulo de diferenca entre horas
select timediff('18:00:00','09:00:00 ') as calculoHora;





#formatacao de data 

select date_format(curdate(),'%W') as diaSemana; #nome do dia 

select date_format('2002-06-17','%W') as diaSemana; 

select date_format(curdate(),'%w') as NumerodiaSemana; # w - minusculo ,dia da semana 
# domingo 0
# segunda 1
# terca 2
# quarta 3
# quinta 4
# sexta 5
# sabado 6



select date_format(curdate(),'%a') as diaSemanaAbreviado;

select date_format(curdate(),'%d') as dia; # dia 


select date_format(curdate(),'%D') as diaOrdinal; # dia em 26th 


select date_format(curdate(),'%m') as numeroMes; 

select date_format(curdate(),'%M') as nomeMes; 

select date_format(curdate(),'%b') as nomeMesAbreviado; 

select date_format(curdate(),'%y') as ano; # retorna so o ano ex: 21

select date_format(curdate(),'%Y') as ano;

select date_format(curdate(),'%Y-%m-%d') as dataPersonal;


select date_format(curdate(),'%d/%m/%Y') as dataPersonal;


select day(curdate()) as dia;
select month(curdate()) as mes;
select year(curdate()) as ano;

select dayofweek('2021-11-21') as diaSemana;
select dayofyear(curdate()) as diaAno;
select dayofmonth(curdate()) as diaMes;

select weekofyear(curdate()) as semanaAno;

select weekday(curdate()) as semanaMes;



select datediff('2021-11-26','2021-11-25') as diferencaData;


select round((datediff('2021-11-26','1983-07-18')/ 365),0) as anos;

# permite cortar um conteudo tendo como base a localizacao por caracter e quantidade 
# de ocorencia 

select substring_index(sinopse, ' ' , 6) as resultado from tblFilme;









































































































