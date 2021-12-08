/********************************************************************/
/*  Este arquivo contêm as consultas a serem utilizada para a 
/* construção do site da solução do TCC.
/*  Em algumas consultas tem informações indicadas com "<...>". Essas
/* informações tem que ser substituída pelo correspondente. 
/*  As informações a serem susbtituídas são:
/*     <id da receita>
/*     <id da modalidade>
/*     <nome da modalidade> - nesse caso, o ideal seria deixar esse 
/*   campo com uma informação ou tudo maiúscula ou tudo minúsula sem
/*   acentuação e usar o comando Upper() ou Lower() respectivamente.
/* 
/*  Sintaxe SQL: MySQL (DB)
/********************************************************************/

/* Faz a consulta da lista de receitas associadas à uma categoria */
SELECT   a.*, b.nome as autor, d.nome as categoria
FROM     receitas a, autor b, receitacategoria c, categoria d
WHERE    a.idautor = b.id
     and a.id = c.idreceita
     and c.idcategoria = d.id
;

/* Faz a consulta da lista de todas as receitas no banco de dados */
SELECT   a.*, b.nome as autor 
FROM     receitas a, autor b 
WHERE    a.idautor = b.id
;

/* Faz a consulta da lista de ingredientes de uma receita */
SELECT   a.quantidade, d.tipomedida, b.nome, c.nome
FROM     receitaingre a, ingredientes b, tipoinformacao c, medidas d
WHERE    a.idreceita = <id da receita>
     and a.idingrediente = b.id
     and a.idtipoinformacao = c.id
     and a.idmedida = d.id
ORDER BY a.idtipoinformacao
;

/* Faz a consulta do modo de preparo de uma receita */
SELECT   a.texto, b.nome
FROM     preparo a, tipoinformacao b
WHERE    a.idreceita = <id da receita>
     and a.idtipoinformacao = b.id
;

/* Faz a consulta da lista de valor nutricional dos ingredientes de uma receita */
SELECT   b.nome, a.valor, a.vd
FROM     valornutricional a, tipocomponente b
WHERE    a.idreceita = <id da receita>
     and a.idtipocomponente = b.id
;

/* Faz a consulta de lista de modalidades existentes */
SELECT   a.id, a.nome
FROM     modalidade a
;

/* Faz a consulta de exemplo de dieta para uma modalidade, buscando pelo ID */
SELECT   a.nome , a.info
FROM     modalidade a
WHERE    a.id = <id da modalidade>
;

/* Faz a consulta de exemplo de dieta para uma modalidade, buscando pelo nome */
SELECT   a.nome , a.info
FROM     modalidade a
WHERE    a.nome = '<nome da modalidade>'
;
