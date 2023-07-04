
-- Consultas ---------------------------------------------------------------------------------------

-- Consultas Básicas
SELECT * FROM sabores;
SELECT * FROM tipos_embalagem;
SELECT * FROM tipo_picole;
SELECT * FROM picoles;
SELECT * FROM ingredientes;
SELECT * FROM ingredientes_picole;
SELECT * FROM aditivos_nutritivos;
SELECT * FROM aditivos_nutritivos_picole;
SELECT * FROM conservantes;
SELECT * FROM conservante_picoles;
SELECT * FROM lotes;
SELECT * FROM revendedores;
SELECT * FROM notas_fiscais;
SELECT * FROM lotes_nota_fiscal;
SELECT * FROM funcionarios;
SELECT * FROM gerente;

-- Outras consultas

-- listar todos os nomes de sabores.
SELECT nome
FROM empresa_picoles.sabores;

-- listar todos os sabores em ordem alfabetica.
SELECT nome
FROM empresa_picoles.sabores
ORDER BY nome;

-- listar todos os nomes das embalagens.
SELECT nome
FROM empresa_picoles.tipos_embalagem;

-- listar todas as embalagens em ordem alfabetica.
SELECT nome
FROM empresa_picoles.tipos_embalagem
ORDER BY nome;

-- mostra todas a quantidade de picoles disponiveis nos lotes
SELECT id as lote_id, quantidade_picole
FROM empresa_picoles.lotes;

-- retorna informações resumidas dos picolés, incluindo o ID, preço, sabor, tipo de embalagem e tipo de picolé.
SELECT pi.id, pi.preco, sb.nome AS sabor, te.nome AS tipo_embalagem, tp.nome AS tipo_picole
FROM empresa_picoles.picoles pi
JOIN empresa_picoles.sabores sb ON pi.id_sabor = sb.id
JOIN empresa_picoles.tipos_embalagem te ON pi.id_tipo_embalagem = te.id_tipos_embalagem
JOIN empresa_picoles.tipo_picole tp ON pi.id_tipo_picole = tp.id;

-- obtem todos os picolés disponíveis com seus respectivos sabores, embalagens e tipos.
SELECT pi.id, sb.nome AS sabor, te.nome AS embalagem, tp.nome AS tipo
FROM picoles pi
JOIN sabores sb ON pi.id_sabor = sb.id
JOIN tipos_embalagem te ON pi.id_tipo_embalagem = te.id_tipos_embalagem
JOIN tipo_picole tp ON pi.id_tipo_picole = tp.id;

-- seleciona o preço minimo e maximo dos picoles.
SELECT MIN(preco) AS preco_minimo, MAX(preco) AS preco_maximo
FROM empresa_picoles.picoles;

-- retorna todos os lotes de picolés com seus respectivos tipos.
SELECT lt.id, tp.nome AS tipo, lt.quantidade_picole
FROM lotes lt
JOIN tipo_picole tp ON lt.id_tipo_picole = tp.id;

-- retorna os picoles com preços acima de um determinado valor.
SELECT pi.id, pi.preco, sb.nome AS sabor, te.nome AS tipo_embalagem, tp.nome AS tipo_picole
FROM empresa_picoles.picoles pi
JOIN empresa_picoles.sabores sb ON pi.id_sabor = sb.id
JOIN empresa_picoles.tipos_embalagem te ON pi.id_tipo_embalagem = te.id_tipos_embalagem
JOIN empresa_picoles.tipo_picole tp ON pi.id_tipo_picole = tp.id
WHERE pi.preco < 5;

-- listar os picoles de um determinado sabor.
SELECT pi.id, pi.preco, te.nome AS tipo_embalagem, tp.nome AS tipo_picole
FROM empresa_picoles.picoles pi
JOIN empresa_picoles.sabores sb ON pi.id_sabor = sb.id
JOIN empresa_picoles.tipos_embalagem te ON pi.id_tipo_embalagem = te.id_tipos_embalagem
JOIN empresa_picoles.tipo_picole tp ON pi.id_tipo_picole = tp.id
WHERE sb.nome = 'Amendoim';

-- obtem todos os picolés disponíveis ordenados por preço em ordem decrescente.
SELECT pi.id, pi.preco, sb.nome AS sabor, te.nome AS tipo_embalagem, tp.nome AS tipo_picole
FROM empresa_picoles.picoles pi
JOIN empresa_picoles.sabores sb ON pi.id_sabor = sb.id
JOIN empresa_picoles.tipos_embalagem te ON pi.id_tipo_embalagem = te.id_tipos_embalagem
JOIN empresa_picoles.tipo_picole tp ON pi.id_tipo_picole = tp.id
ORDER BY pi.preco DESC;

-- retorna os picolés com embalagens do tipo que você quiser pesquisar.
SELECT pi.id, sb.nome AS sabor, te.nome AS tipo_embalagem, tp.nome AS tipo_picole
FROM empresa_picoles.picoles pi
JOIN empresa_picoles.sabores sb ON pi.id_sabor = sb.id
JOIN empresa_picoles.tipos_embalagem te ON pi.id_tipo_embalagem = te.id_tipos_embalagem
JOIN empresa_picoles.tipo_picole tp ON pi.id_tipo_picole = tp.id
WHERE te.nome = 'Pote';

-- listar os lotes de picolés que possuem uma quantidade disponível maior que 100.
SELECT lt.id, tp.nome AS tipo, lt.quantidade_picole
FROM empresa_picoles.lotes lt
JOIN empresa_picoles.tipo_picole tp ON lt.id_tipo_picole = tp.id
WHERE lt.quantidade_picole > 100;

-- obtem o preço médio dos picolés por tipo de picolé.
SELECT tp.nome AS tipo_picole, AVG(pi.preco) AS preco_medio
FROM empresa_picoles.picoles pi
JOIN empresa_picoles.tipo_picole tp ON pi.id_tipo_picole = tp.id
GROUP BY tp.nome;

-- obtem a quantidade total de picolés disponíveis.
SELECT COUNT(pi.id) AS quantidade_total
FROM empresa_picoles.picoles pi;

-- obtem os picolés com preço superior à média de preços de todos os picolés.
SELECT pi.id, pi.preco, sb.nome AS sabor, te.nome AS tipo_embalagem, tp.nome AS tipo_picole
FROM empresa_picoles.picoles pi
JOIN empresa_picoles.sabores sb ON pi.id_sabor = sb.id
JOIN empresa_picoles.tipos_embalagem te ON pi.id_tipo_embalagem = te.id_tipos_embalagem
JOIN empresa_picoles.tipo_picole tp ON pi.id_tipo_picole = tp.id
WHERE pi.preco > (SELECT AVG(preco) FROM empresa_picoles.picoles);