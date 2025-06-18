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
	ultima_atualizacao timestamp,
	ocaisiao_especial text,
	sinopse text
	
);

create table lingua(
	id_lingua serial,
	nome varchar(20),
	ultima_atualizacao timestamp

);

create table ator_filme(
	id_ator int,	
	id_filme int,
	ultima_atualizacao timestamp	

);

create table ator(
	id_ator serial,
	primeiro_nome varchar(20),
	ultimo_nome varchar(20),
	ultima_atualizacao timestamp
);

create table funcionario(
	id_funcionario serial,
	primeiro_nome varchar(20),
	ultimo_nome varchar(20),
	id_endereco int,
	email varchar(60),
	id_loja int,
	ativo bool,
	username varchar(40),
	senha varchar(12),
	ultima_atualizacao timestamp,
	foto bytea
);

create table pagamento(
	id_pagamento serial,
	id_cliente int,
	id_funcionario int,
	id_aluguel int,
	preco numeric(4, 2),
	data_pagamento timestamp
);

create table aluguel(
	id_aluguel serial,
	data_aluguel timestamp,
	id_inventario int,
	id_cliente int,
	data_retorno timestamp,
	id_funcionario int,
	ultima_atualizacao timestamp
);

create table inventario(
	id_inventario serial,
	id_filme int,
	id_loja int,
	ultima_atualizacao timestamp
);

create table cliente(
	id_cliente serial,
	id_loja int,
	primeiro_nome varchar(20),
	ultimo_nome varchar(20),
	id_endereco int,
	email varchar(60),
	data_criacao date,
	ultima_atualizacao timestamp,
	ativo bool
);

create table endereco(
	id_endereco serial,
	enredeco varchar(50),
	enredeco_2 varchar(50),
	distrito varchar(30),
	id_cidade int,
	cep char(8),
	telefone char(13),
	ultima_atualizacao timestamp
);

create table cidade(
	id_cidade serial,
	cidade varchar(30),
	id_pais int,
	ultima_atualizacao timestamp
);

create table pais(
	id_pais serial,
	pais varchar(50),
	ultima_atualizacao timestamp
);

create table loja(
	id_loja serial,
	id_funcionario int,
	id_endereco int,
	ultima_atualizacao timestamp
);

alter table categoria add
primary key (id_categoria);

alter table filme add
primary key (id_filme);

alter table ator add
primary key (id_ator)

alter table lingua add
primary key (id_lingua)

alter table pais add
primary key (id_pais)

alter table cidade add
primary key (id_cidade)

alter table inventario add
primary key (id_inventario)

alter table loja add
primary key (id_loja)

alter table aluguel add
primary key (id_aluguel)

alter table endereco add
primary key (id_endereco)

alter table pagamento add
primary key (id_pagamento)

alter table cliente add
primary key (id_cliente)

alter table funcionario add
primary key (id_funcionario)


alter table categoria_filme add constraint fk_categoria
foreign key (id_categoria) references categoria(id_categoria);
 
alter table 



