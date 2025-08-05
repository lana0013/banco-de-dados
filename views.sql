CREATE VIEW vw_pedidos_em_andamento AS
SELECT p.id_pedido, c.nome, p.status
FROM Pedido p
JOIN Cliente c ON p.id_cliente = c.id_cliente
WHERE p.status = 'Em transporte';

CREATE VIEW vw_produtos_mais_vendidos AS
SELECT pr.nome, SUM(ip.quantidade) AS total_vendido
FROM Produto pr
JOIN ItemPedido ip ON pr.id_produto = ip.id_produto
GROUP BY pr.nome
ORDER BY total_vendido DESC;
