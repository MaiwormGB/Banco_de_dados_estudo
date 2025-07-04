toc.dat                                                                                             0000600 0004000 0002000 00000105254 15026754016 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   0                    }            aula16    17.5    17.5 x    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false         �           1262    24612    aula16    DATABASE     }   CREATE DATABASE aula16 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE aula16;
                     postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false         �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4         �            1259    24977    aluguel    TABLE     V  CREATE TABLE public.aluguel (
    aluguel_id integer NOT NULL,
    data_aluguel timestamp without time zone NOT NULL,
    inventario_id integer NOT NULL,
    cliente_id integer NOT NULL,
    data_retorno timestamp without time zone NOT NULL,
    funcionario_id integer NOT NULL,
    ultima_atualizacao timestamp without time zone NOT NULL
);
    DROP TABLE public.aluguel;
       public         heap r       postgres    false    4         �            1259    24976    aluguel_aluguel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aluguel_aluguel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.aluguel_aluguel_id_seq;
       public               postgres    false    4    228         �           0    0    aluguel_aluguel_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.aluguel_aluguel_id_seq OWNED BY public.aluguel.aluguel_id;
          public               postgres    false    227         �            1259    24994    ator    TABLE     �   CREATE TABLE public.ator (
    ator_id integer NOT NULL,
    primeiro_nome character varying(20),
    ultimo_nome character varying(20),
    ultima_atualizacao timestamp without time zone
);
    DROP TABLE public.ator;
       public         heap r       postgres    false    4         �            1259    24993    ator_ator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ator_ator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.ator_ator_id_seq;
       public               postgres    false    234    4         �           0    0    ator_ator_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.ator_ator_id_seq OWNED BY public.ator.ator_id;
          public               postgres    false    233         �            1259    24968 
   ator_filme    TABLE     �   CREATE TABLE public.ator_filme (
    ator_id integer,
    filme_id integer,
    ultima_atualizacao timestamp without time zone
);
    DROP TABLE public.ator_filme;
       public         heap r       postgres    false    4         �            1259    24619 	   categoria    TABLE     �   CREATE TABLE public.categoria (
    categoria_id integer NOT NULL,
    nome character varying(20),
    ultima_atualizacao timestamp without time zone
);
    DROP TABLE public.categoria;
       public         heap r       postgres    false    4         �            1259    24618    categoria_categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categoria_categoria_id_seq;
       public               postgres    false    4    218         �           0    0    categoria_categoria_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categoria_categoria_id_seq OWNED BY public.categoria.categoria_id;
          public               postgres    false    217         �            1259    25009    cidade    TABLE     �   CREATE TABLE public.cidade (
    cidade_id integer NOT NULL,
    cidade character varying(30),
    pais_id integer,
    ultima_atualizacao timestamp without time zone
);
    DROP TABLE public.cidade;
       public         heap r       postgres    false    4         �            1259    25008    cidade_cidade_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cidade_cidade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cidade_cidade_id_seq;
       public               postgres    false    240    4         �           0    0    cidade_cidade_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cidade_cidade_id_seq OWNED BY public.cidade.cidade_id;
          public               postgres    false    239         �            1259    24999    cliente    TABLE     U  CREATE TABLE public.cliente (
    cliente_id integer NOT NULL,
    loja_id integer,
    primeiro_nome character varying(20),
    ultimo_nome character varying(20),
    endereco_id integer,
    email character varying(60),
    data_criacao timestamp without time zone,
    ultima_atualizacao timestamp without time zone,
    ativo boolean
);
    DROP TABLE public.cliente;
       public         heap r       postgres    false    4         �            1259    24998    cliente_cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_cliente_id_seq;
       public               postgres    false    4    236         �           0    0    cliente_cliente_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_cliente_id_seq OWNED BY public.cliente.cliente_id;
          public               postgres    false    235         �            1259    25004    endereco    TABLE     -  CREATE TABLE public.endereco (
    endereco_id integer NOT NULL,
    endereco character varying(40),
    endereco2 character varying(40),
    distrito character varying(30),
    cidade_id integer,
    cep character(8),
    telefone character(13),
    ultima_atualizacao timestamp without time zone
);
    DROP TABLE public.endereco;
       public         heap r       postgres    false    4         �            1259    25003    endereco_endereco_id_seq    SEQUENCE     �   CREATE SEQUENCE public.endereco_endereco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.endereco_endereco_id_seq;
       public               postgres    false    4    238         �           0    0    endereco_endereco_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.endereco_endereco_id_seq OWNED BY public.endereco.endereco_id;
          public               postgres    false    237         �            1259    24957    filme    TABLE     �  CREATE TABLE public.filme (
    filme_id integer NOT NULL,
    titulo character varying(35),
    descricao text,
    ano_lancamento character(4),
    linguagem_id integer,
    duracao_aluguel integer,
    preco_aluguel numeric(4,2),
    duracao integer,
    multa numeric(4,2),
    classificacao_indicativa integer,
    ultima_atualizacao timestamp without time zone,
    ocasiao_especial text,
    sinopse text
);
    DROP TABLE public.filme;
       public         heap r       postgres    false    4         �            1259    24623    filme_categoria    TABLE     �   CREATE TABLE public.filme_categoria (
    filme_id integer,
    categoria_id integer,
    ultima_atualizacao timestamp without time zone
);
 #   DROP TABLE public.filme_categoria;
       public         heap r       postgres    false    4         �            1259    24956    filme_filme_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filme_filme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.filme_filme_id_seq;
       public               postgres    false    221    4         �           0    0    filme_filme_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.filme_filme_id_seq OWNED BY public.filme.filme_id;
          public               postgres    false    220         �            1259    24987    funcionario    TABLE     z  CREATE TABLE public.funcionario (
    funcionario_id integer NOT NULL,
    primeiro_nome character varying(20),
    ultimo_nome character varying(20),
    endereco_id integer,
    email character varying(60),
    senha character(7),
    usuario character varying(20),
    loja_id integer,
    ativo boolean,
    ultima_atualizacao timestamp without time zone,
    foto bytea
);
    DROP TABLE public.funcionario;
       public         heap r       postgres    false    4         �            1259    24986    funcionario_funcionario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.funcionario_funcionario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.funcionario_funcionario_id_seq;
       public               postgres    false    232    4         �           0    0    funcionario_funcionario_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.funcionario_funcionario_id_seq OWNED BY public.funcionario.funcionario_id;
          public               postgres    false    231         �            1259    24972 
   inventario    TABLE     �   CREATE TABLE public.inventario (
    inventario_id integer NOT NULL,
    filme_id integer,
    loja_id integer,
    ultima_atualizacao timestamp without time zone
);
    DROP TABLE public.inventario;
       public         heap r       postgres    false    4         �            1259    24971    inventario_inventario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventario_inventario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.inventario_inventario_id_seq;
       public               postgres    false    4    226         �           0    0    inventario_inventario_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.inventario_inventario_id_seq OWNED BY public.inventario.inventario_id;
          public               postgres    false    225         �            1259    24964 	   linguagem    TABLE     �   CREATE TABLE public.linguagem (
    linguagem_id integer NOT NULL,
    nome character varying(20),
    ultima_atualizacao timestamp without time zone
);
    DROP TABLE public.linguagem;
       public         heap r       postgres    false    4         �            1259    24963    linguagem_linguagem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.linguagem_linguagem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.linguagem_linguagem_id_seq;
       public               postgres    false    223    4         �           0    0    linguagem_linguagem_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.linguagem_linguagem_id_seq OWNED BY public.linguagem.linguagem_id;
          public               postgres    false    222         �            1259    25019    loja    TABLE     �   CREATE TABLE public.loja (
    loja_id integer NOT NULL,
    chefe_equipe_id integer,
    endereco_id integer NOT NULL,
    ultima_atualizacao timestamp without time zone NOT NULL
);
    DROP TABLE public.loja;
       public         heap r       postgres    false    4         �            1259    25018    loja_loja_id_seq    SEQUENCE     �   CREATE SEQUENCE public.loja_loja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.loja_loja_id_seq;
       public               postgres    false    4    244         �           0    0    loja_loja_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.loja_loja_id_seq OWNED BY public.loja.loja_id;
          public               postgres    false    243         �            1259    24982 	   pagamento    TABLE     �   CREATE TABLE public.pagamento (
    pagamento_id integer NOT NULL,
    cliente_id integer,
    funcionario_id integer,
    aluguel_id integer,
    preco numeric(4,2),
    data_pagamento timestamp without time zone
);
    DROP TABLE public.pagamento;
       public         heap r       postgres    false    4         �            1259    24981    pagamento_pagamento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pagamento_pagamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.pagamento_pagamento_id_seq;
       public               postgres    false    4    230         �           0    0    pagamento_pagamento_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.pagamento_pagamento_id_seq OWNED BY public.pagamento.pagamento_id;
          public               postgres    false    229         �            1259    25014    pais    TABLE     �   CREATE TABLE public.pais (
    pais_id integer NOT NULL,
    pais character varying(20),
    ultima_atualizacao timestamp without time zone
);
    DROP TABLE public.pais;
       public         heap r       postgres    false    4         �            1259    25013    pais_pais_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pais_pais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pais_pais_id_seq;
       public               postgres    false    242    4         �           0    0    pais_pais_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pais_pais_id_seq OWNED BY public.pais.pais_id;
          public               postgres    false    241         �           2604    24980    aluguel aluguel_id    DEFAULT     x   ALTER TABLE ONLY public.aluguel ALTER COLUMN aluguel_id SET DEFAULT nextval('public.aluguel_aluguel_id_seq'::regclass);
 A   ALTER TABLE public.aluguel ALTER COLUMN aluguel_id DROP DEFAULT;
       public               postgres    false    228    227    228         �           2604    24997    ator ator_id    DEFAULT     l   ALTER TABLE ONLY public.ator ALTER COLUMN ator_id SET DEFAULT nextval('public.ator_ator_id_seq'::regclass);
 ;   ALTER TABLE public.ator ALTER COLUMN ator_id DROP DEFAULT;
       public               postgres    false    234    233    234         �           2604    24622    categoria categoria_id    DEFAULT     �   ALTER TABLE ONLY public.categoria ALTER COLUMN categoria_id SET DEFAULT nextval('public.categoria_categoria_id_seq'::regclass);
 E   ALTER TABLE public.categoria ALTER COLUMN categoria_id DROP DEFAULT;
       public               postgres    false    218    217    218         �           2604    25012    cidade cidade_id    DEFAULT     t   ALTER TABLE ONLY public.cidade ALTER COLUMN cidade_id SET DEFAULT nextval('public.cidade_cidade_id_seq'::regclass);
 ?   ALTER TABLE public.cidade ALTER COLUMN cidade_id DROP DEFAULT;
       public               postgres    false    240    239    240         �           2604    25002    cliente cliente_id    DEFAULT     x   ALTER TABLE ONLY public.cliente ALTER COLUMN cliente_id SET DEFAULT nextval('public.cliente_cliente_id_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN cliente_id DROP DEFAULT;
       public               postgres    false    236    235    236         �           2604    25007    endereco endereco_id    DEFAULT     |   ALTER TABLE ONLY public.endereco ALTER COLUMN endereco_id SET DEFAULT nextval('public.endereco_endereco_id_seq'::regclass);
 C   ALTER TABLE public.endereco ALTER COLUMN endereco_id DROP DEFAULT;
       public               postgres    false    237    238    238         �           2604    24960    filme filme_id    DEFAULT     p   ALTER TABLE ONLY public.filme ALTER COLUMN filme_id SET DEFAULT nextval('public.filme_filme_id_seq'::regclass);
 =   ALTER TABLE public.filme ALTER COLUMN filme_id DROP DEFAULT;
       public               postgres    false    221    220    221         �           2604    24990    funcionario funcionario_id    DEFAULT     �   ALTER TABLE ONLY public.funcionario ALTER COLUMN funcionario_id SET DEFAULT nextval('public.funcionario_funcionario_id_seq'::regclass);
 I   ALTER TABLE public.funcionario ALTER COLUMN funcionario_id DROP DEFAULT;
       public               postgres    false    231    232    232         �           2604    24975    inventario inventario_id    DEFAULT     �   ALTER TABLE ONLY public.inventario ALTER COLUMN inventario_id SET DEFAULT nextval('public.inventario_inventario_id_seq'::regclass);
 G   ALTER TABLE public.inventario ALTER COLUMN inventario_id DROP DEFAULT;
       public               postgres    false    225    226    226         �           2604    24967    linguagem linguagem_id    DEFAULT     �   ALTER TABLE ONLY public.linguagem ALTER COLUMN linguagem_id SET DEFAULT nextval('public.linguagem_linguagem_id_seq'::regclass);
 E   ALTER TABLE public.linguagem ALTER COLUMN linguagem_id DROP DEFAULT;
       public               postgres    false    223    222    223         �           2604    25022    loja loja_id    DEFAULT     l   ALTER TABLE ONLY public.loja ALTER COLUMN loja_id SET DEFAULT nextval('public.loja_loja_id_seq'::regclass);
 ;   ALTER TABLE public.loja ALTER COLUMN loja_id DROP DEFAULT;
       public               postgres    false    244    243    244         �           2604    24985    pagamento pagamento_id    DEFAULT     �   ALTER TABLE ONLY public.pagamento ALTER COLUMN pagamento_id SET DEFAULT nextval('public.pagamento_pagamento_id_seq'::regclass);
 E   ALTER TABLE public.pagamento ALTER COLUMN pagamento_id DROP DEFAULT;
       public               postgres    false    230    229    230         �           2604    25017    pais pais_id    DEFAULT     l   ALTER TABLE ONLY public.pais ALTER COLUMN pais_id SET DEFAULT nextval('public.pais_pais_id_seq'::regclass);
 ;   ALTER TABLE public.pais ALTER COLUMN pais_id DROP DEFAULT;
       public               postgres    false    241    242    242         �          0    24977    aluguel 
   TABLE DATA                 public               postgres    false    228       5024.dat �          0    24994    ator 
   TABLE DATA                 public               postgres    false    234       5030.dat �          0    24968 
   ator_filme 
   TABLE DATA                 public               postgres    false    224       5020.dat �          0    24619 	   categoria 
   TABLE DATA                 public               postgres    false    218       5014.dat �          0    25009    cidade 
   TABLE DATA                 public               postgres    false    240       5036.dat �          0    24999    cliente 
   TABLE DATA                 public               postgres    false    236       5032.dat �          0    25004    endereco 
   TABLE DATA                 public               postgres    false    238       5034.dat �          0    24957    filme 
   TABLE DATA                 public               postgres    false    221       5017.dat �          0    24623    filme_categoria 
   TABLE DATA                 public               postgres    false    219       5015.dat �          0    24987    funcionario 
   TABLE DATA                 public               postgres    false    232       5028.dat �          0    24972 
   inventario 
   TABLE DATA                 public               postgres    false    226       5022.dat �          0    24964 	   linguagem 
   TABLE DATA                 public               postgres    false    223       5019.dat �          0    25019    loja 
   TABLE DATA                 public               postgres    false    244       5040.dat �          0    24982 	   pagamento 
   TABLE DATA                 public               postgres    false    230       5026.dat �          0    25014    pais 
   TABLE DATA                 public               postgres    false    242       5038.dat �           0    0    aluguel_aluguel_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.aluguel_aluguel_id_seq', 1, false);
          public               postgres    false    227         �           0    0    ator_ator_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ator_ator_id_seq', 1, false);
          public               postgres    false    233         �           0    0    categoria_categoria_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.categoria_categoria_id_seq', 1, false);
          public               postgres    false    217         �           0    0    cidade_cidade_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cidade_cidade_id_seq', 3, true);
          public               postgres    false    239         �           0    0    cliente_cliente_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cliente_cliente_id_seq', 1, false);
          public               postgres    false    235         �           0    0    endereco_endereco_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.endereco_endereco_id_seq', 4, true);
          public               postgres    false    237         �           0    0    filme_filme_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.filme_filme_id_seq', 1, false);
          public               postgres    false    220         �           0    0    funcionario_funcionario_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.funcionario_funcionario_id_seq', 1, false);
          public               postgres    false    231         �           0    0    inventario_inventario_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.inventario_inventario_id_seq', 1, false);
          public               postgres    false    225         �           0    0    linguagem_linguagem_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.linguagem_linguagem_id_seq', 1, false);
          public               postgres    false    222         �           0    0    loja_loja_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.loja_loja_id_seq', 1, false);
          public               postgres    false    243         �           0    0    pagamento_pagamento_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.pagamento_pagamento_id_seq', 1, false);
          public               postgres    false    229         �           0    0    pais_pais_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pais_pais_id_seq', 2, true);
          public               postgres    false    241         �           2606    25047    aluguel aluguel_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT aluguel_pkey PRIMARY KEY (aluguel_id);
 >   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT aluguel_pkey;
       public                 postgres    false    228         �           2606    25033    ator ator_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.ator
    ADD CONSTRAINT ator_pkey PRIMARY KEY (ator_id);
 8   ALTER TABLE ONLY public.ator DROP CONSTRAINT ator_pkey;
       public                 postgres    false    234         �           2606    24950    categoria categoria_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (categoria_id);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public                 postgres    false    218         �           2606    25035    cidade cidade_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_pkey PRIMARY KEY (cidade_id);
 <   ALTER TABLE ONLY public.cidade DROP CONSTRAINT cidade_pkey;
       public                 postgres    false    240         �           2606    25043    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (cliente_id);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public                 postgres    false    236         �           2606    25041    endereco endereco_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (endereco_id);
 @   ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pkey;
       public                 postgres    false    238         �           2606    25025    filme filme_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.filme
    ADD CONSTRAINT filme_pkey PRIMARY KEY (filme_id);
 :   ALTER TABLE ONLY public.filme DROP CONSTRAINT filme_pkey;
       public                 postgres    false    221         �           2606    25045    funcionario funcionario_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (funcionario_id);
 F   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_pkey;
       public                 postgres    false    232         �           2606    25029    inventario inventario_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (inventario_id);
 D   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_pkey;
       public                 postgres    false    226         �           2606    25027    linguagem linguagem_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.linguagem
    ADD CONSTRAINT linguagem_pkey PRIMARY KEY (linguagem_id);
 B   ALTER TABLE ONLY public.linguagem DROP CONSTRAINT linguagem_pkey;
       public                 postgres    false    223         �           2606    25037    loja loja_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.loja
    ADD CONSTRAINT loja_pkey PRIMARY KEY (loja_id);
 8   ALTER TABLE ONLY public.loja DROP CONSTRAINT loja_pkey;
       public                 postgres    false    244         �           2606    25039    pagamento pagamento_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT pagamento_pkey PRIMARY KEY (pagamento_id);
 B   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT pagamento_pkey;
       public                 postgres    false    230         �           2606    25031    pais pais_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (pais_id);
 8   ALTER TABLE ONLY public.pais DROP CONSTRAINT pais_pkey;
       public                 postgres    false    242         �           2606    25091    pagamento fk_aluguel    FK CONSTRAINT     �   ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT fk_aluguel FOREIGN KEY (aluguel_id) REFERENCES public.aluguel(aluguel_id);
 >   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT fk_aluguel;
       public               postgres    false    230    228    4832         �           2606    25066    ator_filme fk_ator    FK CONSTRAINT     u   ALTER TABLE ONLY public.ator_filme
    ADD CONSTRAINT fk_ator FOREIGN KEY (ator_id) REFERENCES public.ator(ator_id);
 <   ALTER TABLE ONLY public.ator_filme DROP CONSTRAINT fk_ator;
       public               postgres    false    4838    224    234         �           2606    24951    filme_categoria fk_categoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.filme_categoria
    ADD CONSTRAINT fk_categoria FOREIGN KEY (categoria_id) REFERENCES public.categoria(categoria_id);
 F   ALTER TABLE ONLY public.filme_categoria DROP CONSTRAINT fk_categoria;
       public               postgres    false    218    219    4824                    2606    25146    loja fk_chefe_equipe    FK CONSTRAINT     �   ALTER TABLE ONLY public.loja
    ADD CONSTRAINT fk_chefe_equipe FOREIGN KEY (chefe_equipe_id) REFERENCES public.funcionario(funcionario_id);
 >   ALTER TABLE ONLY public.loja DROP CONSTRAINT fk_chefe_equipe;
       public               postgres    false    232    244    4836                     2606    25111    endereco fk_cidade    FK CONSTRAINT     {   ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT fk_cidade FOREIGN KEY (cidade_id) REFERENCES public.cidade(cidade_id);
 <   ALTER TABLE ONLY public.endereco DROP CONSTRAINT fk_cidade;
       public               postgres    false    238    240    4844         �           2606    25131    aluguel fk_cliente    FK CONSTRAINT     ~   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES public.cliente(cliente_id);
 <   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT fk_cliente;
       public               postgres    false    228    236    4840         �           2606    25136    pagamento fk_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES public.cliente(cliente_id);
 >   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT fk_cliente;
       public               postgres    false    230    4840    236         �           2606    25106    funcionario fk_endereco    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT fk_endereco FOREIGN KEY (endereco_id) REFERENCES public.endereco(endereco_id);
 A   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT fk_endereco;
       public               postgres    false    238    4842    232                    2606    25141    loja fk_endereco    FK CONSTRAINT        ALTER TABLE ONLY public.loja
    ADD CONSTRAINT fk_endereco FOREIGN KEY (endereco_id) REFERENCES public.endereco(endereco_id);
 :   ALTER TABLE ONLY public.loja DROP CONSTRAINT fk_endereco;
       public               postgres    false    4842    244    238         �           2606    25056    filme_categoria fk_filme    FK CONSTRAINT     ~   ALTER TABLE ONLY public.filme_categoria
    ADD CONSTRAINT fk_filme FOREIGN KEY (filme_id) REFERENCES public.filme(filme_id);
 B   ALTER TABLE ONLY public.filme_categoria DROP CONSTRAINT fk_filme;
       public               postgres    false    221    4826    219         �           2606    25071    ator_filme fk_filme    FK CONSTRAINT     y   ALTER TABLE ONLY public.ator_filme
    ADD CONSTRAINT fk_filme FOREIGN KEY (filme_id) REFERENCES public.filme(filme_id);
 =   ALTER TABLE ONLY public.ator_filme DROP CONSTRAINT fk_filme;
       public               postgres    false    221    224    4826         �           2606    25076    inventario fk_filme    FK CONSTRAINT     y   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_filme FOREIGN KEY (filme_id) REFERENCES public.filme(filme_id);
 =   ALTER TABLE ONLY public.inventario DROP CONSTRAINT fk_filme;
       public               postgres    false    226    221    4826         �           2606    25086    aluguel fk_funcionario    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT fk_funcionario FOREIGN KEY (funcionario_id) REFERENCES public.funcionario(funcionario_id);
 @   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT fk_funcionario;
       public               postgres    false    232    4836    228         �           2606    25096    pagamento fk_funcionario    FK CONSTRAINT     �   ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT fk_funcionario FOREIGN KEY (funcionario_id) REFERENCES public.funcionario(funcionario_id);
 B   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT fk_funcionario;
       public               postgres    false    232    4836    230         �           2606    25081    aluguel fk_inventario    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT fk_inventario FOREIGN KEY (inventario_id) REFERENCES public.inventario(inventario_id);
 ?   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT fk_inventario;
       public               postgres    false    228    4830    226         �           2606    25061    filme fk_linguagem    FK CONSTRAINT     �   ALTER TABLE ONLY public.filme
    ADD CONSTRAINT fk_linguagem FOREIGN KEY (linguagem_id) REFERENCES public.linguagem(linguagem_id);
 <   ALTER TABLE ONLY public.filme DROP CONSTRAINT fk_linguagem;
       public               postgres    false    223    4828    221         �           2606    25101    funcionario fk_loja    FK CONSTRAINT     v   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT fk_loja FOREIGN KEY (loja_id) REFERENCES public.loja(loja_id);
 =   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT fk_loja;
       public               postgres    false    232    4848    244         �           2606    25151    cliente fk_loja    FK CONSTRAINT     r   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_loja FOREIGN KEY (loja_id) REFERENCES public.loja(loja_id);
 9   ALTER TABLE ONLY public.cliente DROP CONSTRAINT fk_loja;
       public               postgres    false    244    236    4848                    2606    25116    cidade fk_pais    FK CONSTRAINT     q   ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT fk_pais FOREIGN KEY (pais_id) REFERENCES public.pais(pais_id);
 8   ALTER TABLE ONLY public.cidade DROP CONSTRAINT fk_pais;
       public               postgres    false    242    240    4846                                                                                                                                                                                                                                                                                                                                                            5024.dat                                                                                            0000600 0004000 0002000 00000000002 15026754016 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              5030.dat                                                                                            0000600 0004000 0002000 00000000002 15026754016 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              5020.dat                                                                                            0000600 0004000 0002000 00000000002 15026754016 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              5014.dat                                                                                            0000600 0004000 0002000 00000000002 15026754016 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              5036.dat                                                                                            0000600 0004000 0002000 00000000345 15026754016 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.cidade VALUES (1, 'Petrópolis', 1, '2025-06-20 00:00:01');
INSERT INTO public.cidade VALUES (2, 'Manaus', 1, '2025-06-20 00:00:05');
INSERT INTO public.cidade VALUES (3, 'Lisboa', 2, '2025-06-20 10:00:01');


                                                                                                                                                                                                                                                                                           5032.dat                                                                                            0000600 0004000 0002000 00000000002 15026754016 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              5034.dat                                                                                            0000600 0004000 0002000 00000000406 15026754016 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.endereco VALUES (1, 'Rua sete, 5', NULL, 'Distrito 1', 1, '25651075', '5524998391552', '2025-06-20 11:00:01');
INSERT INTO public.endereco VALUES (4, 'Rua sete, 7', NULL, 'Distrito 1', 1, '25651075', '5524998391552', '2025-06-20 11:00:01');


                                                                                                                                                                                                                                                          5017.dat                                                                                            0000600 0004000 0002000 00000000002 15026754016 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              5015.dat                                                                                            0000600 0004000 0002000 00000000002 15026754016 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              5028.dat                                                                                            0000600 0004000 0002000 00000000002 15026754016 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              5022.dat                                                                                            0000600 0004000 0002000 00000000002 15026754016 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              5019.dat                                                                                            0000600 0004000 0002000 00000000002 15026754016 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              5040.dat                                                                                            0000600 0004000 0002000 00000000002 15026754016 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              5026.dat                                                                                            0000600 0004000 0002000 00000000002 15026754016 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              5038.dat                                                                                            0000600 0004000 0002000 00000000216 15026754016 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.pais VALUES (1, 'Brasil', '2025-06-20 00:00:00');
INSERT INTO public.pais VALUES (2, 'Portugal', '2025-06-20 00:00:01');


                                                                                                                                                                                                                                                                                                                                                                                  restore.sql                                                                                         0000600 0004000 0002000 00000062747 15026754016 0015412 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE aula16;
--
-- Name: aula16; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE aula16 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';


ALTER DATABASE aula16 OWNER TO postgres;

\connect aula16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: aluguel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aluguel (
    aluguel_id integer NOT NULL,
    data_aluguel timestamp without time zone NOT NULL,
    inventario_id integer NOT NULL,
    cliente_id integer NOT NULL,
    data_retorno timestamp without time zone NOT NULL,
    funcionario_id integer NOT NULL,
    ultima_atualizacao timestamp without time zone NOT NULL
);


ALTER TABLE public.aluguel OWNER TO postgres;

--
-- Name: aluguel_aluguel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aluguel_aluguel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.aluguel_aluguel_id_seq OWNER TO postgres;

--
-- Name: aluguel_aluguel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aluguel_aluguel_id_seq OWNED BY public.aluguel.aluguel_id;


--
-- Name: ator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ator (
    ator_id integer NOT NULL,
    primeiro_nome character varying(20),
    ultimo_nome character varying(20),
    ultima_atualizacao timestamp without time zone
);


ALTER TABLE public.ator OWNER TO postgres;

--
-- Name: ator_ator_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ator_ator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ator_ator_id_seq OWNER TO postgres;

--
-- Name: ator_ator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ator_ator_id_seq OWNED BY public.ator.ator_id;


--
-- Name: ator_filme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ator_filme (
    ator_id integer,
    filme_id integer,
    ultima_atualizacao timestamp without time zone
);


ALTER TABLE public.ator_filme OWNER TO postgres;

--
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    categoria_id integer NOT NULL,
    nome character varying(20),
    ultima_atualizacao timestamp without time zone
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- Name: categoria_categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categoria_categoria_id_seq OWNER TO postgres;

--
-- Name: categoria_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_categoria_id_seq OWNED BY public.categoria.categoria_id;


--
-- Name: cidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cidade (
    cidade_id integer NOT NULL,
    cidade character varying(30),
    pais_id integer,
    ultima_atualizacao timestamp without time zone
);


ALTER TABLE public.cidade OWNER TO postgres;

--
-- Name: cidade_cidade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cidade_cidade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cidade_cidade_id_seq OWNER TO postgres;

--
-- Name: cidade_cidade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cidade_cidade_id_seq OWNED BY public.cidade.cidade_id;


--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    cliente_id integer NOT NULL,
    loja_id integer,
    primeiro_nome character varying(20),
    ultimo_nome character varying(20),
    endereco_id integer,
    email character varying(60),
    data_criacao timestamp without time zone,
    ultima_atualizacao timestamp without time zone,
    ativo boolean
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: cliente_cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_cliente_id_seq OWNER TO postgres;

--
-- Name: cliente_cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_cliente_id_seq OWNED BY public.cliente.cliente_id;


--
-- Name: endereco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.endereco (
    endereco_id integer NOT NULL,
    endereco character varying(40),
    endereco2 character varying(40),
    distrito character varying(30),
    cidade_id integer,
    cep character(8),
    telefone character(13),
    ultima_atualizacao timestamp without time zone
);


ALTER TABLE public.endereco OWNER TO postgres;

--
-- Name: endereco_endereco_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.endereco_endereco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.endereco_endereco_id_seq OWNER TO postgres;

--
-- Name: endereco_endereco_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.endereco_endereco_id_seq OWNED BY public.endereco.endereco_id;


--
-- Name: filme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filme (
    filme_id integer NOT NULL,
    titulo character varying(35),
    descricao text,
    ano_lancamento character(4),
    linguagem_id integer,
    duracao_aluguel integer,
    preco_aluguel numeric(4,2),
    duracao integer,
    multa numeric(4,2),
    classificacao_indicativa integer,
    ultima_atualizacao timestamp without time zone,
    ocasiao_especial text,
    sinopse text
);


ALTER TABLE public.filme OWNER TO postgres;

--
-- Name: filme_categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filme_categoria (
    filme_id integer,
    categoria_id integer,
    ultima_atualizacao timestamp without time zone
);


ALTER TABLE public.filme_categoria OWNER TO postgres;

--
-- Name: filme_filme_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filme_filme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.filme_filme_id_seq OWNER TO postgres;

--
-- Name: filme_filme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filme_filme_id_seq OWNED BY public.filme.filme_id;


--
-- Name: funcionario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionario (
    funcionario_id integer NOT NULL,
    primeiro_nome character varying(20),
    ultimo_nome character varying(20),
    endereco_id integer,
    email character varying(60),
    senha character(7),
    usuario character varying(20),
    loja_id integer,
    ativo boolean,
    ultima_atualizacao timestamp without time zone,
    foto bytea
);


ALTER TABLE public.funcionario OWNER TO postgres;

--
-- Name: funcionario_funcionario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.funcionario_funcionario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.funcionario_funcionario_id_seq OWNER TO postgres;

--
-- Name: funcionario_funcionario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.funcionario_funcionario_id_seq OWNED BY public.funcionario.funcionario_id;


--
-- Name: inventario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventario (
    inventario_id integer NOT NULL,
    filme_id integer,
    loja_id integer,
    ultima_atualizacao timestamp without time zone
);


ALTER TABLE public.inventario OWNER TO postgres;

--
-- Name: inventario_inventario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventario_inventario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inventario_inventario_id_seq OWNER TO postgres;

--
-- Name: inventario_inventario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventario_inventario_id_seq OWNED BY public.inventario.inventario_id;


--
-- Name: linguagem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.linguagem (
    linguagem_id integer NOT NULL,
    nome character varying(20),
    ultima_atualizacao timestamp without time zone
);


ALTER TABLE public.linguagem OWNER TO postgres;

--
-- Name: linguagem_linguagem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.linguagem_linguagem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.linguagem_linguagem_id_seq OWNER TO postgres;

--
-- Name: linguagem_linguagem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.linguagem_linguagem_id_seq OWNED BY public.linguagem.linguagem_id;


--
-- Name: loja; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loja (
    loja_id integer NOT NULL,
    chefe_equipe_id integer,
    endereco_id integer NOT NULL,
    ultima_atualizacao timestamp without time zone NOT NULL
);


ALTER TABLE public.loja OWNER TO postgres;

--
-- Name: loja_loja_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.loja_loja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.loja_loja_id_seq OWNER TO postgres;

--
-- Name: loja_loja_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.loja_loja_id_seq OWNED BY public.loja.loja_id;


--
-- Name: pagamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pagamento (
    pagamento_id integer NOT NULL,
    cliente_id integer,
    funcionario_id integer,
    aluguel_id integer,
    preco numeric(4,2),
    data_pagamento timestamp without time zone
);


ALTER TABLE public.pagamento OWNER TO postgres;

--
-- Name: pagamento_pagamento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pagamento_pagamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pagamento_pagamento_id_seq OWNER TO postgres;

--
-- Name: pagamento_pagamento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pagamento_pagamento_id_seq OWNED BY public.pagamento.pagamento_id;


--
-- Name: pais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pais (
    pais_id integer NOT NULL,
    pais character varying(20),
    ultima_atualizacao timestamp without time zone
);


ALTER TABLE public.pais OWNER TO postgres;

--
-- Name: pais_pais_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pais_pais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pais_pais_id_seq OWNER TO postgres;

--
-- Name: pais_pais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pais_pais_id_seq OWNED BY public.pais.pais_id;


--
-- Name: aluguel aluguel_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluguel ALTER COLUMN aluguel_id SET DEFAULT nextval('public.aluguel_aluguel_id_seq'::regclass);


--
-- Name: ator ator_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ator ALTER COLUMN ator_id SET DEFAULT nextval('public.ator_ator_id_seq'::regclass);


--
-- Name: categoria categoria_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN categoria_id SET DEFAULT nextval('public.categoria_categoria_id_seq'::regclass);


--
-- Name: cidade cidade_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidade ALTER COLUMN cidade_id SET DEFAULT nextval('public.cidade_cidade_id_seq'::regclass);


--
-- Name: cliente cliente_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN cliente_id SET DEFAULT nextval('public.cliente_cliente_id_seq'::regclass);


--
-- Name: endereco endereco_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco ALTER COLUMN endereco_id SET DEFAULT nextval('public.endereco_endereco_id_seq'::regclass);


--
-- Name: filme filme_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filme ALTER COLUMN filme_id SET DEFAULT nextval('public.filme_filme_id_seq'::regclass);


--
-- Name: funcionario funcionario_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario ALTER COLUMN funcionario_id SET DEFAULT nextval('public.funcionario_funcionario_id_seq'::regclass);


--
-- Name: inventario inventario_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario ALTER COLUMN inventario_id SET DEFAULT nextval('public.inventario_inventario_id_seq'::regclass);


--
-- Name: linguagem linguagem_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.linguagem ALTER COLUMN linguagem_id SET DEFAULT nextval('public.linguagem_linguagem_id_seq'::regclass);


--
-- Name: loja loja_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loja ALTER COLUMN loja_id SET DEFAULT nextval('public.loja_loja_id_seq'::regclass);


--
-- Name: pagamento pagamento_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagamento ALTER COLUMN pagamento_id SET DEFAULT nextval('public.pagamento_pagamento_id_seq'::regclass);


--
-- Name: pais pais_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pais ALTER COLUMN pais_id SET DEFAULT nextval('public.pais_pais_id_seq'::regclass);


--
-- Data for Name: aluguel; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/5024.dat

--
-- Data for Name: ator; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/5030.dat

--
-- Data for Name: ator_filme; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/5020.dat

--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/5014.dat

--
-- Data for Name: cidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/5036.dat

--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/5032.dat

--
-- Data for Name: endereco; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/5034.dat

--
-- Data for Name: filme; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/5017.dat

--
-- Data for Name: filme_categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/5015.dat

--
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/5028.dat

--
-- Data for Name: inventario; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/5022.dat

--
-- Data for Name: linguagem; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/5019.dat

--
-- Data for Name: loja; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/5040.dat

--
-- Data for Name: pagamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/5026.dat

--
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/5038.dat

--
-- Name: aluguel_aluguel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aluguel_aluguel_id_seq', 1, false);


--
-- Name: ator_ator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ator_ator_id_seq', 1, false);


--
-- Name: categoria_categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_categoria_id_seq', 1, false);


--
-- Name: cidade_cidade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cidade_cidade_id_seq', 3, true);


--
-- Name: cliente_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_cliente_id_seq', 1, false);


--
-- Name: endereco_endereco_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.endereco_endereco_id_seq', 4, true);


--
-- Name: filme_filme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filme_filme_id_seq', 1, false);


--
-- Name: funcionario_funcionario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.funcionario_funcionario_id_seq', 1, false);


--
-- Name: inventario_inventario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventario_inventario_id_seq', 1, false);


--
-- Name: linguagem_linguagem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.linguagem_linguagem_id_seq', 1, false);


--
-- Name: loja_loja_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loja_loja_id_seq', 1, false);


--
-- Name: pagamento_pagamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pagamento_pagamento_id_seq', 1, false);


--
-- Name: pais_pais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pais_pais_id_seq', 2, true);


--
-- Name: aluguel aluguel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT aluguel_pkey PRIMARY KEY (aluguel_id);


--
-- Name: ator ator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ator
    ADD CONSTRAINT ator_pkey PRIMARY KEY (ator_id);


--
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (categoria_id);


--
-- Name: cidade cidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT cidade_pkey PRIMARY KEY (cidade_id);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (cliente_id);


--
-- Name: endereco endereco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (endereco_id);


--
-- Name: filme filme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filme
    ADD CONSTRAINT filme_pkey PRIMARY KEY (filme_id);


--
-- Name: funcionario funcionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (funcionario_id);


--
-- Name: inventario inventario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (inventario_id);


--
-- Name: linguagem linguagem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.linguagem
    ADD CONSTRAINT linguagem_pkey PRIMARY KEY (linguagem_id);


--
-- Name: loja loja_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loja
    ADD CONSTRAINT loja_pkey PRIMARY KEY (loja_id);


--
-- Name: pagamento pagamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT pagamento_pkey PRIMARY KEY (pagamento_id);


--
-- Name: pais pais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (pais_id);


--
-- Name: pagamento fk_aluguel; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT fk_aluguel FOREIGN KEY (aluguel_id) REFERENCES public.aluguel(aluguel_id);


--
-- Name: ator_filme fk_ator; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ator_filme
    ADD CONSTRAINT fk_ator FOREIGN KEY (ator_id) REFERENCES public.ator(ator_id);


--
-- Name: filme_categoria fk_categoria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filme_categoria
    ADD CONSTRAINT fk_categoria FOREIGN KEY (categoria_id) REFERENCES public.categoria(categoria_id);


--
-- Name: loja fk_chefe_equipe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loja
    ADD CONSTRAINT fk_chefe_equipe FOREIGN KEY (chefe_equipe_id) REFERENCES public.funcionario(funcionario_id);


--
-- Name: endereco fk_cidade; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT fk_cidade FOREIGN KEY (cidade_id) REFERENCES public.cidade(cidade_id);


--
-- Name: aluguel fk_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES public.cliente(cliente_id);


--
-- Name: pagamento fk_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES public.cliente(cliente_id);


--
-- Name: funcionario fk_endereco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT fk_endereco FOREIGN KEY (endereco_id) REFERENCES public.endereco(endereco_id);


--
-- Name: loja fk_endereco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loja
    ADD CONSTRAINT fk_endereco FOREIGN KEY (endereco_id) REFERENCES public.endereco(endereco_id);


--
-- Name: filme_categoria fk_filme; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filme_categoria
    ADD CONSTRAINT fk_filme FOREIGN KEY (filme_id) REFERENCES public.filme(filme_id);


--
-- Name: ator_filme fk_filme; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ator_filme
    ADD CONSTRAINT fk_filme FOREIGN KEY (filme_id) REFERENCES public.filme(filme_id);


--
-- Name: inventario fk_filme; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_filme FOREIGN KEY (filme_id) REFERENCES public.filme(filme_id);


--
-- Name: aluguel fk_funcionario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT fk_funcionario FOREIGN KEY (funcionario_id) REFERENCES public.funcionario(funcionario_id);


--
-- Name: pagamento fk_funcionario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT fk_funcionario FOREIGN KEY (funcionario_id) REFERENCES public.funcionario(funcionario_id);


--
-- Name: aluguel fk_inventario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT fk_inventario FOREIGN KEY (inventario_id) REFERENCES public.inventario(inventario_id);


--
-- Name: filme fk_linguagem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filme
    ADD CONSTRAINT fk_linguagem FOREIGN KEY (linguagem_id) REFERENCES public.linguagem(linguagem_id);


--
-- Name: funcionario fk_loja; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT fk_loja FOREIGN KEY (loja_id) REFERENCES public.loja(loja_id);


--
-- Name: cliente fk_loja; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_loja FOREIGN KEY (loja_id) REFERENCES public.loja(loja_id);


--
-- Name: cidade fk_pais; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidade
    ADD CONSTRAINT fk_pais FOREIGN KEY (pais_id) REFERENCES public.pais(pais_id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         