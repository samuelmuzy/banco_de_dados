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


UPDATE alunos_diciplina SET P1 = 49.0,P2 = 35.5,FALTAS = 14 WHERE id_aluno = 6 and id_diciplina = 2;

UPDATE alunos_diciplina SET P1 = 18.8,P2 = 25.7,FALTAS = 2 WHERE id_aluno = 6 and id_diciplina = 3;

UPDATE alunos_diciplina SET P1 = 29.1,P2 = 33.7,FALTAS = 5 WHERE id_aluno = 6 and id_diciplina = 7;

UPDATE alunos_diciplina SET P1 = 37.6,P2 = 22.4,FALTAS = 3 WHERE id_aluno = 6 and id_diciplina = 8;


UPDATE alunos_diciplina SET P1 = 17.9,P2 = 44.5,FALTAS = 7 WHERE id_aluno = 7 and id_diciplina = 2;

UPDATE alunos_diciplina SET P1 = 12.0,P2 = 32.4,FALTAS = 0 WHERE id_aluno = 7 and id_diciplina = 4;

UPDATE alunos_diciplina SET P1 = 9.2,P2 = 27.3,FALTAS = 11 WHERE id_aluno = 7 and id_diciplina = 7;

UPDATE alunos_diciplina SET P1 = 28.0,P2 = 36.1,FALTAS = 4 WHERE id_aluno = 7 and id_diciplina = 8;



UPDATE alunos_diciplina SET P1 = 13.0,P2 = 26.7,FALTAS = 10 WHERE id_aluno = 8 and id_diciplina = 1;

UPDATE alunos_diciplina SET P1 = 29.4,P2 = 34.1,FALTAS = 1 WHERE id_aluno = 8 and id_diciplina = 2;

UPDATE alunos_diciplina SET P1 = 45.5,P2 = 16.8,FALTAS = 12 WHERE id_aluno = 8 and id_diciplina = 3;

UPDATE alunos_diciplina SET P1 = 38.7,P2 = 11.2,FALTAS = 2 WHERE id_aluno = 8 and id_diciplina = 4;

UPDATE alunos_diciplina SET P1 = 4.0,P2 = 18.5,FALTAS = 12 WHERE id_aluno = 8 and id_diciplina = 5;

UPDATE alunos_diciplina SET P1 = 21.6,P2 = 40.8,FALTAS = 6 WHERE id_aluno = 8 and id_diciplina = 6;

UPDATE alunos_diciplina SET P1 = 37.6,P2 = 12.7,FALTAS = 8 WHERE id_aluno = 8 and id_diciplina = 7;

UPDATE alunos_diciplina SET P1 = 22.1,P2 = 42.3,FALTAS = 1 WHERE id_aluno = 8 and id_diciplina = 8;

UPDATE alunos_diciplina SET P1 = 49.2,P2 = 29.9,FALTAS = 0 WHERE id_aluno = 8 and id_diciplina = 9;



UPDATE alunos_diciplina SET P1 = 7.0,P2 = 44.5,FALTAS = 9 WHERE id_aluno = 1 and id_diciplina = 1;

UPDATE alunos_diciplina SET P1 = 41.8,P2 = 36.8,FALTAS = 14 WHERE id_aluno = 1 and id_diciplina = 2;

UPDATE alunos_diciplina SET P1 = 12.6,P2 = 40.2,FALTAS = 8 WHERE id_aluno = 1 and id_diciplina = 6;

UPDATE alunos_diciplina SET P1 = 26.4,P2 = 18.7,FALTAS = 11 WHERE id_aluno = 1 and id_diciplina = 7;

UPDATE alunos_diciplina SET P1 = 47.4,P2 = 32.1,FALTAS = 5 WHERE id_aluno = 1 and id_diciplina = 9;



UPDATE alunos_diciplina SET P1 = 0.0,P2 = 37.5,FALTAS = 12 WHERE id_aluno = 2 and id_diciplina = 3;

UPDATE alunos_diciplina SET P1 = 48.5,P2 = 28.9,FALTAS = 4 WHERE id_aluno = 2 and id_diciplina = 6;

UPDATE alunos_diciplina SET P1 = 37.3,P2 = 39.1,FALTAS = 13 WHERE id_aluno = 2 and id_diciplina = 8;



UPDATE alunos_diciplina SET P1 = 29.4,P2 = 50.0,FALTAS = 3 WHERE id_aluno = 3 and id_diciplina = 3;

UPDATE alunos_diciplina SET P1 = 14.0,P2 = 4.5,FALTAS = 2 WHERE id_aluno = 3 and id_diciplina = 4;

UPDATE alunos_diciplina SET P1 = 25.2,P2 = 33.8,FALTAS = 1 WHERE id_aluno = 3 and id_diciplina = 8;



UPDATE alunos_diciplina SET P1 = 27.8,P2 = 42.1,FALTAS = 0 WHERE id_aluno = 4 and id_diciplina = 1;

UPDATE alunos_diciplina SET P1 = 45.3,P2 = 21.2,FALTAS = 11 WHERE id_aluno = 4 and id_diciplina = 4;

UPDATE alunos_diciplina SET P1 = 3.7,P2 = 36.3,FALTAS = 15 WHERE id_aluno = 4 and id_diciplina = 5;

UPDATE alunos_diciplina SET P1 = 16.5,P2 = 41.7,FALTAS = 5 WHERE id_aluno = 4 and id_diciplina = 7;

UPDATE alunos_diciplina SET P1 = 46.2,P2 = 44.5,FALTAS = 2 WHERE id_aluno = 4 and id_diciplina = 8;
