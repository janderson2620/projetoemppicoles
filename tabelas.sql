CREATE DATABASE empresa_picoles;
USE empresa_picoles;


CREATE TABLE sabores (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45),
  PRIMARY KEY (id));


CREATE TABLE tipos_embalagem (
  id_tipos_embalagem INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45),
  PRIMARY KEY (id_tipos_embalagem));


CREATE TABLE tipo_picole (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) ,
  PRIMARY KEY (id));


CREATE TABLE picoles (
  id INT NOT NULL AUTO_INCREMENT,
  preco DECIMAL(8,2),
  id_sabor INT,
  id_tipo_embalagem INT,
  id_tipo_picole INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_sabor) REFERENCES sabores (id),
  FOREIGN KEY (id_tipo_embalagem) REFERENCES tipos_embalagem (id_tipos_embalagem),
  FOREIGN KEY (id_tipo_picole) REFERENCES tipo_picole (id));


CREATE TABLE ingredientes (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45),
  PRIMARY KEY (id));


CREATE TABLE ingredientes_picole (
  id INT NOT NULL AUTO_INCREMENT,
  id_ingrediente INT,
  id_picole INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_ingrediente) REFERENCES ingredientes(id),
  FOREIGN KEY (id_picole) REFERENCES picoles (id));


CREATE TABLE aditivos_nutritivos (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45),
  formula_quimica VARCHAR(45),
  PRIMARY KEY (id));


CREATE TABLE aditivos_nutritivos_picole (
  id INT NOT NULL AUTO_INCREMENT,
  id_aditivo_nutritivo INT,
  id_picole INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_aditivo_nutritivo) REFERENCES aditivos_nutritivos (id),
  FOREIGN KEY (id_picole) REFERENCES picoles (id));


CREATE TABLE conservantes (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45),
  descricao VARCHAR(500),
  PRIMARY KEY (id));




CREATE TABLE conservante_picoles (
  id INT NOT NULL AUTO_INCREMENT,
  id_conservante INT,
  id_picole INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_conservante) REFERENCES conservantes (id),
  FOREIGN KEY (id_picole) REFERENCES picoles (id));

CREATE TABLE gerente (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45),
  PRIMARY KEY (id));

CREATE TABLE lotes (
  id INT NOT NULL AUTO_INCREMENT,
  quantidade_picole INT,
  id_tipo_picole INT,
  id_gerente INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_tipo_picole) REFERENCES tipo_picole (id),
  FOREIGN KEY (id_gerente) REFERENCES gerente(id));


CREATE TABLE revendedores (
  id INT NOT NULL AUTO_INCREMENT,
  cnpj VARCHAR(45),
  razao_social VARCHAR(100),
  contato VARCHAR(45),
  PRIMARY KEY (id));


CREATE TABLE funcionarios (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45),
  matricula INT,
  PRIMARY KEY (id));
  
  
CREATE TABLE funcionario_lotes (
  id INT NOT NULL AUTO_INCREMENT,
  id_lote INT,
  id_gerente INT,
  id_funcionario INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_lote) REFERENCES lotes (id),
  FOREIGN KEY (id_gerente) REFERENCES gerente (id),
  FOREIGN KEY (id_funcionario) REFERENCES funcionarios (id));
  

CREATE TABLE notas_fiscais (
  id INT NOT NULL,
  data DATE,
  valor DECIMAL(8,2),
  numero_serie VARCHAR(45),
  descricao VARCHAR(200),
  id_revendedor INT,
  id_funcionario INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_revendedor) REFERENCES revendedores (id),
  FOREIGN KEY (id_funcionario) REFERENCES funcionarios (id));


CREATE TABLE lotes_nota_fiscal (
  id INT NOT NULL AUTO_INCREMENT,
  id_nota_fiscal INt,
  id_lotes INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_nota_fiscal) REFERENCES notas_fiscais (id),
  FOREIGN KEY (id_lotes) REFERENCES lotes (id));
  
  
  

