use db_escola_T

--listar os 3 primeiros id's do alunos (Decrescente)
SELECT TOP 3 matricula 
from tb_aluno
ORDER BY id DESC;

--lista as matriculas dos allunos em ordem crescente
select matricula 
from tb_aluno
order by id ASC;

--Listar todos os alunos
select nome, cpf
from tb_aluno
WHERE nome = 'Jefferson';

--lista o nome da escola Tornoli 
SELECT nome 
FROM tb_escola
WHERE nome = 'Torloni'

--Mostre as turmas qie tem o nome SEDUC
SELECT nome_turma 
FROM tb_turma
WHERE nome_turma = 'SEDUC';

--Exiba somente 2 alunos em ordem do mais recente para o menos recente
SELECT TOP 2 *
from tb_aluno
order by id desc;

--Mostre quantos alunos existe na base
select count (id) As qtd_alunos from tb_aluno;

--Mostre os alunos mais novos
select MAX(data_nasc) AS idade_mais_novo from tb_aluno;

--Mostre os alunos mais velhos
select min(data_nasc) AS idade_mais_velho from tb_aluno;

--Exiba a idade mais velha e a idade mais nova em uma unica consulta
select min(data_nasc) as idade_mais_velho, max(data_nasc) as idade_mais_novo
from tb_aluno

select nome, data_nasc
from tb_aluno
order by data_nasc;

--media de nota que vale nas provas
select AVG (nota) from tb_prova;

--eciba a soma dos id's de turma
select SUM(id) from tb_aluno;


--Mostre os nomes dos alunos mais novos
select MAX(data_nasc) AS idade_mais_novo, nome, 
from tb_aluno
group by nome, 
order by idade_mais_novo desc;

--exibir quantas turmas tem no periodo da tarde
SELECT COUNT (id) 
from tb_turma
where periodo = 'Tarde'
