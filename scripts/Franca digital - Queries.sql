use db_curso;

/* Valor total de pedidos por cliente */
SELECT c.nm_cliente
      ,sum(quantidade * ip.vr_unitario) as vr_total
  FROM db_curso.pedido p
  INNER JOIN db_curso.cliente c
    ON (p.id_cliente = c.id_cliente)
  INNER JOIN db_curso.item_pedido ip
    ON (ip.id_pedido = p.id_pedido)
 WHERE 1 = 1
 GROUP BY c.nm_cliente

/* Relacionamento completo entre as tabelas */
SELECT *
  FROM db_curso.item_pedido iped
 INNER JOIN db_curso.pedido ped
   ON (iped.id_pedido = ped.id_pedido)
 INNER JOIN db_curso.cliente cli
   ON (ped.id_cliente = cli.id_cliente)
 INNER JOIN db_curso.produto prod
   ON (iped.id_produto = prod.id_produto)
 INNER JOIN db_curso.categoria cat
   ON (prod.id_categoria = cat.id_categoria)
WHERE 1 = 1
