SELECT cat.nome, SUM(ip.quantidade * ip.preco_unitario) AS total_vendas
FROM Categoria cat
JOIN Produto pr ON cat.id_categoria = pr.id_categoria
JOIN ItemPedido ip ON pr.id_produto = ip.id_produto
GROUP BY cat.nome;

SELECT AVG(total) AS media_pedido
FROM (
    SELECT SUM(quantidade * preco_unitario) AS total
    FROM ItemPedido
    GROUP BY id_pedido
) AS subquery;
