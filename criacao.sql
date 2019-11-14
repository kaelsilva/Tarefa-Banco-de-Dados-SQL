#------------------------Deletando, caso existam, as tabelas para re-execução------------------------
DROP TABLE IF EXISTS dependente CASCADE;
DROP TABLE IF EXISTS projeto CASCADE;
DROP TABLE IF EXISTS departamento CASCADE;
DROP TABLE IF EXISTS empregado CASCADE;
DROP TABLE IF EXISTS alocacao CASCADE;

#------------------------Criando e usando o banco criado------------------------
CREATE DATABASE TarefaBD;

USE TarefaBD;

#------------------------Criando as tabelas sem criar chave estrangeira para outra tabela------------------------
CREATE TABLE empregado (
	matricula INT NOT NULL,
    nome VARCHAR(100),
    endereco VARCHAR(100),
    salario DOUBLE,
    supervisor INT,
    depto INT,
    PRIMARY KEY (matricula)
);

CREATE TABLE departamento (
	coddep INT NOT NULL,
    nome VARCHAR(100),
    gerente INT,
    dataini DATE,
    PRIMARY KEY (coddep)
);

CREATE TABLE projeto (
	codproj INT NOT NULL,
    nome VARCHAR(100),
    local VARCHAR(100),
    depart INT,
    PRIMARY KEY (codproj)
);

CREATE TABLE alocacao (
	matric INT NOT NULL,
    codigop INT NOT NULL,
    horas INT,
    PRIMARY KEY (matric, codigop)
);

CREATE TABLE dependente (
	coddepend INT NOT NULL,
    matricula INT,
    nome VARCHAR(100),
    sexo VARCHAR(9),
    PRIMARY KEY (coddepend, matricula)
);


#-- ~~(IMPORTANTE!)Neste momento, todas as tabelas devem ser povoadas (script de povoamento). Caso contrário, poderão haver erros de povoamento após adicionar chaves estrangeiras!


#------------------------Adicionando as chaves estrangeiras nas tabelas------------------------
ALTER TABLE empregado ADD CONSTRAINT matricula FOREIGN KEY (supervisor) REFERENCES empregado(matricula);
ALTER TABLE empregado ADD CONSTRAINT depto FOREIGN KEY (depto) REFERENCES departamento(coddep);
ALTER TABLE departamento ADD CONSTRAINT gerente FOREIGN KEY (gerente) REFERENCES empregado(matricula);
ALTER TABLE projeto ADD CONSTRAINT depart FOREIGN KEY (depart) REFERENCES departamento(coddep);

#------------------------Deletando as chaves estrangeiras nas tabelas------------------------
ALTER TABLE projeto DROP FOREIGN KEY depart;
ALTER TABLE departamento DROP FOREIGN KEY gerente;
ALTER TABLE empregado DROP FOREIGN KEY depto;
ALTER TABLE empregado DROP FOREIGN KEY supervisor;

#------------------------Comandos para mostrar o estado atual das tabelas------------------------
SELECT * FROM empregado;
SELECT * FROM departamento;
SELECT * FROM alocacao;
SELECT * FROM projeto;
SELECT * FROM dependente;
