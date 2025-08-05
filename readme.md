# README - Sistema de Gerenciamento de E-commerce

## Visão Geral
Este projeto consiste em um sistema de banco de dados para gerenciamento de um e-commerce, com tabelas relacionais para clientes, produtos, pedidos e categorias. O sistema permite realizar consultas, atualizar estoques, visualizar relatórios e análises de vendas.

## Estrutura do Banco de Dados

### Tabelas Principais
1. **Categoria** - Armazena categorias de produtos (Eletrônicos, Roupas, Livros).
![Categorias](caminho/para/sua/imagem.extensão)
2. **Métricas de Pedidos** - Métricas de Pedidos Métricas relacionadas aos pedidos, como a média de valores dos pedidos.
![Media](cassets\media.png)
3. **Produto** - Contém a lista de produtos disponíveis e suas respectivas categorias.
![Produto](assets\produtos.png)
4. **Pedido** - Registro de pedidos dos clientes.
![Pedido](assets\pedidos.png)
5. **Vendas por Categoria** - Totaliza as vendas de cada categoria.
![Vendas](assets\vendas.png) 
6. **Produtos por Cliente** - Registra os produtos adquiridos por cada cliente em suas respectivas ordens.
![Produtos Clientes](assets\prodcliente.png)

### Relacionamentos
- Um cliente pode ter vários pedidos
- Um pedido pode conter vários itens
- Cada produto pertence a uma categoria

## Funcionalidades Principais

### Consultas SQL
- Listagem de pedidos com detalhes de clientes e produtos
- Relação de produtos por categoria
- Cálculo do valor total por pedido
- Análise de vendas por categoria
- Cálculo da média de valor dos pedidos

### Procedures
- `sp_atualizar_estoque`: Atualiza automaticamente o estoque quando um produto é vendido

### Views
- `vw_pedidos_em_andamento`: Mostra pedidos com status "Em transporte"
- `vw_produtos_mais_vendidos`: Ranking de produtos por quantidade vendida

### Subconsultas
- Clientes que fizeram pedidos com valor total superior a R$100
- Produtos com estoque abaixo da média

## Dados de Exemplo
O sistema inclui dados iniciais para demonstração:
- 3 categorias
- 2 clientes
- 3 produtos
- 2 pedidos
- 3 itens de pedido

## Como Utilizar
1. Execute os scripts na seguinte ordem:
   - `tabelas.sql` (criação do banco e tabelas)
   - `inserts.sql` (dados iniciais)
   - `procedure.sql` (procedures)
   - `views.sql` (views)

2. Utilize os scripts de consulta conforme necessidade:
   - `consultas.sql` (consultas básicas)
   - `FA.sql` (análises financeiras)
   - `subqueries.sql` (consultas complexas)

## Relatórios Disponíveis
O sistema gera automaticamente:
- Total de vendas por categoria
- Média de valor dos pedidos
- Produtos mais vendidos
- Pedidos em andamento

## Diagrama de Dados
Consulte o arquivo `tabelas.pdf` para visualizar a estrutura completa das tabelas e exemplos de saída das consultas.

## Requisitos
- MySQL ou compatível
- Permissões para criação de banco de dados e procedures

Este sistema foi desenvolvido para facilitar o gerenciamento de um e-commerce, proporcionando informações estratégicas sobre vendas, estoque e comportamento dos clientes.