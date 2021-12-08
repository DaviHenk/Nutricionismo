/********************************************************************/
/*  Este arquivo contêm os comandos SQL para popular as tabelas
/* para a construção do site da solução do TCC. Esses dados são para 
/* auxiliar o desenvolvimento e ajustes do site e para se ter uma
/* base das informações a serem inseridas nas tabelas.
/* 
/*  Sintaxe SQL: MySQL (DB)
/********************************************************************/

/* Autores */
insert into autor values (1, 'Fulano', 'fulano@uahoo.com', '(11) 9045-3232', '2323-3333');
insert into autor values (2, 'Jubileu', 'jubileu@maczs.com', '(11) 6545-3444', '4545-8383');
insert into autor values (3, 'Nome', 'Nome@uahoo.com', '(11) 7658-2435', '5500-7864');

/* Tipo de Informações */
insert into tipoinformacao values (1, '');
insert into tipoinformacao values (2, 'Recheio');
insert into tipoinformacao values (3, 'Cobertura');
insert into tipoinformacao values (4, 'Creme azedo');
insert into tipoinformacao values (5, 'Molho de alho-poró');

/* Componentes */
insert into valornutricional values (1, 1, '37kcal = 151 kj', '2');
insert into valornutricional values (1, 2, '0,8g', '0');
insert into valornutricional values (1, 3, '0,3g', '**');
insert into valornutricional values (1, 4, '0g', '0');
insert into valornutricional values (1, 5, '3,7g', '7');
insert into valornutricional values (1, 6, '0,6g', '3');
insert into valornutricional values (1, 7, '0g', '**');
insert into valornutricional values (1, 8, '0,9g', '**');
insert into valornutricional values (1, 9, '2,1g', '**');
insert into valornutricional values (1, 10, '2,3mg', '**');
insert into valornutricional values (1, 11, '0g', '0');
insert into valornutricional values (1, 12, '89mg', '4');

insert into valornutricional values (2, 1, '37kcal = 151 kj', '2');
insert into valornutricional values (2, 2, '0,8g', '0');
insert into valornutricional values (2, 4, '0g', '0');
insert into valornutricional values (2, 5, '3,7g', '7');
insert into valornutricional values (2, 6, '0,6g', '3');
insert into valornutricional values (2, 7, '0g', '**');
insert into valornutricional values (2, 11, '0g', '0');
insert into valornutricional values (2, 12, '89mg', '4');

/* Tipos de componentes */
insert into tipocomponente values (1, 'Valor energético');
insert into tipocomponente values (2, 'Carboidratos');
insert into tipocomponente values (3, 'Açúcares');
insert into tipocomponente values (4, 'Proteínas');
insert into tipocomponente values (5, 'Gorduras totais');
insert into tipocomponente values (6, 'Gorduras saturadas');
insert into tipocomponente values (7, 'Gorduras trans');
insert into tipocomponente values (8, 'Gorduras monoinsaturadas');
insert into tipocomponente values (9, 'Gorduras poliinsaturadas');
insert into tipocomponente values (10, 'Colesterol');
insert into tipocomponente values (11, 'Fibra alimentar');
insert into tipocomponente values (12, 'Sódio');

/* Medidas */
insert into medidas values (0, 'Unidades');
insert into medidas values (1, 'Colher(sopa)');
insert into medidas values (2, 'Colher(chá)');
insert into medidas values (3, 'Colher(sobremesa)');
insert into medidas values (4, 'Colher(café)');
insert into medidas values (5, 'Xícara(chá)');
insert into medidas values (6, 'copo(100ml)');
insert into medidas values (7, 'copo(150ml)');
insert into medidas values (8, 'copo(200ml)');
insert into medidas values (9, 'copo(300ml)');
insert into medidas values (10, 'Litros(l)');
insert into medidas values (11, 'Quilogramas(kg)');
insert into medidas values (12, 'Gramas(g)');
insert into medidas values (13, 'Mililitros(ml)');
insert into medidas values (14, 'Prato (raso)');
insert into medidas values (15, 'Rodelas');
insert into medidas values (16, 'Fatias');

