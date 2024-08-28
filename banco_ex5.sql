/*Execicios 5*/
SELECT * FROM alunos WHERE DATA_NACIMENTO BETWEEN '1998.01.01' and '2001.01.01'

SELECT * FROM alunos WHERE primeiro_nome IN('Rafael', 'Leonardo', 'Pedro', 'Lucas' ,'Maria Aparecida');

SELECT DISTINCT ID_ALUNO FROM alunos_diciplina;

SELECT * FROM tipo_diciplina 
	where nome ilike 'F%' or nome ilike 'O%' 
		and nome IN('Formação Básica', 'Formação acadêmica', 'Opcional', 'Optativa', 'Optimus Prime');

SELECT nome FROM diciplina WHERE NOME BETWEEN 'Algoritmos' AND 'Gestão de Projetos' order by nome desc;

SELECT primeiro_nome as "Primeiro Nome",
	sobrenome as "Sobrenome",
	data_nacimento as "Data de Nascimento"  
	FROM alunos 
	where sobrenome BETWEEN 'Anubis' AND 'Xerxes' 
	and primeiro_nome like '%o%' 
	order by primeiro_nome;
/*exercicios 6*/
SELECT CONCAT(primeiro_nome,' ',sobrenome) FROM alunos

SELECT AGE(data_nacimento) as "idade" FROM alunos;

SELECT CONCAT(sobrenome,', ',primeiro_nome) as "Nome Cientifico" from alunos order by sobrenome;

SELECT * from alunos where AGE(data_nacimento) in ('27 years 8 mons 15 days') and primeiro_nome like 'L%' order by AGE(data_nacimento) desc;

ALTER TABLE ALUNOS_DICIPLINA ADD COLUMN p1 float default 0 CHECK(p1 >= 0 and p1 <= 50);

ALTER TABLE ALUNOS_DICIPLINA ADD COLUMN p2 float DEFAULT 0 CHECK(p1 >= 0 and p1 <= 50);

ALTER TABLE ALUNOS_DICIPLINA ADD COLUMN faltas int;

SELECT * FROM ALUNOS;

select * from alunos_diciplina;

SELECT  aluDic.id_aluno,alu.primeiro_nome,aluDic.id_diciplina,dici.nome,aluDic.p1,aluDic.p2,aluDic.faltas
	FROM ALUNOS as alu 
inner join alunos_diciplina as aluDic 
	on alu.id_alunos = aluDic.id_aluno 
inner join diciplina as dici 
	on dici.id_diciplina = aluDic.id_diciplina;


UPDATE alunos_diciplina SET P1 = 28.3,P2 = 41.0,FALTAS = 1 WHERE id_aluno = 5 and id_diciplina = 1;

UPDATE alunos_diciplina SET P1 = 18.7,P2 = 40.2,FALTAS = 6 WHERE id_aluno = 5 and id_diciplina = 3;

UPDATE alunos_diciplina SET P1 = 17.0,P2 = 14.5,FALTAS = 10 WHERE id_aluno = 5 and id_diciplina = 6;

UPDATE alunos_diciplina SET P1 = 38.1,P2 = 10.5,FALTAS = 7 WHERE id_aluno = 5 and id_diciplina = 8;


