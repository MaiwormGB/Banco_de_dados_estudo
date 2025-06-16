create database aula16;

create table categoria(
	id_categoria serial,
	nome varchar(20),
	ultima_atualizacao timestamp
);

create table categoria_filme(
	id_filme int,
	id_categoria int,
	ultima_atualizacao timestamp
);

create table filme(
	id_filme serial,
	titulo varchar(40),
	descricao text,
	ano_lancamento date,
	id_linguagem int,
	duracao_aluguel date,
	preco_aluguel numeric(4,2),
	duracao int,
	multa_reposicao numeric(4,2),
	class_indicativa int,
	ultima_atualizacao timestamp
	
	
);