/* Categorias */
insert into categoria values (1, 'Proteína','Proteínas');
insert into categoria values (2, 'Grãos','Grãos');
insert into categoria values (3, 'Verduras Legumes','Verduras e Legumes');
insert into categoria values (4, 'Massas','Massas');

/* Receitas */
insert into receitas VALUES (1,'r00001.png', 50, '2 pizzas (16 fatias)', '130 por fatia', 'Pizza verde', 1);
insert into receitas VALUES (2,'r00002.png', 40, '6 porções', '204 por porção', 'Arroz de festa', 2);
insert into receitas VALUES (3,'r00003.png', 15, '4 porções', '80 por porção', 'Ovo mexido cremoso', 3);
insert into receitas VALUES (4,'r00004.png', 20, '1 tapioca', '246', 'Tapioca com sementes e Mussarela de búfala', 2);
insert into receitas VALUES (5,'r00005.png', 40, '2 porções', '130 por porção', 'Abobrinha com frango', 2);

/* Categorias da receitas */
insert into receitacategoria VALUES (1,4);
insert into receitacategoria VALUES (1,3);
insert into receitacategoria VALUES (2,2);
insert into receitacategoria VALUES (3,1);
insert into receitacategoria VALUES (4,2);
insert into receitacategoria VALUES (4,4);
insert into receitacategoria VALUES (5,3);
insert into receitacategoria VALUES (5,1);

/* Ingredientes */
insert into ingredientes VALUE (1,'farinha de trigo integral');
insert into ingredientes VALUE (2,'sal');
insert into ingredientes VALUE (3,'farinha de trigo branca');
insert into ingredientes VALUE (4,'fermento biológico');
insert into ingredientes VALUE (5,'água morna');
insert into ingredientes VALUE (6,'água fria');
insert into ingredientes VALUE (7,'água quente');
insert into ingredientes VALUE (8,'óleo de girassol');
insert into ingredientes VALUE (9,'semente de linhaça');
insert into ingredientes VALUE (10,'alho-poró');
insert into ingredientes VALUE (11,'tomate');
insert into ingredientes VALUE (12,'azeite extra-virgem');
insert into ingredientes VALUE (13,'azeite');
insert into ingredientes VALUE (14,'folhas verdes');
insert into ingredientes VALUE (15,'tomate-cereja');
insert into ingredientes VALUE (16,'palmito');
insert into ingredientes VALUE (17,'queijo parmesão');
insert into ingredientes VALUE (18,'orégano');
insert into ingredientes VALUE (19,'cebola pequena');
insert into ingredientes VALUE (20,'cebola média');
insert into ingredientes VALUE (21,'cebola grande');
insert into ingredientes VALUE (22,'cenoura');
insert into ingredientes VALUE (23,'ovos');
insert into ingredientes VALUE (24,'arroz branco');
insert into ingredientes VALUE (25,'arroz branco pronto');
insert into ingredientes VALUE (26,'ervilha');
insert into ingredientes VALUE (27,'peito de peru');
insert into ingredientes VALUE (28,'salsa');
insert into ingredientes VALUE (29,'requeijão');
insert into ingredientes VALUE (30,'requeijão light');
insert into ingredientes VALUE (31,'água gelada');
insert into ingredientes VALUE (32,'manteiga');
insert into ingredientes VALUE (33,'manteiga light');
insert into ingredientes VALUE (34,'pimenta-do-reino');
insert into ingredientes VALUE (35,'goma de tapioca hidratada');
insert into ingredientes VALUE (36,'mix sementes (gergelim, chia, girassol e linhaça)');
insert into ingredientes VALUE (37,'mussarela de búfala');
insert into ingredientes VALUE (38,'manjericão fresco');
insert into ingredientes VALUE (39,'manjericão');
insert into ingredientes VALUE (40,'abobrinha');
insert into ingredientes VALUE (41,'cenoura ralada');
insert into ingredientes VALUE (42,'queijo parmesão light ralado');
insert into ingredientes VALUE (43,'frango');

