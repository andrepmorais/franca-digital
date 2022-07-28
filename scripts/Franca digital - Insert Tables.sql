SET @@autocommit = OFF;
SET @@SQL_SAFE_UPDATES = OFF;

use db_curso;

/* Inserindo a tabela "categoria" */
START TRANSACTION;
  DELETE FROM `produto`;
  DELETE FROM `categoria`;
  INSERT INTO `categoria` (`id_categoria`, `ds_categoria`) VALUES (10, 'TELEFONIA');
  INSERT INTO `categoria` (`id_categoria`, `ds_categoria`) VALUES (11, 'ELETRODOMESTICO');
  INSERT INTO `categoria` (`id_categoria`, `ds_categoria`) VALUES (12, 'INFORMATICA');
  COMMIT;

/* Inserindo a tabela "cliente" */
START TRANSACTION;
  DELETE FROM `cliente`;
  INSERT INTO `cliente` (`id_cliente`, `nm_cliente`, `flag_ouro`) VALUES (5000, 'ANDRE', 1);
  INSERT INTO `cliente` (`id_cliente`, `nm_cliente`, `flag_ouro`) VALUES (5001, 'JOSE ANTONIO', 0);
  INSERT INTO `cliente` (`id_cliente`, `nm_cliente`, `flag_ouro`) VALUES (5002, 'CRISTINA', 0);
  INSERT INTO `cliente` (`id_cliente`, `nm_cliente`, `flag_ouro`) VALUES (5003, 'EDUARDO', 1);
  COMMIT;

/* Inserindo a tabela "produto" */
START TRANSACTION;
  DELETE FROM `produto`;
  INSERT INTO `produto` (`id_produto`, `ds_produto`, `id_categoria`) VALUES (10010, 'MOUSE', 12);
  INSERT INTO `produto` (`id_produto`, `ds_produto`, `id_categoria`) VALUES (10011, 'NOTEBOOK', 12);
  INSERT INTO `produto` (`id_produto`, `ds_produto`, `id_categoria`) VALUES (10012, 'IMPRESSORA', 12);
  INSERT INTO `produto` (`id_produto`, `ds_produto`, `id_categoria`) VALUES (10013, 'FORNO', 11);
  INSERT INTO `produto` (`id_produto`, `ds_produto`, `id_categoria`) VALUES (10014, 'GELADEIRA', 11);
  INSERT INTO `produto` (`id_produto`, `ds_produto`, `id_categoria`) VALUES (10015, 'MICROONDAS', 11);
  INSERT INTO `produto` (`id_produto`, `ds_produto`, `id_categoria`) VALUES (10016, 'IPHONE 11', 10);
  INSERT INTO `produto` (`id_produto`, `ds_produto`, `id_categoria`) VALUES (10017, 'SANSUNG S21', 10);
  COMMIT;

/* Inserindo a tabela "pedido" */
START TRANSACTION;
  DELETE FROM `pedido`;
  INSERT INTO `pedido` (`id_pedido`, `dt_pedido`, `id_cliente`) VALUES (200000, '2022-07-01 10:00:00', 5000);
  INSERT INTO `pedido` (`id_pedido`, `dt_pedido`, `id_cliente`) VALUES (200001, '2022-07-01 12:11:00', 5001);
  INSERT INTO `pedido` (`id_pedido`, `dt_pedido`, `id_cliente`) VALUES (200002, '2022-07-02 09:36:00', 5003);
  INSERT INTO `pedido` (`id_pedido`, `dt_pedido`, `id_cliente`) VALUES (200003, '2022-07-02 18:05:00', 5002);
  INSERT INTO `pedido` (`id_pedido`, `dt_pedido`, `id_cliente`) VALUES (200004, '2022-07-03 13:33:00', 5003);
  INSERT INTO `pedido` (`id_pedido`, `dt_pedido`, `id_cliente`) VALUES (200005, '2022-07-04 14:04:00', 5000);
  INSERT INTO `pedido` (`id_pedido`, `dt_pedido`, `id_cliente`) VALUES (200006, '2022-07-04 11:10:00', 5000);
  INSERT INTO `pedido` (`id_pedido`, `dt_pedido`, `id_cliente`) VALUES (200007, '2022-07-05 10:45:00', 5002);
  COMMIT;

/* Inserindo a tabela "item_pedido" */
START TRANSACTION;
  DELETE FROM `item_pedido`;
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200000, 10010, 2, 15.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200000, 10011, 1, 3000.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200000, 10013, 1, 510.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200001, 10012, 1, 730.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200001, 10014, 1, 2400.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200002, 10016, 1, 5300.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200003, 10013, 2, 510.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200003, 10017, 1, 2800.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200004, 10011, 1, 3000.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200004, 10012, 1, 730.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200004, 10015, 1, 380.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200004, 10017, 1, 2800.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200005, 10013, 1, 510.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200006, 10014, 1, 2400.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200006, 10015, 1, 380.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200007, 10010, 3, 15.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200007, 10011, 1, 3000.00);
  INSERT INTO `item_pedido` (`id_pedido`, `id_produto`, `quantidade`, `vr_unitario`) VALUES (200007, 10012, 1, 730.00);
  COMMIT;
