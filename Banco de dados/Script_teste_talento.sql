create table talento(
	id_talento serial,
	nome varchar(30),
	categoria varchar(30),
	descricao text,
	pre_req1 int,
	pre_req2 int,
	custo_PE int,
	pericia	varchar(20),	
	dependencia int
);

create table status(
	id_status serial,
	pv_maximo int not null,
	pv_atual int,
	san_maximo int not null,
	san_atual int,
	pe_maximo int not null,
	pe_atual int,
	forca int,
	agilidade int,
	intelecto int,
	presenca int,
	vigor int
);

create table pericias(
	id_pericias serial,
	acrobacia BOOLEAN,
    adestramento BOOLEAN,
    artes BOOLEAN,
    atletismo BOOLEAN,
    ciencias BOOLEAN,
    crime BOOLEAN,
    cultura BOOLEAN,
    diplomacia BOOLEAN,
    enganacao BOOLEAN,
    fortitude BOOLEAN,
    furtividade BOOLEAN,
    infeccao BOOLEAN,
    iniciativa BOOLEAN,
    intimidacao BOOLEAN,
    intuicao BOOLEAN,
    investigacao BOOLEAN,
    luta BOOLEAN,
    medicina BOOLEAN,
    percepcao BOOLEAN,
    pontaria BOOLEAN,
    reflexos BOOLEAN,
    sobrevivencia BOOLEAN,
    engenharia BOOLEAN,
    vontade BOOLEAN    	
);

create table tipo_resistencia(
	id_tipo_resistencia serial,
	nome varchar (30)
);

create table cacador_resistencia(
	id_tipo_resistencia int,
	id_cacador int,
	valor int not null check (valor % 5 = 0)
);

create table combate(
	id_combate serial,
	ageis int,
	balance int,
	brutas int,
	ambicao int,
	fogo int,
	fome int,
	podre int	
);

create table jogador(
	id_jogador serial,
	nome varchar(30)
);


create table cacador(
	id_cacador serial,
	nome varchar(30),
	raiz enum('Forjeiro', 'Lodaceiro', 'Ventaneiro', 
	'Tunnelador', 'Luneta', 'Devoto', 'Rachado'),
	-- enum é usado para opções ja definidas
	id_status int, --fk
	id_pericias int, --fk
	id_combate int
);

create table relva(
	id_relva serial,
	nome varchar(30),
	coagulo int,
	execucao varchar (20),
	custo int,
	alcance varchar (20),
	alvo varchar (20),
	resistencia varchar (20),
	descricao text
)


