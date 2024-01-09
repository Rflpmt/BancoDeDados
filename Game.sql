CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe (
id_classe INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (50) NOT NULL,
tipo_monstro VARCHAR (50) NOT NULL,
estrelas INT 
);

CREATE TABLE tb_personagens (
id_personagens INT AUTO_INCREMENT PRIMARY KEY,
nome_card VARCHAR(50) NOT NULL,
nivel INT,
ataque VARCHAR(100) NOT NULL,
defesa VARCHAR(100) NOT NULL,
id_classe INT,
FOREIGN KEY (id_classe) REFERENCES tb_classe(id_classe)
);

INSERT INTO tb_classe (nome, tipo_monstro, estrelas) VALUES
('Dragão Cibernetico','Dragão Maquina', 5),
('Dragão Cibernetico','Dragão Maquina', 5),
('Dragão Cibernetico','Dragão Maquina', 5),
('Polimerização', 'Magica', 2),
('Dragão Final Cibernetico', 'Dragão Maquina', 12),
('Dark Dragão Cibernetico', 'Dragão Maquina' , 12);

INSERT INTO tb_personagens (nome_card, nivel, ataque, defesa, id_classe) VALUES
('Ojama Yellow', 2, 0, 1000, 2),
('Ojama Green', 2, 0, 1000, 1),
('Ojama Black', 2, 0, 1000, 3),
('Ojama Pink', 2, 0, 1000, 5),
('Ojama Knight', 5, 0, 2500, 2),
('Ojama King', 6, 0, 3000, 5),
('Ojama Red', 2, 0, 1000, 0),
('Ojama Blue', 2, 0, 1000, 4);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_card LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_personagens.id_classe = tb_classe.id_classe;

SELECT * FROM tb_personagens
INNER JOIN tb_classe ON tb_personagens.id_classe = tb_classe.id_classe
WHERE tb_classe.nome = 'Dragão Cibernetico';












