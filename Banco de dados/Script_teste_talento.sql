create table talento(
	id_talento serial,
	nome varchar(40),
	categoria varchar(40),
	descricao text,
	pre_req1 int,
	pre_req2 int,
	custo_PE int,
	pericia	varchar(20),	
	dependencia int
);

create table ficha(
	id_ficha serial,
	forca int,
	agilidade int,
	intelecto int,
	presenca int,
	vigor int,
	ageis int,
	balanceadas int,
	brutas int,
	ambicao int,
	fogo int,
	fome int,
	podre int,
	pericias text
);