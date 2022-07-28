/* Criando o Schema/database */
CREATE DATABASE db_curso;

/* Setando o Schema de trabalho */
use db_curso;

/* Habilitar caso deseja refazer a estrutura */
#DROP TABLE `item_pedido`;
#DROP TABLE `pedido`;
#DROP TABLE `cliente`;
#DROP TABLE `produto`;
#DROP TABLE `categoria`;

CREATE TABLE `cliente` (
  `id_cliente` integer PRIMARY KEY,
  `nm_cliente` varchar(100),
  `flag_ouro` boolean
);

CREATE TABLE `pedido` (
  `id_pedido` integer PRIMARY KEY,
  `dt_pedido` datetime,
  `id_cliente` integer
);

CREATE TABLE `item_pedido` (
  `id_pedido` integer,
  `id_produto` integer,
  `quantidade` integer,
  `vr_unitario` decimal(15,2),
  PRIMARY KEY (`id_pedido`, `id_produto`)
);

CREATE TABLE `produto` (
  `id_produto` integer PRIMARY KEY,
  `ds_produto` varchar(100),
  `id_categoria` integer
);

CREATE TABLE `categoria` (
  `id_categoria` integer PRIMARY KEY,
  `ds_categoria` varchar(100)
);

ALTER TABLE `pedido` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

ALTER TABLE `item_pedido` ADD FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`);

ALTER TABLE `produto` ADD FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);

ALTER TABLE `item_pedido` ADD FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`);
