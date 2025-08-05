INSERT INTO Categoria (nome) VALUES 
('Eletrônicos'), ('Roupas'), ('Livros');

INSERT INTO Cliente (nome, email, endereco) VALUES 
('João Alves', 'joao@email.com', 'Rua A, 123'),
('Maria Pereira', 'maria@email.com', 'Av. B, 456');

INSERT INTO Produto (nome, preco, estoque, id_categoria) VALUES 
('Smartphone', 1999.00, 50, 1),
('Camiseta', 49.00, 100, 2),
('Livro', 89.00, 30, 3);

INSERT INTO Pedido (data_pedido, status, id_cliente) VALUES 
('2025-09-01', 'Entregue', 1),
('2025-09-02', 'Em transporte', 2);

INSERT INTO ItemPedido (quantidade, preco_unitario, id_pedido, id_produto) VALUES 
(1, 2000.00, 1, 1),
(2, 49.00, 1, 2),
(1, 89.00, 2, 3);
