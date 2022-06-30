#Insert Tabela de Genero
insert into tblGenero (nome)
	values ('Drama');
    
insert into tblGenero (nome)
	values ('Animação'),
		   ('Aventura'),
           ('Musical');
           
           
insert into tblsexo(nome)
 values('Masculino'),
     ('Feminino');

#Insert Tabela de Classificação
insert into tblClassificacao (faixaEtaria)
	values ('Livre'),
		   ('+10'),
           ('+12'),
           ('+14'),
           ('+16'),
           ('+18');
           
select * from tblclassificacao;
select * from tblGenero;
select * from tblFilme;


insert into tblFilme 
	(nome, 
	dataLancamento, 
    duracao, 
    sinopse,
    idClassificacao)
    values (
	'O Rei Leão',
	'1994-07-08',
	'01:29:00',
    'Clássico da Disney, a animação acompanha Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair), apresentando ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono. ',
    1
    );

	
   insert into tblFilmeGenero (idFilme, idGenero)
	values (1,3),
		   (1,4),
           (1,5);
           
           
           
           
   # um sonho de liberdade 
   
   insert into tblfilme
   (nome,
   dataLancamento,
   duracao,
   sinopse,
   idClassificacao)
   value( 
   'Um sonho de Liberdade',
   '1995-01-25',
   '02:20:00',
   'Em 1946, Andy Dufresne (Tim Robbins), um jovem e bem sucedido banqueiro, tem a sua vida radicalmente modificada ao ser condenado por um crime que nunca cometeu, o homicídio de sua esposa e do amante dela. Ele é mandado para uma prisão que é o pesadelo de qualquer detento, a Penitenciária Estadual de Shawshank, no Maine. Lá ele irá cumprir a pena perpétua. Andy logo será apresentado a Warden Norton (Bob Gunton), o corrupto e cruel agente penitenciário, que usa a Bíblia como arma de controle e ao Capitão Byron Hadley (Clancy Brown) que trata os internos como animais. Andy faz amizade com Ellis Boyd Redding (Morgan Freeman), um prisioneiro que cumpre pena há 20 anos e controla o mercado negro da instituição.',
   6
   );
   
   
   #o rei leao 
   
   insert into tblfilme
   (nome,
   dataLancamento,
   duracao,
   sinopse,
   idClassificacao)
   value(
   'O rei Leão',
   '1994-08-08',
   '01:29:00',
   'Clássico da Disney, a animação acompanha Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair), apresentando ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono.',
    2
   );
   
   
   
 #forrest Gump
 insert into tblfilme
  (nome,
   dataLancamento,
   duracao,
   sinopse,
   idClassificacao)
   value(
   'Forrest Gump - O Contador de Histórias',
   '1994-12-07',
   '02:20:00',
   'Quarenta anos da história dos Estados Unidos, vistos pelos olhos de Forrest Gump (Tom Hanks), um rapaz com QI abaixo da média e boas intenções. Por obra do acaso, ele consegue participar de momentos cruciais, como a Guerra do Vietnã e Watergate, mas continua pensando no seu amor de infância, Jenny Curran.',
    4
   );
   
   #O Senhor dos Anéis - O Retorno do Rei
   
    insert into tblfilme
  (nome,
   dataLancamento,
   duracao,
   sinopse,
   idClassificacao)
   value(
   'O Senhor dos Anéis - O Retorno do Rei',
   '2003-12-25',
   '03:21:00',
   'Sauron planeja um grande ataque a Minas Tirith, capital de Gondor, o que faz com que Gandalf (Ian McKellen) e Pippin (Billy Boyd) partam para o local na intenção de ajudar a resistência. Um exército é reunido por Theoden (Bernard Hill) em Rohan, em mais uma tentativa de deter as forças de Sauron. Enquanto isso Frodo (Elijah Wood), Sam (Sean Astin) e Gollum (Andy Serkins) seguem sua viagem rumo à Montanha da Perdição, para destruir o Um Anel.',
    4
   );
   
   
   #Vingadores: Ultimato
   
     insert into tblfilme
  (nome,
   dataLancamento,
   duracao,
   sinopse,
   idClassificacao)
   value(
   'Vingadores: Ultimato',
   '2019-04-25',
   '03:01:00',
   'Em Vingadores: Ultimato, após Thanos eliminar metade das criaturas vivas em Vingadores: Guerra Infinita, os heróis precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark (Robert Downey Jr.) vagando perdido no espaço sem água nem comida, o Capitão América/Steve Rogers (Chris Evans) e a Viúva Negra/Natasha Romanov (Scarlett Johansson) precisam liderar a resistência contra o titã louco',
    3
   );
   
   
   
   #À Espera de um Milagre
   
      insert into tblfilme
  (nome,
   dataLancamento,
   duracao,
   sinopse,
   idClassificacao)
   value(
   'A Espera de um Milagre',
   '2000-03-10',
   '03:09:00',
   '1935, no corredor da morte de uma prisão sulista. Paul Edgecomb (Tom Hanks) é o chefe de guarda da prisão, que temJohn Coffey (Michael Clarke Duncan) como um de seus prisioneiros. Aos poucos, desenvolve-se entre eles uma relação incomum, baseada na descoberta de que o prisioneiro possui um dom mágico que é, ao mesmo tempo, misterioso e milagroso.',
   4
   );
   
   
   
    #O Poderoso Chefão 2
   
      insert into tblfilme
  (nome,
   dataLancamento,
   duracao,
   sinopse,
   idClassificacao)
   value(
   'O Poderoso Chefão 2',
   '1974-12-20',
    '03:20:00',
   'Início do século XX. Após a máfia local matar sua família, o jovem Vito (Robert De Niro) foge da sua cidade na Sicília e vai para a América. Já adulto em Little Italy, Vito luta para ganhar a vida (legal ou ilegalmente) e manter sua esposa e filhos. Ele mata Black Hand Fanucci (Gastone Moschin), que exigia dos comerciantes uma parte dos seus ganhos. Com a morte de Fanucci, o poderio de Vito cresce muito, mas sua família é o que mais importa para ele. Um legado de família que vai até os enormes negócios que nos anos 50 são controlados pelo caçula, Michael Corleone (Al Pacino). Agora baseado em Lago Tahoe, Michael planeja fazer incursões em Las Vegas e Havana instalando negócios ligados ao lazer, mas descobre que aliados como Hyman Roth (Lee Strasberg) estão tentando matá-lo. Crescentemente paranoico, Michael também descobre que sua ambição acabou com seu casamento com Kay (Diane Keaton) e até mesmo seu irmão Fredo (John Cazale) o traiu. Escapando de uma acusação federal, Michael concentra sua atenção para lidar com os seus inimigos.',
    5
   );
   
   
   #De Volta para o Futuro
   
      insert into tblfilme
  (nome,
   dataLancamento,
   duracao,
   sinopse,
   idClassificacao)
   value(
   'De Volta para o Futuro',
   '1985-12-25',
   '01:56:00',
   'Um jovem (Michael J. Fox) aciona acidentalmente uma máquina do tempo construída por um cientista (Christopher Lloyd) em um Delorean, retornando aos anos 50. Lá conhece sua mãe (Lea Thompson), antes ainda do casamento com seu pai, que fica apaixonada por ele. Tal paixão põe em risco sua própria existência, pois alteraria todo o futuro, forçando-o a servir de cupido entre seus pais.',
   1
   );
   
   
   
   
   
   
 #INSERT NA TABELA DE diretor
 
 
 insert into tbldiretor
 (nome,
 nomeArtistico,
 dataNascimento,
 dataFalecimento,
 biografia,
 idSexo)
 value(
  'Francis Ford Coppola',
  'Francis F. Coppola',
  '1939-04-07',
 null,
 'Em 1969, fundou juntamente com George Lucas a produtora American Zoetrope, em São Francisco, tendo como primeiro projeto o filme THX 1138 (1970);- É tio do ator Nicolas Cage;- Pai da tambem diretora Sofia Coppola;- Foi assistente de direção de Roger Corman;- Graduado na Universidade da Califórnia (UCLA), a mesma dos diretores, George Lucas e Steven Spielberg.',
  1
 
 );
 
 
 insert into tbldiretor
 (nome,
 nomeArtistico,
 dataNascimento,
 dataFalecimento,
 biografia,
 idSexo)
 value(
  '',
  '',
  '',
 '',
 '',
  1
 
 );
 
 
 
 
 
 
 
 
 
 
 
   insert into tblator
  (nome,
  nomeArtistico,
  dataNascimento,
  dataFalecimento,
  biografia,
  idSexo)
  value(
    '',
   '',
   '',
  '',
  '',
  1
 
    
  
 );  
 
 
 
 
 
 
  
 
   
   
   
   
select * from tblsexo;   
   
   
   
   
   
   
   
   
   
   
    