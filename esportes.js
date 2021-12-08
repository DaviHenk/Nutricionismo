function ExecButton(valor) {
   document.getElementById('pop').style.display='block';
   document.getElementById('iframe_a').src='modalidade.php?mod=' + valor;
}

function Modalidade(idMod) {
   var modalidade;
   var nome;
   var resumo;
   var imagem;
   
   switch (idMod) {
      case 1:
         nome = "tenis";
         modalidade = "Modalidade: Tênis";
         resumo = "Tenis é um esporte praticado por 2 ou 4 jogadores se dividindo em 1 contra 1 ou 2 contra 2, sendo separados por uma rede, onde a pequena bola irá passar, porém a única forma de acerta-lá é com uma raquete que todos os jogadores deveram utilizar " +
                  "O jogo se inicia quando um dos jogadores faça um saque, uma batida inicial para o outro lado, outro time irá rebate-lá de volta e para ganhar um ponto, o time adversário terá que errar a bola e ela bater fora da quadra, bater a bola na rede ou você mesmo acertar ela no chão da equipe adversária. " +
                  "A pontuação se da games/jogos e sets/partidas, sendo o game um conjunto de pontos e o set um conjunto de games<br>" +
                  "<a href=\"https://mundoeducacao.uol.com.br/educacao-fisica/tenis.htm\" target=\"_blank\">https://mundoeducacao.uol.com.br/educacao-fisica/tenis.htm</a>";
         imagem = "imgs/tenis.jpg";
         break;
         
      case 2:
         nome = "basquete";
         modalidade = "Modalidade: Basquete";
         resumo = "O Basquete é um esporte por duas equipes de 5 jogadores que se enfrentam para ver qula equipe pontua mais, as pontuações são feitas quando um jogador acerta a bola na cesta adversária, durante um tempo de 40 minutos, divididos por 2 ou 4 tempos, as equipes sao formadas por 3 tipos de jogadores: 2 alas, 2 armadores e 1 pivô, armadores formam as jogadas." +
                  "A maioria das cestas feitas valem 2 pontos, porém a uma linha chamada Linha dos 3 pontos, pelo nome, é possivel saber que as cestas feitas fora da valeram 3 pontos<br>" +
                  "<a href=\"https://escola.britannica.com.br/artigo/basquete/480747#:~:text=Introdu%C3%A7%C3%A3o,em%20dois%20ou%20quatro%20tempos\" target=\"_blank\">https://escola.britannica.com.br/artigo/basquete/480747#:~:text=Introdu%C3%A7%C3%A3o,em%20dois%20ou%20quatro%20tempos</a>";
         imagem = "imgs/bas.jpg";
         break;
         
      case 3:
         nome = "voleibol";
         modalidade = "Modalidade: Voleibol";
         resumo = "O vôlei é muito amado por muitos amantes a esse esporte, principalmente pela diversão e entretenimento, pois exerce uma dinâmica coletiva e habilidade dos jogadores, sendo jogado por muitos, em praias, praças, quadras e entre outros locais, por outro lado muitos querem se tornar profissionais no vôlei mais por outras dificuldades como financiamento o mais necessário, deixa o gosto pelo esporte como mais diversão, mas mesmo com esses obstáculos, o vôlei é bem executado por muitos que realizam esse esporte.";
         imagem = "imgs/volei.jpg";
         break;
      
      case 4:
         nome = "corrida";
         modalidade = "Modalidade: Corrida";
         resumo = "Atletismo é um esporte de marca que engloba uma série de modalidades esportivas como as corridas, os saltos e os arremessos." +
                  "As provas de atletismo podem ser disputadas no campo, na rua ou numa pista no estádio, individualmente ou por revezamento de atletas.<br>" + 
                  "A maratona, considerada uma das mais importantes disputas olímpicas e encerra o evento, é uma das provas do atletismo.<br>" + 
                  "<a href=\"https://www.significados.com.br/atletismo/\" target=\"_blank\">https://www.significados.com.br/atletismo/</a>";
         imagem = "imgs/corrida.png";
         break;

      case 5:
         nome = "futebol";
         modalidade = "Modalidade: Futebol";
         resumo = "O futebol é um esporte bem pratico e eficiente para muitas pessoas, é de grande importância olhar para esse esporte, pois ele influencia bastante em muitas vidas, muitas pessoas que gostam utilizam esse meio para poder tornar essa vontade em algo profissional ou não, muitos gostam de fazer por diversão tanto profissionalmente, muitas vezes varias pessoas não conseguem algo profissional, mas mesmo não tendo essa chance eles usufruem do futebol por gosto e diversão.";
         imagem = "imgs/fut.jpg";
         break;

      case 6:
         nome = "natacao";
         modalidade = "Modalidade: Natação";
         resumo = "A natação é uma atividade física baseada na capacidade humana de se locomover na água (nadar). Há relatos e indícios da prática do nado há milhares de anos." +
                  "Como esporte, a natação aparece em competições desde meados do século XIX. Está presente também desde a primeira Olimpíada da era moderna em 1896, possuindo uma grande evolução ao longo do tempo." +
                  "A natação é um dos esportes mais praticados em todo o mundo. Além do condicionamento físico, a natação traz diversos benefícios para a saúde, possuindo adeptos de todas as idades.<br>" +
                  "<a href=\"https://www.todamateria.com.br/natacao/\" target=\"_blank\">https://www.todamateria.com.br/natacao/</a>";
         imagem = "imgs/natacao.jpg";
         break;
   }
   document.getElementById('pop').style.display='none';
   
   document.getElementById('info_mod').innerHTML = modalidade;
   document.getElementById('info_res').innerHTML = resumo;
   document.getElementById('info_img').src = imagem;
   document.getElementById('div_inicial').style.display='none';
   document.getElementById('div_info').style.display='block';
   
   document.getElementById('info_btn').onclick = function() {ExecButton(nome)};
}