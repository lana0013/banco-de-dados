DELIMITER //
CREATE PROCEDURE sp_atualizar_estoque(IN produto_id INT, IN qtd_vendida INT)
BEGIN
    UPDATE Produto
    SET estoque = estoque - qtd_vendida
    WHERE id_produto = produto_id;
END //
DELIMITER ;
