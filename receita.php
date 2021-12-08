<html>
   <head>
      <meta charset="utf-8">
      <title>Receita</title>
      
      <link rel="stylesheet" href="css/style-receita.css">
   </head>
   <body>
      <?php
         try {
            $db1 = new PDO("mysql:host=localhost;dbname=tcc", "root", "password");
         } catch (PDOException $e) {
            echo "<h3>Houve um problema interno no acesso à essa receita. Por favor tentar mais tarde.</h3><h3>Erro [{$e->getMessage()}]</h3>";
            exit;
         }
         
         $idreceita = $_GET['ident'];
         $titulo = $_GET['titulo'];

         if ($idreceita == null) {
            echo "<h3>Receita não selecionada. Por favor selecionar uma receita.</h3>";
            exit;
         }
         
         $sql = "SELECT a.quantidade, d.tipomedida, b.nome as ingrediente, c.nome as separacao FROM receitaingre a, ingredientes b, tipoinformacao c, medidas d WHERE a.idreceita = {$idreceita} and a.idingrediente = b.id and a.idtipoinformacao = c.id and a.idmedida = d.id order by a.idtipoinformacao;";
         $result = $db1->query($sql);
         if (!$result) {
            echo "<h3>Houve um problema interno no acesso à essa receita. Por favor tentar mais tarde.</h3><h3>Erro [{$pdo->errorInfo()}]</h3>";
            unset($db1);
            exit;
         }
         
         $contador = 0;
         $auxiliar = "";
         foreach ($result as $row) {
            if ($contador == 0) {
               print "<h1 class=\"titulo2\" align=\"center\">{$titulo}</h1><hr align=\"left\" width=\"100%\" style=\"border-top: 4px solid #222;\" ><h3 class=\"titulo\">Ingredientes</h3><ul class=\"lista\">";
            }
            $contador++;
            if ($auxiliar != $row['separacao']) {
               $auxiliar = $row['separacao'];
               print "</ul><h3 class=\"subtitulo\">{$auxiliar}</h3><ul class=\"lista\">";
            }
            if ($row['quantidade'] == 0) {
               print "<li class=\"mod\">{$row['ingrediente']} - a gosto</li>";
            }
            else {
               print "<li class=\"mod\">{$row['quantidade']} {$row['tipomedida']} - {$row['ingrediente']}</li>";
            }
         }
         if ($contador == 0) {
            print "<h1 class=\"titulo2\" align=\"center\">Não foi possível encontrar a lista de ingredientes dessa receita</h1>";
         }
         else {
            print "</ul>";
         
            print "<hr align=\"left\" width=\"100%\" style=\"border-top: 4px double black;\">";
         
            $sql = "SELECT a.texto, b.nome FROM preparo a, tipoinformacao b WHERE a.idreceita = {$idreceita} and a.idtipoinformacao = b.id order by a.idtipoinformacao;";
            $result = $db1->query($sql);
            if (!$result) {
               echo "<h3>Houve um problema interno no acesso à essa receita. Por favor tentar mais tarde.</h3><h3>Erro [" . $pdo->errorInfo() . "]</h3>";
               unset($db1);
               exit;
            }
           
            $auxiliar = ".";
            foreach ($result as $row) {
               if ($auxiliar != $row['nome']) {
                  if ($auxiliar == "." ) {
                     print "<h3 class=\"titulo\">Modo de preparo</h3><h4 class=\"texto\" style=\"max-width: 90%\">{$row['texto']}</h4>";
                  }
                  else {
                     print "<h3 class=\"subtitulo\">{$row['nome']}</h3><h4 class=\"texto\" style=\"max-width: 90%\">{$row['texto']}</h4>";
                  }
                  $auxiliar = $row['nome'];
               }
            }
            print "<hr align=\"left\" width=\"100%\" style=\"border-top: 4px solid #222;\" >";
         }         
         unset($db1);
      ?>

   </body>
</html>