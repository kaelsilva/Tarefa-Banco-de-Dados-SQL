#--------------Tabela empregado--------------
INSERT INTO empregado(matricula, nome, endereco, salario, supervisor) VALUES (1, 'João Silva', 'Rua Oliveira', 12000, NULL);
INSERT INTO empregado(matricula, nome, endereco, salario, supervisor) VALUES (2, 'Maria Silva', 'Rua Oliveira', 11000, 1);
INSERT INTO empregado(matricula, nome, endereco, salario, supervisor) VALUES (3, 'José Medeiros', 'Rua Madeira', 10000, NULL);
INSERT INTO empregado(matricula, nome, endereco, salario, supervisor) VALUES (4, 'Joana Souza', 'Rua Veneza', 8000, 3);
INSERT INTO empregado(matricula, nome, endereco, salario, supervisor) VALUES (5, 'Joaquim Lima', 'Rua Jardim', 7000, 4);

#--------------Tabela departamento--------------
INSERT INTO departamento(coddep, nome, gerente, dataini) VALUES (1, 'DCT', 1, '2019-01-01');
INSERT INTO departamento(coddep, nome, gerente, dataini) VALUES (2, 'DIR', 2, '2019-02-02');
INSERT INTO departamento(coddep, nome, gerente, dataini) VALUES (3, 'DCEA', 3, '2019-03-03');
INSERT INTO departamento(coddep, nome, gerente, dataini) VALUES (4, 'DEDUC', 4, '2019-04-04');
INSERT INTO departamento(coddep, nome, gerente, dataini) VALUES (5, 'DGEO', 5, '2019-05-05');

#--------------Tabela empregado (atualizando chave estrangeira 'depto')--------------
UPDATE empregado SET depto = 1 WHERE matricula = 1;
UPDATE empregado SET depto = 1 WHERE matricula = 2;
UPDATE empregado SET depto = 2 WHERE matricula = 3;
UPDATE empregado SET depto = 2 WHERE matricula = 4;
UPDATE empregado SET depto = 2 WHERE matricula = 5;

#--------------Tabela projeto--------------
INSERT INTO projeto(codproj, nome, local, depart) VALUES (1, 'Projeto Alfa', 'Sala A1', 1);
INSERT INTO projeto(codproj, nome, local, depart) VALUES (2, 'Projeto Beta', 'Sala B2', 2);
INSERT INTO projeto(codproj, nome, local, depart) VALUES (3, 'Projeto Gama', 'Sala C3', 3);
INSERT INTO projeto(codproj, nome, local, depart) VALUES (4, 'Projeto Sigma', 'Sala D4', 4);
INSERT INTO projeto(codproj, nome, local, depart) VALUES (5, 'Projeto Omega', 'Sala E5', 5);

#--------------Tabela alocacao--------------
INSERT INTO alocacao(matric, codigop, horas) VALUES (1, 1, 10);
INSERT INTO alocacao(matric, codigop, horas) VALUES (2, 2, 20);
INSERT INTO alocacao(matric, codigop, horas) VALUES (3, 3, 30);
INSERT INTO alocacao(matric, codigop, horas) VALUES (4, 4, 40);
INSERT INTO alocacao(matric, codigop, horas) VALUES (5, 5, 50);

#--------------Tabela dependente--------------
INSERT INTO dependente(coddepend, matricula, nome, sexo) VALUES (1, 1, 'Pedro Salgueiro', 'Masculino');
INSERT INTO dependente(coddepend, matricula, nome, sexo) VALUES (2, 1, 'Maria Clara', 'Feminino');
INSERT INTO dependente(coddepend, matricula, nome, sexo) VALUES (3, 3, 'Matheus Luiz', 'Masculino');
INSERT INTO dependente(coddepend, matricula, nome, sexo) VALUES (4, 4, 'Larissa Medeiros', 'Feminino');
INSERT INTO dependente(coddepend, matricula, nome, sexo) VALUES (5, 5, 'Renato Medeiros', 'Masculino');