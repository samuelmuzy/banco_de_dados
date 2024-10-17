//EXERCICIOS 1

SELECT 
	A.primeiro_nome || A.SOBRENOME,
	D.nome 
FROM 
	ALUNOS AS A 
CROSS JOIN 
	DICIPLINA AS D 
ORDER BY 
	A.primeiro_nome 
DESC;


SELECT 
	CONCAT(A.PRIMEIRO_NOME,' ',A.SOBRENOME) AS "NOME COMPLETO",
	SUM(AD.FALTAS) AS "FALTAS" 
FROM 
	ALUNOS AS A
INNER JOIN
	alunos_diciplina AS AD
ON 
	A.id_alunos = AD.id_aluno
GROUP BY
	"NOME COMPLETO"
ORDER BY 
	"NOME COMPLETO" 
DESC;


SELECT 
	CONCAT(A.sobrenome ,' ', A.PRIMEIRO_NOME) AS "NOME CIENTIFICO", 
	TO_CHAR(A.DATA_NACIMENTO,'DD/MM/YYYY') AS "DATA",
	D.NOME AS "DICIPLINA",
	ROUND(AVG(AD.P1::NUMERIC + AD.P2::NUMERIC),2) AS "MEDIA"
FROM 
	ALUNOS AS A
INNER JOIN
	alunos_diciplina AS AD
ON
	AD.id_aluno = A.id_alunos
INNER JOIN
	DICIPLINA AS D
ON
	D.id_diciplina = AD.id_diciplina
GROUP BY
	"NOME CIENTIFICO","DATA","DICIPLINA"
ORDER BY 
	"NOME CIENTIFICO"
DESC;


SELECT 
	TD.NOME AS "TIPO DICIPLINA", 
	COUNT(D.TIPO_DICIPLINA) AS "Numero de diciplinas" 
FROM
	tipo_diciplina AS TD
INNER JOIN 
	DICIPLINA AS D
ON
	D.TIPO_DICIPLINA = TD.ID_TIPODICIPLINA
GROUP BY
	TD.NOME
HAVING
	COUNT(D.tipo_diciplina) >= 2
ORDER BY
 	TD.NOME;


SELECT 
	D.NOME,
	Min(AD.P1 + AD.P2) AS "MEDIA",
	count(ad.p1 + ad.p2) AS "PIOR MEDIA"
FROM
	diciplina as D
INNER JOIN
	alunos_diciplina AS AD
on
	D.id_diciplina = AD.id_diciplina
WHERE
	(AD.P1 + AD.P2) < 50
GROUP BY
	D.NOME
ORDER BY 
	"MEDIA" DESC ,
	"PIOR MEDIA"

SELECT 
	CONCAT(A.PRIMEIRO_NOME , ' ' , A.SOBRENOME) AS "NOME COMPLETO",
	D.NOME as "Nome diciplina",
	TD.NOME AS "TIPO DICIPLINA",
	AD.FALTAS AS "FALTAS",
	ROUND(AVG(AD.P1::NUMERIC + AD.P2::NUMERIC),2) AS "MEDIA"
FROM
	ALUNOS AS A
INNER JOIN
	ALUNOS_DICIPLINA AS AD
ON
	A.id_alunos = AD.id_aluno
INNER JOIN
	DICIPLINA AS D
ON
	AD.id_diciplina = D.id_diciplina
INNER JOIN
	TIPO_DICIPLINA AS TD
ON
	TD.id_tipodiciplina = D.tipo_diciplina
WHERE 
	A.sobrenome ILIKE '%A%'
AND
	D.nome ILIKE '%O%'
AND 
	AD.faltas <= 10
AND
	CONCAT(a.primeiro_nome , ' ' , a.sobrenome) IN (
		'Ítalo Marcone Souza', 
		'Flavía Aparecida Ferrari Toscano', 
		'Pedro Henrique de Souza Machado Carlos', 
		'Guilherme Riguiti de Oliveira', 
		'Leonardo Nascimento Souza Cruz', 
		'Marcos Tarcisio Buettel Mota'
	)
GROUP BY 
	"NOME COMPLETO",
	"Nome diciplina",
	"TIPO DICIPLINA",
	"FALTAS"
HAVING
	AVG(AD.P1::NUMERIC + AD.P2::NUMERIC) >= 50
ORDER BY
	"NOME COMPLETO"
LIMIT 
	6
;
