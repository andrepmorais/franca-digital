SET @@autocommit = OFF;
SET @@SQL_SAFE_UPDATES = OFF;

use db_curso;


/* Criando o campo "vr_total" na tabela "pedido"  */
ALTER TABLE `pedido`
  ADD column (`vr_total`  decimal(15,2) );

ALTER TABLE `pedido`
  DROP column `vr_total`;

ALTER TABLE `pedido`
  ADD column (`vr_total`  decimal(15,2) DEFAULT 0.00);


/* Ajustando o "vr_total" de pedidos na tabela "pedido" */
UPDATE db_curso.pedido ped1
 INNER JOIN (SELECT ped.id_pedido
                   ,SUM(iped.quantidade * iped.vr_unitario) as vr_total
               FROM db_curso.item_pedido iped
              INNER JOIN db_curso.pedido ped
                 ON (iped.id_pedido = ped.id_pedido)
              WHERE 1=1
              GROUP BY ped.id_pedido) AS ped2
    ON (ped1.id_pedido = ped2.id_pedido)
   SET ped1.vr_total = ped2.vr_total;
