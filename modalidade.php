<html>
   <head>
      <meta charset="utf-8">
      <title>Modalidade</title>
      
      <link rel="stylesheet" href="css/style-modalidade.css">
   </head>
   <body style="max-width: 95%">
      <?php
         try {
            $db1 = new PDO("mysql:host=localhost;dbname=tcc", "root", "password");
         } catch (PDOException $e) {
            echo "<h3>Houve um problema interno no acesso à essa modalidade. Por favor tentar mais tarde.</h3><h3>Erro [{$e->getMessage()}]</h3>";
            exit;
         }
         
         $idmod = $_GET['mod'];
         if ($idmod == null) {
            echo "<h3>Modalidade não selecionada. Por favor selecionar uma modalidade.</h3>";
            exit;
         }
         
         $sql = "SELECT nome,info FROM modalidade WHERE nome = lower('{$idmod}');";
         $result = $db1->query($sql);
         if (!$result) {
            echo "<h3>Houve um problema interno no acesso à essa modalidade. Por favor tentar mais tarde.</h3><h3>Erro [{$pdo->errorInfo()}]</h3>";
            unset($db1);
            exit;
         }
         
         foreach ($result as $row) {
            echo $row['info'];
         }
         unset($db1);
      ?>
   </body>
</html>