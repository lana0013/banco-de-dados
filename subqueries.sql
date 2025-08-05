SELECT nome FROM Cliente
WHERE id_cliente IN (
    SELECT id_cliente FROM Pedido
    WHERE id_pedido IN (
        SELECT id_pedido FROM ItemPedido
        GROUP BY id_pedido
        HAVING SUM(quantidade * preco_unitario) > 100
    )
);

SELECT nome FROM Produto
WHERE estoque < (SELECT AVG(estoque) FROM Produto);
