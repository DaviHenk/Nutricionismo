/********************************************************************/
/*  Este arquivo contêm os comandos SQL para criação do banco de 
/* dados e das tabelas utilizadas na solução do TCC 
/* 
/*  Sintaxe SQL: MySQL (DB)
/********************************************************************/

Create database tcc;

use tcc;

   
create table receitas (
   id int NOT NULL,
   imagem varchar(256) NOT NULL,
   tempopreparo int NOT NULL,
   porcao varchar(50) NOT NULL,
   calorias varchar(50) NOT NULL,
   nomereceita varchar(100) NOT NULL,
   idautor int NOT NULL,
   Primary Key (id)
);

Create table receitacategoria (
   idreceita int NOT NULL,
   idcategoria int NOT NULL
);

Create table valornutricional (
   idreceita int NOT NULL,
   idtipocomponente int NOT NULL,
   valor varchar(50) NOT NULL,
   vd varchar(50) NOT NULL
);

create table autor(
   id int NOT NULL,
   nome int NOT NULL,
   email varchar(45),
   celular varchar(20),
   telefone varchar(20),
   Primary key (id)
);

Create table categoria (
   id int NOT NULL,
   nome varchar(50) NOT NULL,
   descricao varchar(2000) NOT NULL,
   Primary key (id)
);

Create table receitaingre (
   idreceita varchar(45) NOT NULL,
   Quantidade decimal(10,2) NOT NULL, 
   idmedida int NOT NULL,
   idtipoinformacao int NOT NULL,
   idingrediente int NOT NULL
);

Create table ingredientes (
   id int NOT NULL,
   nome varchar(50) NOT NULL,
   Primary key (id)
);

Create table tipocomponente (
   id int NOT NULL,
   nome varchar(50) NOT NULL,
   primary key  (id)
);

Create table preparo (
   idreceita int NOT NULL,
   texto varchar(8000) NOT NULL,
   idtipoinformacao int NOT NULL
);

 Create table medidas (
   id int NOT NULL,
   tipomedida varchar(25) NOT NULL,
   primary key  (id)
);

Create table tipoinformacao (
   id int NOT NULL,
   nome varchar(50) NOT NULL,
   primary key (id)
);

/* Parte de modalidade */
 
Create table modalidade (
   id int NOT NULL,
   nome varchar(50) NOT NULL,
   info varchar(10000) NOT NULL,
   primary key (id)
);

   