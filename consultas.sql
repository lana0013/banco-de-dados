SELECT p.id_pedido, c.nome AS cliente, pr.nome AS produto, ip.quantidade
FROM Pedido p
JOIN Cliente c ON p.id_cliente = c.id_cliente
JOIN ItemPedido ip ON p.id_pedido = ip.id_pedido
JOIN Produto pr ON ip.id_produto = pr.id_produto;

SELECT pr.nome AS produto, cat.nome AS categoria
FROM Produto pr
JOIN Categoria cat ON pr.id_categoria = cat.id_categoria;

SELECT p.id_pedido, c.nome, SUM(ip.quantidade * ip.preco_unitario) AS total
FROM Pedido p
JOIN Cliente c ON p.id_cliente = c.id_cliente
JOIN ItemPedido ip ON p.id_pedido = ip.id_pedido
GROUP BY p.id_pedido, c.nome;
