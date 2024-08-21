select * from alunos;

update alunos set primeiro_nome = 'Flavía Aparecida' 
	where id_alunos = 4;

select primeiro_nome as "nome do aluno" from alunos;

/*exercicios 3*/

select * from diciplina;

select primeiro_nome as "Nome",sobrenome as "Sobrenome",data_nacimento as "Data de Nacimento" 
	from alunos;

select id_aluno from alunos_diciplina where id_diciplina = 1;

select * from alunos order by data_nacimento asc

select nome as "Nome da Diciplina",tipo_diciplina as "Unidade de ensino" 
	from diciplina 
		order by tipo_diciplina desc;

SELECT primeiro_nome as "Primeiro Nome do Aluno", 
	sobrenome as "Sobrenome Do Aluno", 
	data_nacimento as "Data de nascimento do aluno" 
		FROM alunos WHERE data_nacimento > '1999.12.30' ORDER BY data_nacimento asc;

/*exercicios 4 */

SELECT * FROM diciplina WHERE nome LIKE 'L%';

SELECT * FROM tipo_diciplina where nome ILIKE 'F%C%';

SELECT * FROM alunos WHERE primeiro_nome LIKE '______';

SELECT * FROM alunos WHERE primeiro_nome LIKE 'L%_______' and data_nacimento > '1999.12.30';

SELECT primeiro_nome, sobrenome, data_nacimento FROM alunos WHERE primeiro_nome ILIKE '%O'

SELECT * FROM alunos_diciplina WHERE id_aluno = 6 or id_diciplina = 1;

SELECT nome as "Diciplina",tipo_diciplina as "Area" 
	FROM diciplina 
		WHERE nome LIKE 'L%' or nome LIKE 'G%' 
			ORDER BY nome asc

SELECT primeiro_nome as "Nome do Cliente", 
	sobrenome as "Sobrenome do Cliente", 
	data_nacimento as "Data de Nacimento" 
FROM 
	alunos 
WHERE 
	sobrenome Like '%a' 
	or primeiro_nome ILIKE '%m%a%'
	ORDER BY data_nacimento DESC





