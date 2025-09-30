--Usar o banco já criado
USE db_escola_T;

--inserir um registro na tabela Escola
INSERT INTO tb_escola (nome, endereco)
VALUES('Torloni', 'Estradas das lágrimas, 579 - São José');
SELECT * FROM tb_escola;

--registro na tabela Turma
INSERT INTO tb_turma(serie, periodo,numero_sala, nome_turma)
VALUES (2, 'Tarde', 16, '2s SEDUC' ), 
(2, 'Manhã', 16, 'SEDUC'),
(2, 'Noite', 16, 'SEDUC'); 

SELECT * FROM tb_turma;

--Inserir um registro na tabela prova

INSERT INTO tb_prova (nome_professor, materia, duracao, data_prova, nota)
VALUES
('Ana Claudia', 'Educação Física','13:15:00', '2025-09-25', 9),
('Rogeria', 'Matemática','14:20:00', '2025-09-26', 9);
SELECT * FROM tb_prova;

--Inserir um registro na tabela aluno
INSERT INTO tb_aluno(nome, cpf, matricula, data_nasc, id_escola)
VALUES ('Maria Louise Santos', '20795288743', 'mariaL0807', '2007/07/08', 1);

INSERT INTO tb_aluno(nome, cpf, matricula, data_nasc, id_escola)
VALUES ('Nathan', '06028973785', '0nathan244', '2007/07/16', 1),
('Jefferson', '59616936000', '0jefer244', '2008/09/16', 1),
('Lucas', '78806049011', '0Lucaas244', '2003/12/06', 1),
('Giovana', '39466817000', '0giovan244', '2005/02/26', 1),
('Paula', '20902612000', '0paulas244', '2006/08/19', 1);

SELECT * FROM tb_prova;

--Inserir registro na tabela turma prova
INSERT INTO tb_turma_prova(id_prova, id_turma)
VALUES (1, 1);

--atualizar um registro pelo seu identificador
UPDATE tb_aluno
SET 
WHERE id = 1;

--apagar um registro pelo seu identificador
DELETE FROM tb_aluno
WHERE id = '6';

select * from tb_aluno