SELECT * FROM alunos;

update alunos set primeiro_nome = 'Flavía Aparecida' 
	where id_alunos = 4;

select primeiro_nome as "nome do aluno" from alunos;

/*exercicios 3*/

SELECT * FROM diciplina;

SELECT primeiro_nome AS "Nome",sobrenome AS "Sobrenome",data_nacimento AS "Data de Nacimento" 
	FROM alunos;

SELECT id_aluno FROM alunos_diciplina WHERE id_diciplina = 1;

SELECT * FROM alunos ORDER BY data_nacimento ASC

SELECT nome AS "Nome da Diciplina",tipo_diciplina AS "Unidade de ensino" 
	FROM diciplina 
		ORDER BY tipo_diciplina DESC;

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





