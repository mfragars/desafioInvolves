CREATE TABLE DIM_CALENDARIO (
idData INT(10) NOT NULL AUTO_INCREMENT,
DATA DATE,
mes TINYINT(3),
ano MEDIUMINT(4),
PRIMARY KEY (idData)
);

CREATE TABLE DIM_PDV (
idPDV INT(10) NOT NULL,
nomePDV VARCHAR(32),
perfilPDV VARCHAR(32),
PRIMARY KEY (idPDV)
);


CREATE TABLE DIM_LINHA_PRODUTO (
idLinhaProduto INT(10) NOT NULL,
nomeLinhaProduto VARCHAR(32),
perfilLinhaProduto VARCHAR(32),
PRIMARY KEY (idLInhaProduto)
);

CREATE TABLE FT_DISPONIBILIDADE (
id INT(10) NOT NULL AUTO_INCREMENT,
idPDV INT(10),
idLinhaProduto INT(10),
idData INT(10),
qtdPresenca INT(10),
PRIMARY KEY (id)
);

CREATE TABLE FT_DISPONIBILIDADE_AGREGADA (
id INT(10) NOT NULL AUTO_INCREMENT,
idPDV INT(10),
anoMes INT(10),
qtdPresenca INT(10),
PRIMARY KEY (id)
);

CREATE TABLE FT_PONTO_EXTRA (
id INT(10) NOT NULL AUTO_INCREMENT,
idPDV INT(10),
idLinhaProduto INT(10),
idData INT(10),
pontoExtra INT(10),
PRIMARY KEY (id)
);

CREATE TABLE FT_PONTO_EXTRA_AGREGADA (
id INT(10) NOT NULL AUTO_INCREMENT,
idPDV INT(10),
anoMes INT(10),
pontoExtra INT(10),
PRIMARY KEY (id)
);


CREATE TABLE dataset_temp (
idDataSet INT(10) NOT NULL,
idPontoVenda INT(10) NOT NULL,
nomePontoVenda VARCHAR(32),
perfilPontoVenda VARCHAR(32),
DATA DATE,
idLinhaProduto INT(10),
nomeLinhaProduto VARCHAR(32),
marcaLinhaProduto VARCHAR(32),
tipoColeta VARCHAR(32),
valor VARCHAR(16),
PRIMARY KEY (idDataSet)
);