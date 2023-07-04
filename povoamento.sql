-- ISENÇÕES ---------------------------------------------------------------------------------------
  
  -- Inserção na tabela "sabores"
INSERT INTO sabores (nome) VALUES
('Morango'),
('Chocolate'),
('Baunilha'),
('Limão'),
('Coco'),
('Abacaxi'),
('Uva'),
('Manga'),
('Maracujá'),
('Tangerina'),
('Amendoim');

-- Inserção na tabela "tipos_embalagem"
INSERT INTO tipos_embalagem (nome) VALUES
('Pote'),
('Palito'),
('Caixa'),
('Sachê'),
('Lata'),
('Copo'),
('Bandeja'),
('Copo Descartável'),
('Barca'),
('Potinho'),
('Saquinho');

-- Inserção na tabela "tipo_picole"
INSERT INTO tipo_picole (nome) VALUES
('Normal'),
('Ao leite');

-- Inserção na tabela "picoles"
INSERT INTO picoles (preco, id_sabor, id_tipo_embalagem, id_tipo_picole) VALUES
(3.50, 1, 1, 1),
(2.80, 2, 2, 2),
(4.20, 3, 3, 2),
(3.00, 4, 4, 1),
(2.50, 5, 5, 1),
(3.80, 6, 6, 1),
(2.90, 7, 7, 2),
(3.50, 8, 8, 1),
(3.20, 9, 9, 2),
(2.70, 10, 10, 1),
(3.90, 11, 11, 2);

-- Inserção na tabela "ingredientes"
INSERT INTO ingredientes (nome) VALUES
('Açúcar'),
('Leite'),
('Creme de leite'),
('Chocolate'),
('Frutas'),
('Amendoim'),
('Baunilha'),
('Limão'),
('Coco'),
('Abacaxi'),
('Manga');


-- Inserção na tabela "ingredientes_picole"
INSERT INTO ingredientes_picole (id_ingrediente, id_picole) VALUES
(1, 1),
(1, 6),
(1, 3),
(2, 2),
(2, 10),
(3, 8),
(3, 3),
(4, 7),
(4, 11),
(5, 9),
(5, 2),
(6, 4),
(6, 8),
(7, 4),
(7, 3),
(8, 1),
(8, 4),
(9, 11),
(9, 5),
(10, 6),
(10, 4),
(11, 7),
(11, 10);

-- Inserção na tabela "aditivos_nutrutivos"
INSERT INTO aditivos_nutritivos (nome, formula_quimica) VALUES
('Vitamina C', 'C6H8O6'),
('Ferro', 'Fe'),
('Cálcio', 'Ca'),
('Zinco', 'Zn'),
('Magnésio', 'Mg'),
('Potássio', 'K'),
('Vitamina A', 'C20H30O'),
('Vitamina B12', 'C63H88CoN14O14P'),
('Vitamina D', 'C27H44O'),
('Ácido Fólico', 'C19H19N7O6'),
('Probióticos', 'Varia');

-- Inserção na tabela "aditivos_nutritivos_picole"
INSERT INTO aditivos_nutritivos_picole(id_aditivo_nutritivo, id_picole) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11);



-- Inserção na tabela "conservantes"
INSERT INTO conservantes (nome, descricao) VALUES
('Sorbato de potássio', 'Conservante utilizado para inibir o crescimento de fungos e leveduras'),
('Ácido cítrico', 'Conservante utilizado para ajustar o pH dos alimentos'),
('Nitrito de sódio', 'Conservante utilizado para inibir o crescimento de bactérias e dar cor aos alimentos'),
('Metabissulfito de sódio', 'Conservante utilizado para inibir o crescimento de bactérias e fungos'),
('Ácido acético', 'Conservante utilizado para inibir o crescimento de bactérias e fungos'),
('Propionato de cálcio', 'Conservante utilizado para inibir o crescimento de fungos'),
('Ácido sórbico', 'Conservante utilizado para inibir o crescimento de fungos e leveduras'),
('Sulfito de sódio', 'Conservante utilizado para inibir o crescimento de bactérias e fungos'),
('Benzoato de potássio', 'Conservante utilizado para inibir o crescimento de bactérias e fungos'),
('Citrato de sódio', 'Conservante utilizado para ajustar o pH dos alimentos'),
('Nitrito de potássio', 'Conservante utilizado para inibir o crescimento de bactérias e dar cor aos alimentos');