/* Associação de ingrediente de uma receita */
insert into receitaingre VALUES (1, 1.25, 5, 1, 1);
insert into receitaingre VALUES (1, 1, 4, 1, 2);
insert into receitaingre VALUES (1, 1.25, 5, 1, 3);
insert into receitaingre VALUES (1, 2, 4, 1, 4);
insert into receitaingre VALUES (1, 1, 4, 1, 5);
insert into receitaingre VALUES (1, 2, 1, 1, 8);
insert into receitaingre VALUES (1, 2, 1, 1, 9);
insert into receitaingre VALUES (1, 1, 0, 5, 10);
insert into receitaingre VALUES (1, 2, 0, 5, 11);
insert into receitaingre VALUES (1, 1, 1, 5, 12);
insert into receitaingre VALUES (1, 0, 0, 5, 2);
insert into receitaingre VALUES (1, 0, 0, 5, 18);
insert into receitaingre VALUES (1, 2, 14, 3, 14);
insert into receitaingre VALUES (1, 12, 0, 3, 15);
insert into receitaingre VALUES (1, 4, 0, 3, 16);
insert into receitaingre VALUES (1, 2, 1, 3, 17);
insert into receitaingre VALUES (1, 0, 0, 3, 2);
insert into receitaingre VALUES (1, 0, 0, 3, 18);

insert into receitaingre VALUES (2, 1, 3, 1, 12);
insert into receitaingre VALUES (2, 1, 0, 1, 19);
insert into receitaingre VALUES (2, 1, 0, 1, 22);
insert into receitaingre VALUES (2, 3, 0, 1, 23);
insert into receitaingre VALUES (2, 4, 5, 1, 24);
insert into receitaingre VALUES (2, 1, 5, 1, 26);
insert into receitaingre VALUES (2, 1, 5, 1, 27);
insert into receitaingre VALUES (2, 1, 1, 1, 17);
insert into receitaingre VALUES (2, 2, 1, 1, 28);
insert into receitaingre VALUES (2, 0, 0, 1, 2);

insert into receitaingre VALUES (3, 4, 0, 1, 23);
insert into receitaingre VALUES (3, 2, 1, 1, 30);
insert into receitaingre VALUES (3, 2, 1, 1, 31);
insert into receitaingre VALUES (3, 1, 2, 1, 33);
insert into receitaingre VALUES (3, 0, 0, 1, 2);
insert into receitaingre VALUES (3, 0, 0, 1, 28);
insert into receitaingre VALUES (3, 0, 0, 1, 34);

insert into receitaingre VALUES (4, 3, 1, 1, 35);
insert into receitaingre VALUES (4, 2, 2, 1, 36);
insert into receitaingre VALUES (4, 0, 0, 1, 2);
insert into receitaingre VALUES (4, 2, 16, 2, 37);
insert into receitaingre VALUES (4, 2, 15, 2, 11);
insert into receitaingre VALUES (4, 0, 0, 2, 2);
insert into receitaingre VALUES (4, 0, 0, 2, 38);
insert into receitaingre VALUES (4, 0, 0, 2, 18);

insert into receitaingre VALUES (5, 1, 0, 1, 40);
insert into receitaingre VALUES (5, 0, 0, 1, 2);
insert into receitaingre VALUES (5, 150, 12, 2, 43);
insert into receitaingre VALUES (5, 2, 1, 2, 30);
insert into receitaingre VALUES (5, 2, 1, 2, 41);
insert into receitaingre VALUES (5, 1, 1, 2, 42);

