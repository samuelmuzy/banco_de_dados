/*exercicio 1*/
create table alunos(
	id_alunos int generated always as identity primary key, 
	primeiro_nome varchar,
	sobrenome varchar,
	data_nacimento date
);

create table diciplina(
	id_diciplina int primary key generated always as identity,
	nome varchar,
	tipo_diciplina int references tipo_diciplina(id_tipoDiciplina) on delete cascade on update cascade
);


create table alunos_diciplina(
	id_aluno int references alunos(id_alunos) on delete cascade on update cascade,
	id_diciplina int references diciplina(id_diciplina)on delete cascade on update cascade,
	primary key(id_aluno,id_diciplina)
);

create table tipo_diciplina(
	id_tipoDiciplina int primary key generated always as identity,
	nome varchar
);

truncate tipo_diciplina RESTART IDENTITY cascade;
truncate diciplina  RESTART IDENTITY cascade;

select tipo.nome,dici.nome 
	from tipo_diciplina as tipo 
	inner join diciplina as dici 
	on tipo.id_tipoDiciplina = dici.tipo_diciplina;

/*exercios 2*/
insert into alunos(primeiro_nome ,sobrenome,data_nacimento) 
	values 
		('Lucas',' dos Santos Narciso', '31/07/2001'),
		('Luiz', 'Octavio Barros Rodrigues','12/12/1996'),
		('João', 'Marcus da Silva Sousa', '17/09/1999'),
		('Flávia', 'Aparecida Ferrari Toscano', '03/10/2001');
		('Leonardo', 'Nascimento Souza Cruz', '30/05/2002'),
		('Guilherme', 'Riguiti de Oliveira', '03/04/1997'),
		('Pedro' ,'Henrique Carlos de Souza Machado', '12/03/1999'),
		('Marcos', 'Tarcisio Buettel Mota', '04/04/1991')


insert into tipo_diciplina(nome) 
	values 
		('Formação Básica'),
		('Práticas Profissionais'),
		('Formação Complementar'),
		('Projeto Aplicado à Comunidade'),
		('Optativa')

insert into diciplina(nome,tipo_diciplina)
	values
		('Laboratório de Banco de Dados',2),
		('Optativa I',5),
		('Governança em Tecnologia da Informação',3),
		('Linguagem de Programação I',2),
		('Algoritmos',1),
		('Engenharia de Software',2),
		('Gestão de Projetos',3),
		('Projeto Aplicado à Comunidade IV',4),
		('Estruturas de Dados',1);

insert into alunos_diciplina(id_aluno,id_diciplina) 
	values 
		(5,1),
		(5,3),
		(5,6),
		(5,8),
		(6,2),
		(6,3),
		(6,7),
		(6,8),
		(7,2),
		(7,4),
		(7,7),
		(7,8),
		(8,1),
		(8,2),
		(8,3),
		(8,4),
		(8,5),
		(8,6),
		(8,7),
		(8,8),
		(8,9),
		(1,1),
		(1,2),
		(1,6),
		(1,7),
		(1,9),
		(2,3),
		(2,6),
		(2,8),
		(3,3),
		(3,4),
		(3,8),
		(4,1),
		(4,4),
		(4,5),
		(4,7),
		(4,8);

	
		

