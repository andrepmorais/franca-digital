use db_curso;

/* View para consolidar o valor total por pedido */
CREATE VIEW `db_curso`.`pedido_vr_total` AS
SELECT ped.id_pedido AS id_pedido
      ,SUM(iped.quantidade * iped.vr_unitario) AS vr_total
  FROM db_curso.item_pedido iped
 INNER JOIN db_curso.pedido ped
    ON (iped.id_pedido = ped.id_pedido)
 WHERE 1=1
 GROUP BY ped.id_pedido
