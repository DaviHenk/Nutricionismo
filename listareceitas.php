<!DOCTYPE html>
<html lang="pt-br">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1.0">

      <title>Roonutricionismo</title>
      <link rel="icon" type="image/x-icon" href="imgs/logoEtec.ico">
       
      <link rel="stylesheet" href="css/style-menu.css">
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <link rel="stylesheet" href="css/all.css" >
      
      
      <script src="js/mobile-navbar-menu.js"></script>      
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap2.min.js"></script>
      <!--script src="js/bootstrap2.min.js"></script>-->
   </head>

   <body style="background-color: #DCDCDC;">
      <nav class="shadow-sm p-3 mb-5 navbar navbar-expand-lg navbar-light bg-light fixed-top">
         <div class="container-fluid">
            <a class="navbar-brand" href="#">Roonutricionismo</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                     <a class="nav-link" href="index.html">INÍCIO</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="#"><b>ALIMENTOS</b></a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="esportes.html">ESPORTES</a>
                  </li>
                  <li class="nav-item">
                  <a class="nav-link" href="sobre.html">SOBRE NÓS</a>
                  </li>
               </ul>
               <form class="d-flex">
                 <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                 <button class="btn btn-outline-success" type="submit" style="width:40px;height:40px;background:url(imgs/lupa2.png) center no-repeat;background-size: 35px 100%;"> </button>
               </form>
            </div>
         </div>
      </nav>

      <?php
         /* Faz a tentativa de conexão ao banco de dados, caso falhar, avisa que houve problema */
         try {
            $db1 = new PDO("mysql:host=localhost;dbname=tcc", "root", "password");
         } catch (PDOException $e) {
            echo "<h3>Houve um problema interno. Por favor tentar mais tarde.</h3><h3>Erro [{$e->getMessage()}]</h3>";
            exit;
         }

         /* Obtem o valor do parâmetro para filtro */
         $idmod = $_GET['categ'];
         $paramnome = $_GET['nome'];

         /* Consulta as categoria de receitas existentes */
         $sql = "SELECT * FROM categoria ORDER BY nome;";
         $result = $db1->query($sql);
         if (!$result) {
            echo "<h3>Houve um problema interno. Por favor tentar mais tarde.</h3><h3>Erro [{$pdo->errorInfo()}]</h3>";
            unset($db1);
            exit;
         }

         echo "<div style=\"margin-top:80px;\"><input type=\"checkbox\" id=\"bt_menu\"><label for=\"bt_menu\">&#9776;</label>";

         /* Monta o menu de categoria */
         if ($idmod == null) {
            echo "<nav class=\"menu\">";
         }
         else {
            echo "<nav class=\"menu\" style=\"height: 50px\">";
         }

         echo "<ul class=\"sep shadow-lg p-3 mb-5 bg-white rounded\" style=\"width:200px\"><center><h4 style=\"text-shadow: 0.1em 0.1em 0.2em black; \">Receitas</h4>";
         echo "<li><a href=\"listareceitas.php?categ=*\" class=\"mod\">Todas as receitas disponíveis</a></li>";
         foreach ($result as $row) {
            echo "<li><a href=\"listareceitas.php?categ={$row['id']}&nome={$row['nome']}\" class=\"mod\">{$row['nome']}</a></li>";
         }
         echo "</center></ul></nav></div>";

         /* Verifico se foi passado o parâmetro de filtro*/
         if ($idmod != null) {
            /* Consulta as categoria de receitas existentes */
            if ($idmod == "*") {
               $sql = "SELECT a.*, b.nome as autor FROM receitas a, autor b WHERE a.idautor = b.id;";
               $descr = "<h2 align=\"center\" style=\"position:relative; bottom: 36px;\">Todas</h2>";
            }
            else {
               $sql = "SELECT a.*, b.nome as autor FROM receitas a, autor b, receitacategoria c, categoria d " . 
                      "WHERE a.idautor = b.id and a.id = c.idreceita and c.idcategoria = d.id and d.id = {$idmod};";
               $descr = "<h2 align=\"center\" style=\"position:relative; bottom: 36px;\">{$paramnome}</h2>";
            }
            
            $result = $db1->query($sql);
            if (!$result) {
               echo "<h3>Houve um problema interno. Por favor tentar mais tarde.</h3><h3>Erro [{$pdo->errorInfo()}]</h3>";
               unset($db1);
               exit;
            }

            $contador = 0;
            echo $descr;
            foreach ($result as $row) {
               echo "<div class=\"card car\" style=\"width: 23rem; margin: auto; bottom:10px;\"><img class=\"card-img-top\" src=\"imgs/{$row['imagem']}\" alt=\"{$row['nomereceita']}\"><div class=\"card-body\">";
               echo "<h3 align=\"center\">{$row['nomereceita']}</h3><table width=\"100%\"><tr><td width=\"33%\"><h6 align=\"center\">Rende</h6></td><td width=\"34%\"><h6 align=\"center\">Calorias</h6></td><td width=\"33%\"><h6 align=\"center\">Tempo</h6></td></tr>";
               echo "<tr><td width=\"33%\"><p class=\"card-text\" align=\"center\">{$row['porcao']}</p></td><td width=\"34%\"><p class=\"card-text\" align=\"center\" style=\"border-width:2px;border-left-style:groove;border-right-style:groove;\">{$row['calorias']}</p></td><td width=\"33%\"><p class=\"card-text\" align=\"center\">{$row['tempopreparo']} minutos</p></td></tr></table>";
               echo "<p style=\"margin:5px\"></p><p class=\"card-text\" align=\"right\">Autor da receita: {$row['autor']}</p>";
               echo "<center><button class=\"btn btn-primary\" onclick=\"document.getElementById('pop').style.display='block';document.getElementById('iframe_a').src='receita.php?ident={$row['id']}&titulo={$row['nomereceita']}';\">Mostrar</button></center></div></div><br>";
               $contador++;
            }

            if ($contador < 1) {
               echo "<div id=\"info_div\" style=\"position:relative;marginBottom:300px\"></div>";
            }
         }
         
         unset($db1);
      ?>
     
      <div id="pop" class="pop2">
         <iframe src="blankpage.html" id="iframe_a" height="87%" width="100%" title="Iframe Example" style="border:none;"></iframe>
         <center><button class="btn btn-primary" onclick="document.getElementById('pop').style.display='none';">Fechar</button></center>
      </div>

      <script>
         document.getElementById('navbarSupportedContent').style.zIndex = "1";
         /*info = "200px";
         document.getElementById('info_div').style.marginBottom = info;*/
      </script>

      <!-- Parte do Rodapé-->

      <!--footer starts from here-->
      <footer class="footer" style="">
         <div class="container bottom_border shadow p-3 mb-5">
            <div class="row">

               <div class=" col-sm-4 col-md  col-12 col">
                  <h5 class="headin5_amrc col_white_amrc pt2">Posts Populares</h5>
                  <!--headin5_amrc ends here-->

                  <ul class="footer_ul2_amrc">
                     <li><a href="#"><i class="fab  fleft padding-right"></i></a>
                         <p>Nome do alimento<a href="#"></a></p></li>
                     
                     <hr style="color: grey;">

                     <li><a href="#"><i class="fab  fleft padding-right"></i></a>
                         <p>Nome do esporte<a href="#"></a></p></li>
                     <!--footer_ul2_amrc ends here-->
                  </ul>
               </div>

               <div class=" col-sm-4 col-md col-sm-4  col-12 col">
                  <h5 class="headin5_amrc col_white_amrc pt2">Sobre Nós</h5>
                  <!--headin5_amrc-->
                  <p class="mb10">Esse é o site do grupo de TCC Réquiem da Etec Parque da Juventude. Este site visa orientar atletas que desejam ter recomendações de receitas de acordo com o esporte que praticam.</p>
               </div>

               <div class=" col-sm-4 col-md  col-6 col">
                  <h5 class="headin5_amrc col_white_amrc pt2">Nos Contate</h5>
                  <!--headin5_amrc-->
                  
                  <ul class="footer_ul_amrc">
                     <p class="mb10">Para o esclarecimento de dúvidas, entre em contato conosco, pelas redes sociais, por e-mail ou através dos nossos números de contatos.</p>
                     <p><i class="fa fa-location-arrow"></i> São Paulo, Brasil </p>
                     <p><i class="fa fa-phone"></i>  +55 (11) 1234-5678 </p>
                     <p><i class="fa fa fa-envelope"></i> Exemplo@gmail.com  </p>
                  </ul>
                  <!--footer_ul_amrc ends here-->
               </div>
            </div>
         </div>

         <!--foote_bottom_ul_amrc ends here-->

         <!--social_footer_ul ends here-->
         <div class=" col-sm-4 col-md col-sm-4  col-12 col" style="color: #fff;">
            <p class="mb10" style="position: relative; left: 5%;">©Tcc 2021. Direitos reservados por Réquiem</p>
         </div>

      </footer>
   </body>
</html>
