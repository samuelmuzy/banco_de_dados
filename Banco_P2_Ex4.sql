//Exer 12
CREATE VIEW ALUNOS_SAMUEL AS SELECT ID_ALUNOS,PRIMEIRO_NOME,SOBRENOME FROM alunos;

CREATE OR REPLACE VIEW ALUNOS_SAMUEL AS SELECT ID_ALUNOS,PRIMEIRO_NOME,SOBRENOME,DATA_NACIMENTO FROM alunos;

ALTER VIEW ALUNOS_SAMUEL RENAME TO ALUNOS_SA

DROP VIEW ALUNOS_SA

SELECT * FROM ALUNOS_SAMUEL


CREATE VIEW ALUNOS_NOVOS AS SELECT PRIMEIRO_NOME FROM ALUNOS WHERE PRIMEIRO_NOME ILIKE '%A%'
	INTERSECT
SELECT PRIMEIRO_NOME FROM ALUNOS WHERE DATA_NACIMENTO >= '1999.1.1'

CREATE OR REPLACE VIEW alunos_faltas_acima_media AS
SELECT 
    AD.ID_ALUNO,
    AD.ID_DISCIPLINA,
    AD.FALTAS
FROM 
    ALUNOS_DISCIPLINA AD
WHERE 
    AD.FALTAS > (SELECT AVG(FALTAS) FROM ALUNOS_DISCIPLINA);

SELECT 
    * 
FROM 
    alunos_faltas_acima_media;

CREATE OR REPLACE VIEW relacao_alunos_disciplinas AS
SELECT 
    A.PRIMEIRO_NOME || ' ' || A.SOBRENOME AS NOME_COMPLETO,
    D.NOME AS DISCIPLINA,
    (AD.P1 + AD.P2) AS NOTA_TOTAL,
    AD.FALTAS,
    TD.NOME AS TIPO_DISCIPLINA
FROM 
    ALUNOS AS A
INNER JOIN 
    ALUNOS_DISCIPLINA AS AD ON A.ID_ALUNOS = AD.ID_ALUNO
INNER JOIN 
    DISCIPLINAS AS D ON D.ID_DISCIPLINA = AD.ID_DISCIPLINA
INNER JOIN 
    TIPO_DISCIPLINA AS TD ON TD.ID = D.TIPO_DICIPLINA_ID;