/* Modo de preparo de uma receita de acordo com o tipo de informação */
insert into preparo VALUES (1, 'Em uma tigela, junte as farinhas, o sal e o fermento já dissolvido em água e o óleo. Trabalhe a massa até que desgrude das mãos. Divida em duas bolas, cubra e deixe descansar até dobrar de tamanho. Abra os discos com um rolo em uma superfície enfarinhada. Asse em forno preaquecido a 180 C por cerca de 30 minutos. Espalhe o molho e a cobertura', 1);
insert into preparo VALUES (1, 'Refogue os ingredientes e deixe descansar', 5);

insert into preparo VALUES (2, 'Em uma panela, aqueça o azeite e doure a cebola. Acrescente a cenoura, refogue rapidamente e reserve. Em uma vasilha, bata ligeiramente os ovos, misture o arroz e amasse tudo com um garfo. Adicione a cebola e a cenoura refogadas, a ervilha, o peito de peru, o queijo, o sal e, por último, a salsa. Coloque a mistura em uma fôrma untada e prense com o garfo. Leve ao forno preaquecido por 30 minutos. Desenforme e sirva com uma salada de folhas verdes', 1);

insert into preparo VALUES (3, 'Coloque os ovos em um recipiente com o requeijão e tempere com sal e pimenta-do-reino. Bata bem com um garfo e, na hora de levar ao fogo, junte a água gelada. Despejeem uma frigideira antiaderente untada com a manteiga. Cozinhe lentamente em fogo baixo e mexa sem parar com uma colher de pau até atingir a consistência desejada. Polvilhe com a salsa.', 1);

insert into preparo VALUES (4, 'Em uma frigideira antiaderente pequena e bem quente, peneire a goma já misturada com o sal, preenchendo todo o fundo da frigideira. Espalhe metade da sementes e tampe por 10 segundos. Recheie e dobre a tapioca. Polvilhe com o restante das sementes e sirva em seguida.', 1);

insert into preparo VALUES (5, 'Corte a abobrinha ao meio no sentido longitudinal. Retire a polpa da abobrinha (use uma colher), pique e reserve. Tempere as abobrinhas com o sal e asse por 15 minutos. Recheie e polvilhe com o queijo. Volte ao forno para gratinar.', 1);
insert into preparo VALUES (5, 'Cozinhe o frango para desfiar. Refoque o frango desfiado com a polpa da abobrinha e a cenoura por 5 minutos. Misture o requeijão e ajuste o sal.', 2);