-- Inserção na tabela "conservante_picoles"
INSERT INTO conservante_picoles (id_conservante, id_picole) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11);

INSERT INTO gerente (nome) VALUES
('Gervasio');

-- Inserção na tabela "lotes"
INSERT INTO lotes (id_tipo_picole, quantidade_picole, id_gerente) VALUES
(1, 100, 1),
(1, 200, 1),
(2, 150, 1),
(1, 450, 1),
(1, 220, 1),
(1, 360, 1),
(1, 415, 1),
(1, 125, 1),
(2, 150, 1),
(2, 300, 1);

-- Inserção na tabela "revendedores"
INSERT INTO revendedores (cnpj, razao_social, contato) VALUES
('12345678000100', 'Sabor Puro', 'saborpuro@gmail.com'),
('98765432000101', 'Picolé Mania', 'picolemania@hotmail.com'),
('24681357000102', 'Doce Refrescante', 'docerefrescante@gmail.com'),
('13579246800103', 'Gelato Express', 'gelatoexpress@gmail.com'),
('86420975300104', 'Frosty Delights', 'frostydelights@gmail.com'),
('56789012300105', 'Gelo Gostoso', 'gelogostoso@hotmail.com'),
('43210987600106', 'IcePop Delights', 'icepopdelights@outlook.com'),
('90123456700107', 'Frozen Delights', 'frozendelights@outlook.com'),
('65432109800108', 'Delícia Gelada', 'deliciagelada@gmail.com'),
('78901234500109', 'Frescor Gelado', 'frescorgelado@outlook.com');


-- Inserção na tabela "funcionarios"
INSERT INTO funcionarios (nome, matricula) VALUES
('Miguel', 15456),
('Gabriel', 20213),
('Pedro', 3313),
('Arthur', 4211),
('Davi', 5345),
('Bernardo', 62435),
('Lucas', 7623),
('Matheus', 82356),
('Rafael', 92356),
('Samuel', 10233),
('Theo', 11256);

INSERT INTO funcionario_lotes(id_lote, id_funcionario, id_gerente) VALUES
(5, 1, 1),
(4, 1, 1),
(2, 1, 1),
(5, 2, 1),
(5, 3, 1),
(5, 4, 1),
(5, 5, 1),
(5, 5, 1),
(5, 8, 1),
(4, 7, 1);


-- Inserção na tabela "notas_fiscais"
INSERT INTO notas_fiscais (id, data, valor, numero_serie, descricao, id_revendedor, id_funcionario) VALUES
(1, '2023-05-01', 150.00, 'SER001', 'Venda de picolés para cliente X', 1, 1),
(2, '2023-05-02', 250.00, 'SER002', 'Venda de picolés para cliente Y', 2, 2),
(3, '2023-05-03', 180.00, 'SER003', 'Venda de picolés para cliente Z', 3, 3),
(4, '2023-05-04', 200.00, 'SER004', 'Venda de picolés para cliente W', 4, 4),
(5, '2023-05-05', 120.00, 'SER005', 'Venda de picolés para cliente V', 5, 5),
(6, '2023-05-06', 300.00, 'SER006', 'Venda de picolés para cliente U', 6, 6),
(7, '2023-05-07', 160.00, 'SER007', 'Venda de picolés para cliente T', 7, 7),
(8, '2023-05-08', 140.00, 'SER008', 'Venda de picolés para cliente S', 8, 8),
(9, '2023-05-09', 170.00, 'SER009', 'Venda de picolés para cliente R', 9, 9),
(10, '2023-05-10', 190.00, 'SER010', 'Venda de picolés para cliente Q', 10, 10),
(11, '2023-05-11', 130.00, 'SER011', 'Venda de picolés para cliente P', 10, 11);

-- Inserção na tabela "lotes_nota_fiscal"

INSERT INTO lotes_nota_fiscal (id_nota_fiscal, id_lotes) VALUES 
(1, 1),
(2, 2),
(3, 3), 
(4, 4),
(6, 6), 
(7, 7), 
(8, 8), 
(9, 9), 
(10, 10);