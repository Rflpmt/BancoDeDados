CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id_categoria INT PRIMARY KEY,
nome_categoria VARCHAR(50) NOT NULL,
descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_pizzas(
id_pizza INT PRIMARY KEY,
nome_pizza VARCHAR(50) NOT NULL,
preco DECIMAL(8, 2) NOT NULL,
ingredientes TEXT,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (id_categoria, nome_categoria, descricao_categoria) VALUES
(1, 'Vegetarianas', 'Pizzas vegetarianas'),
(2, 'Veganas', 'Pizzas veganas'),
(3, 'Especiais', 'Pizzas especiais'),
(4, 'Doces', 'Pizzas doces'),
(5, 'Promocionais', 'Pizzas em promoção');

INSERT INTO tb_pizzas (id_pizza, nome_pizza, preco, ingredientes, id_categoria) VALUES
(1, 'Vegetariana de Margherita', 55.00, 'Molho de tomate, mussarela, tomate, manjericão', 1),
(2, 'Vegana de Calabresa', 80.00, 'Molho de tomate, calabresa vegana, cebola, azeitonas', 2),
(3, 'Especial de Quatro Queijos', 57.00, 'Molho de tomate, mussarela, provolone, parmesão, gorgonzola', 3),
(4, 'Doce de Chocolate', 47.00, 'Chocolate, morangos, chantilly', 4),
(5, 'Promocional de Veggie Supreme', 59.00, 'Molho de tomate, mussarela, tomate, pimentão, cebola, azeitonas', 5),
(6, 'Promocional de Vegetariana com Catupiry', 60.00, 'Molho de tomate, mussarela, catupiry, champignon', 5),
(7, 'Promocional de Vegetariana Mista', 65.00, 'Molho de tomate, mussarela, calabresa vegana, presunto vegano, champignon', 5),
(8, 'Especial de Califórnia Vegana', 75.00, 'Molho de tomate, mussarela, presunto vegano, abacaxi, bacon vegano', 3);


SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria WHERE tb_categorias.nome_categoria = 'Vegetarianas';