/* Modalidade e exemplos */
insert into modalidade values
(1,'tenis','<center><h3 class="titulo" style="border-bottom: 4px solid #222;">Exemplo de cardápio para praticantes de Tênis</h3></center>
<h3 class="titulo">Café da Manhã</h3><h4 class="texto">Café da Manhã, Café da Manhã, Café da Manhã, Café da Manhã, Café da Manhã.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Café da Manhã</li><li class="mod"><b>OPÇÃO 2:</b> Café da Manhã</li><li class="mod"><b>OPÇÃO 3:</b> Café da Manhã</li></ul><h3 class="titulo">Almoço</h3><h4 class="texto">Almoço, Almoço, Almoço, Almoço, Almoço.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Almoço</li><li class="mod"><b>OPÇÃO 2:</b> Almoço</li><li class="mod"><b>OPÇÃO 3:</b> Almoço</li></ul><h3 class="titulo">Jantar</h3><h4 class="texto">Jantar, Jantar, Jantar, Jantar, Jantar.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Jantar</li><li class="mod"><b>OPÇÃO 2:</b> Jantar</li><li class="mod"><b>OPÇÃO 3:</b> Jantar</li></ul>');

insert into modalidade values
(2,'basquete','<center><h3 class="titulo" style="border-bottom: 4px solid #222;">Exemplo de cardápio para praticantes de Basquete</h3></center>
<h3 class="titulo">Café da Manhã</h3><h4 class="texto">Café da Manhã, Café da Manhã, Café da Manhã, Café da Manhã, Café da Manhã.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Café da Manhã</li><li class="mod"><b>OPÇÃO 2:</b> Café da Manhã</li><li class="mod"><b>OPÇÃO 3:</b> Café da Manhã</li></ul><h3 class="titulo">Almoço</h3><h4 class="texto">Almoço, Almoço, Almoço, Almoço, Almoço.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Almoço</li><li class="mod"><b>OPÇÃO 2:</b> Almoço</li><li class="mod"><b>OPÇÃO 3:</b> Almoço</li></ul><h3 class="titulo">Jantar</h3><h4 class="texto">Jantar, Jantar, Jantar, Jantar, Jantar.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Jantar</li><li class="mod"><b>OPÇÃO 2:</b> Jantar</li><li class="mod"><b>OPÇÃO 3:</b> Jantar</li></ul>');

insert into modalidade values
(3,'voleibol','<center><h3 class="titulo" style="border-bottom: 4px solid #222;">Exemplo de cardápio para praticantes de Voleibol</h3></center>
<h3 class="titulo">Café da Manhã</h3><h4 class="texto">Café da Manhã, Café da Manhã, Café da Manhã, Café da Manhã, Café da Manhã.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Café da Manhã</li><li class="mod"><b>OPÇÃO 2:</b> Café da Manhã</li><li class="mod"><b>OPÇÃO 3:</b> Café da Manhã</li></ul><h3 class="titulo">Almoço</h3><h4 class="texto">Almoço, Almoço, Almoço, Almoço, Almoço.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Almoço</li><li class="mod"><b>OPÇÃO 2:</b> Almoço</li><li class="mod"><b>OPÇÃO 3:</b> Almoço</li></ul><h3 class="titulo">Jantar</h3><h4 class="texto">Jantar, Jantar, Jantar, Jantar, Jantar.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Jantar</li><li class="mod"><b>OPÇÃO 2:</b> Jantar</li><li class="mod"><b>OPÇÃO 3:</b> Jantar</li></ul>');

insert into modalidade values
(4,'corrida','<center><h3 class="titulo" style="border-bottom: 4px solid #222;">Exemplo de cardápio para praticantes de Corrida</h3></center>
<h3 class="titulo">Café da Manhã</h3><h4 class="texto">O café da manhã, também conhecido como desjejum, é considerado uma das principais refeições do dia. Por isso, ele deve ser completo e com uma boa variedade de nutrientes.
</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Pão integral + ovos mexidos + frutas + café</li><li class="mod"><b>OPÇÃO 2:</b> Salada de frutas + iogurte natural + mel + aveia</li><li class="mod"><b>OPÇÃO 3:</b> Pão francês + queijo branco + frutas + aveia</li></ul><h3 class="titulo">Almoço</h3><h4 class="texto">O almoço deve ser composto basicamente por: ½ prato de vegetais, ¼ de carboidratos e ¼ de proteínas.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Salada de alface e tomate + arroz e feijão + purê de mandioquinha + frango assado</li><li class="mod"><b>OPÇÃO 2:</b> Salada de repolho + arroz e feijão + omelete + jiló refogado</li><li class="mod"><b>OPÇÃO 3:</b> Salada de rúcula + arroz e lentilha + frango assado + brócolis refogados</li></ul><h3 class="titulo">Pré-Treino</h3><h4 class="texto">
Essa refeição é importantíssima para um bom rendimento no treino. Para escolher a sua composição, deve-se levar em consideração o tempo entre a refeição e o treino. Além disso, antes do treino de corrida é importante que o volume da refeição não seja muito grande para evitar desconforto gastrointestinal.</h4><h3 class="subtitulo">Exemplo de refeição</h3><p class="subtitulo2"><b>Tempo MAIOR entre a refeição e o treino</b></p><ul class="lista2"><li class="mod"><b>OPÇÃO 1:</b> Pão integral + queijo + ovos</li><li class="mod"><b>OPÇÃO 2:</b> Mingau de aveia</li><li class="mod"><b>OPÇÃO 3:</b> Refeição completa (arroz, feijão, salada, frango</li></ul><p class="subtitulo2"><b>Tempo MENOR entre a refeição e o treino</b></p><ul class="lista2"><li class="mod"><b>OPÇÃO 1:</b> Banana + canela em pó</li><li class="mod"><b>OPÇÃO 2:</b> Tapioca com queijo</li><li class="mod"><b>OPÇÃO 3:</b> Frutas + whey protein</li></ul><h3 class="titulo">Pós-Treino</h3><h4 class="texto">
A refeição pós-treino serve para recuperação muscular e reposição do glicogênio e para isso, existe uma janela anabólica de 1 a 2 horas após o exercício.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Lanche natural com patê de atum</li><li class="mod"><b>OPÇÃO 2:</b> Mingau de aveia + Whey protein</li><li class="mod"><b>OPÇÃO 3:</b> Frango desfiado + batata doce</li></ul><h3 class="titulo">Jantar</h3><h4 class="texto">Assim como o almoço, essa refeição deve ser completa e com boas fontes de carboidrato, proteínas e gordura.
</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> mix de folhas + batata rústica + filé de frango grelhado</li><li class="mod"><b>OPÇÃO 2:</b> omelete + brócolis e cenoura refogados</li><li class="mod"><b>OPÇÃO 3:</b> salada de alface e tomate + arroz e feijão + bife grelhado + repolho refogado</li></ul>');

insert into modalidade values
(5,'futebol','<center><h3 class="titulo" style="border-bottom: 4px solid #222;">Exemplo de cardápio para praticantes de Futebol</h3></center>
<h3 class="titulo">Café da Manhã</h3><h4 class="texto">Café da Manhã, Café da Manhã, Café da Manhã, Café da Manhã, Café da Manhã.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Café da Manhã</li><li class="mod"><b>OPÇÃO 2:</b> Café da Manhã</li><li class="mod"><b>OPÇÃO 3:</b> Café da Manhã</li></ul><h3 class="titulo">Almoço</h3><h4 class="texto">Almoço, Almoço, Almoço, Almoço, Almoço.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Almoço</li><li class="mod"><b>OPÇÃO 2:</b> Almoço</li><li class="mod"><b>OPÇÃO 3:</b> Almoço</li></ul><h3 class="titulo">Jantar</h3><h4 class="texto">Jantar, Jantar, Jantar, Jantar, Jantar.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Jantar</li><li class="mod"><b>OPÇÃO 2:</b> Jantar</li><li class="mod"><b>OPÇÃO 3:</b> Jantar</li></ul>');

insert into modalidade values
(6,'natacao','<center><h3 class="titulo" style="border-bottom: 4px solid #222;">Exemplo de cardápio para praticantes de Natação</h3></center>
<h3 class="titulo">Café da Manhã</h3><h4 class="texto">Café da Manhã, Café da Manhã, Café da Manhã, Café da Manhã, Café da Manhã.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Café da Manhã</li><li class="mod"><b>OPÇÃO 2:</b> Café da Manhã</li><li class="mod"><b>OPÇÃO 3:</b> Café da Manhã</li></ul><h3 class="titulo">Almoço</h3><h4 class="texto">Almoço, Almoço, Almoço, Almoço, Almoço.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Almoço</li><li class="mod"><b>OPÇÃO 2:</b> Almoço</li><li class="mod"><b>OPÇÃO 3:</b> Almoço</li></ul><h3 class="titulo">Jantar</h3><h4 class="texto">Jantar, Jantar, Jantar, Jantar, Jantar.</h4><h3 class="subtitulo">Exemplo de refeição</h3><ul class="lista"><li class="mod"><b>OPÇÃO 1:</b> Jantar</li><li class="mod"><b>OPÇÃO 2:</b> Jantar</li><li class="mod"><b>OPÇÃO 3:</b> Jantar</li></ul>');

