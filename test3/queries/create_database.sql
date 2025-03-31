CREATE DATABASE IF NOT EXISTS test3;
USE test3;

CREATE TABLE IF NOT EXISTS demonstracoes_contabeis (
	data DATE,
	reg_ans VARCHAR(10),
	cd_conta_contabil VARCHAR(15),
	descricao VARCHAR(200),
	vl_saldo_inicial DECIMAL(10,2),
	vl_saldo_final DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS operadoras_ativas (
	registro_ans VARCHAR(10),
	cnpj VARCHAR(20),
	razao_social VARCHAR(150),
	nome_fantasia VARCHAR(100),
	modalidade VARCHAR(70),
	logradouro VARCHAR(100),
	numero VARCHAR(8),
	complemento VARCHAR(50),
	bairro VARCHAR(100),
	cidade VARCHAR(50),
	uf VARCHAR(2),
	cep VARCHAR(10),
	ddd VARCHAR(4),
	telefone VARCHAR(15),
	fax VARCHAR(15),
	endereco_eletronico VARCHAR(40),
	representante VARCHAR(100),
	cargo_representante VARCHAR(50),
	regiao_de_comercializacao INT,
	data_registro_ans DATE
);

SET GLOBAL local_infile = 1;

LOAD DATA LO

LOAD DATA LOCAL INFILE '/tmp/2T2023.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMICAL INFILE '/tmp/1T2023.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;NATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/tmp/3T2023.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/tmp/4T2023.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/tmp/1T2024.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/tmp/2T2024.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/tmp/3T2024.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/tmp/4T2024.csv'
INTO TABLE demonstracoes_contabeis
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;