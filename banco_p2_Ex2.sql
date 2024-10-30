//EXERCICIO10
SELECT 
	D.NOME AS "DICIPLINA",TD.NOME AS "TIPO DICIPLINA" 
FROM 
	DICIPLINA AS D 
RIGHT JOIN 
	TIPO_DICIPLINA AS TD ON D.TIPO_DICIPLINA = TD.id_tipodiciplina
ORDER BY 
	TD.NOME;

SELECT 
	A.PRIMEIRO_NOME AS "Nome do aluno", AD.ID_DICIPLINA AS "id da diciplina"
FROM 
	ALUNOS AS A
LEFT JOIN 
	alunos_diciplina AS AD ON A.id_alunos = AD.id_aluno
ORDER BY 
	A.primeiro_nome;

SELECT 
	A.PRIMEIRO_NOME AS " Nome do Aluno" ,D.NOME AS "Disciplina" 
FROM 
	ALUNOS AS A
FULL JOIN 
	alunos_diciplina AS AD ON A.id_alunos = AD.id_aluno
FULL JOIN 
	DICIPLINA AS D ON D.id_diciplina = AD.id_diciplina
ORDER BY 
	D.nome;

SELECT 
	A.PRIMEIRO_NOME AS "Nome do Aluno" ,D.NOME AS "Disciplina",TD.NOME AS "TIPO DICIPLINA"
FROM 
	ALUNOS AS A
LEFT JOIN 
	alunos_diciplina AS AD ON AD.id_aluno = A.id_alunos
LEFT JOIN 
	DICIPLINA AS D ON D.id_diciplina = AD.id_diciplina
LEFT JOIN 
	tipo_diciplina AS TD ON TD.id_tipodiciplina = D.tipo_diciplina
WHERE 
	AD.id_aluno IS NULL
ORDER BY "Nome do Aluno";

SELECT 
	A.PRIMEIRO_NOME AS "Nome do Aluno" ,A.DATA_NACIMENTO,D.NOME AS "Disciplina"
FROM 
	ALUNOS AS A
LEFT JOIN 
	alunos_diciplina AS AD ON AD.id_aluno = A.id_alunos
LEFT JOIN 
	diciplina AS D ON D.id_diciplina = AD.id_diciplina
WHERE 
	A.data_nacimento > '1.1.1993';

//EXECICIOS11
	
SELECT PRIMEIRO_NOME FROM ALUNOS
	UNION
SELECT NOME FROM DICIPLINA
ORDER BY PRIMEIRO_NOME

SELECT PRIMEIRO_NOME FROM ALUNOS WHERE PRIMEIRO_NOME ILIKE '%A%'
	INTERSECT
SELECT PRIMEIRO_NOME FROM ALUNOS WHERE DATA_NACIMENTO >= '1/1/1999'

SELECT CONCAT(PRIMEIRO_NOME ,' ', SOBRENOME) AS "NOME" FROM ALUNOS WHERE PRIMEIRO_NOME ILIKE '%S%'
	EXCEPT
SELECT CONCAT(PRIMEIRO_NOME ,' ', SOBRENOME) FROM ALUNOS WHERE SOBRENOME ILIKE '%C%'
	ORDER BY "NOME"

SELECT 
	D.NOME as "nome diciplina", TD.NOME as "nome tipo diciplina" 
FROM 
	DICIPLINA AS D 
FULL JOIN 
	tipo_diciplina AS TD ON TD.id_tipodiciplina = D.tipo_diciplina 
WHERE 
	TD.NOME = 'Formação Complementar'

UNION

SELECT 
	D.NOME, TD.NOME 
FROM 
	DICIPLINA AS D 
FULL JOIN 
	tipo_diciplina AS TD ON TD.id_tipodiciplina = D.tipo_diciplina
WHERE 
	TD.NOME = 'Práticas Profissionais'
ORDER BY 
	"nome diciplina","nome tipo diciplina";

SELECT 
	CONCAT(A.PRIMEIRO_NOME , ' ' , A.SOBRENOME),D.NOME 
FROM 
	ALUNOS AS A 
INNER JOIN 
	alunos_diciplina AS AD ON AD.id_aluno = A.id_alunos 
INNER JOIN 
	DICIPLINA AS D ON D.id_diciplina = AD.id_diciplina
GROUP BY 
	D.NOME 
HAVING 
	SUM(AD.P1 + AD.P2) > 70


SELECT 
    (a.primeiro_nome || ' ' || a.sobrenome) AS nome_completo,
    d.nome
FROM 
    alunos a
JOIN 
    alunos_diciplina ad ON a.id_alunos = ad.id_aluno
JOIN 
    diciplina d ON ad.id_diciplina = d.id_diciplina
WHERE
	AD.P1 + AD.P2 >= 70

INTERSECT

SELECT 
    (a.primeiro_nome || ' ' || a.sobrenome) AS nome_completo,
    d.nome
FROM 
    alunos a
JOIN 
    alunos_diciplina ad ON a.id_alunos = ad.id_aluno
JOIN 
    diciplina d ON ad.id_diciplina = d.id_diciplina
WHERE 
    ad.faltas < 10

ORDER BY 
    nome_completo;
