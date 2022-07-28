use db_curso;


/* Criando um novo campo de auditoria no pedido */
ALTER TABLE `pedido`
  ADD column (`updated_at`  decimal(15,2) );


/* Descomentar para excluir a trigger */
#DROP TRIGGER tgr_pedido_ins_upd;


/* Trigger para setar a data e hora da inclusão do registro */
DELIMITER $$
CREATE TRIGGER `tgr_pedido_ins`
BEFORE INSERT ON
    `pedido` FOR EACH ROW
BEGIN
    SET NEW.updated_at = sysdate();
END $$


/* Trigger para setar a data e hora da alteração do registro */
DELIMITER $$
CREATE TRIGGER `tgr_pedido_upd`
BEFORE UPDATE ON
    `pedido` FOR EACH ROW
BEGIN
    SET NEW.updated_at = sysdate();
END $$
