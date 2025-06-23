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
	ano_lancamento char(4),
	id_lingua int,
	duracao_aluguel int,
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
	data_criacao timestamp,
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

--remover e adicionar colunas
alter table filme drop column id_linguagem; 
alter table filme add column id_lingua int;

alter table cliente drop column data_criacao;
alter table cliente add column data_criacao timestamp;


alter table categoria_filme add constraint fk_categoria
foreign key (id_categoria) references categoria(id_categoria);
 
alter table categoria_filme add constraint fk_filme
foreign key (id_filme) references filme(id_filme);

alter table filme add constraint fk_lingua
foreign key (id_lingua) references lingua(id_lingua);

alter table ator_filme add constraint fk_ator
foreign key (id_ator) references ator(id_ator);

alter table ator_filme add constraint fk_filme
foreign key (id_filme) references filme(id_filme);

alter table inventario add constraint fk_filme
foreign key (id_filme) references filme(id_filme);

alter table aluguel add constraint fk_inventario
foreign key (id_inventario) references inventario(id_inventario);

alter table aluguel add constraint fk_funcionario
foreign key (id_funcionario) references funcionario(id_funcionario);

alter table pagamento add constraint fk_aluguel
foreign key (id_aluguel) references aluguel(id_aluguel);

alter table pagamento add constraint fk_funcionario
foreign key (id_funcionario) references funcionario(id_funcionario);

alter table funcionario add constraint fk_loja
foreign key (id_loja) references loja(id_loja);

alter table funcionario add constraint fk_endereco
foreign key (id_endereco) references endereco(id_endereco);

alter table endereco add constraint fk_cidade
foreign key (id_cidade) references cidade(id_cidade);

alter table cidade add constraint fk_pais
foreign key (id_pais) references pais(id_pais);

alter table aluguel add constraint fk_cliente
foreign key (id_cliente) references cliente(id_cliente);

alter table pagamento add constraint fk_cliente
foreign key (id_cliente) references cliente(id_cliente);

alter table loja add constraint fk_endereco
foreign key (id_endereco) references endereco(id_endereco);

alter table loja add constraint fk_funcionario
foreign key (id_funcionario) references funcionario(id_funcionario);

alter table cliente add constraint fk_loja 
foreign key (id_loja) references loja(id_loja);

-- inserção nas tabelas

insert into pais(pais, ultima_atualizacao)
values('Brasil','2025-06-20 00:00:00'),
	  ('Portugal','2025-06-20 00:00:01');

insert into cidade(cidade, id_pais ,ultima_atualizacao)
values('Petrópolis', 1, '2025-06-20 00:00:01' ),
	  ('Manaus', 1,'2025-06-20 00:00:01'),
	  ('Lisboa', 2,'2025-06-20 00:00:01' );

insert into endereco (enredeco, enredeco_2, distrito, id_cidade, cep, telefone)
values('Rua Carls','Rua Varls','Distrito Larls', 1, '12345678', '5524768374653');



