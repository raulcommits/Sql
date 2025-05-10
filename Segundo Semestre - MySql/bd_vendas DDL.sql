# ATIVIDADE (EM DUPLA) PARA ENTREGAR DIA 19 OU 26/03/2025
create database bd_vendas;
use bd_vendas;

# CRIANDO TODAS AS TABELAS
create table tbl_produto (
	cod_produto 	int unsigned auto_increment,
    nome_produto 	varchar(100) not null,
    desc_produto 	varchar(100) not null,
    unid_medida 	varchar(2) not null,
    estoque_atual 	int default 0,
    estoque_min 	int default 0,
    estoque_max 	int default 0,
    valor 			decimal(10, 2) not null,
    primary key (cod_produto)
);

create table tbl_endereco (
	id int(10) 	not null,
    cep int(9) 	not null,
    logradouro 	varchar(90) not null,
    bairro 		varchar(50) not null,
    cidade 		varchar(50) not null,
    estado 		char(2) not null,
    constraint pk_endereco primary key (cep)
);

create table tbl_cliente (
	cod_cliente		int unsigned auto_increment,
    cpf 			varchar(11) default '',
    nome_cliente	varchar(45) not null,
    data_nasc 		date,
    cep 			int(9) default 0,
    numero 			varchar(10) default'',
    complemento		varchar(20) default '',
    primary key (cod_cliente),
    constraint foreign key fk_cliencep (cep) references tbl_endereco(cep)
);

create table tbl_pedido (
	cod_pedido 		int unsigned auto_increment,
    data_pedido 	date,
    data_entrega 	date,
    cod_cliente 	int unsigned not null,
    primary key (cod_pedido),
    constraint fk_cliente foreign key (cod_cliente) references tbl_cliente(cod_cliente)
);

create table tbl_itempedido (
	qtde 			int unsigned not null,
    i_cod_pedido 	int unsigned not null,
    i_cod_produto 	int unsigned not null,
    i_valor 		decimal (10, 2) not null,
    constraint fk_pedido1 foreign key (i_cod_pedido) references tbl_pedido (cod_pedido),
    constraint fk_tbl_produto1 foreign key (i_cod_produto) references tbl_produto (cod_produto)
);

# select sum(qtde * i_valor) as valor_total
# from tbl_itempedido
# where i_cod_pedido = 3;

# select i_cod_pedido pedido,
#		sum(qtde * i_valor) as valor_total
# from tbl_itempedido
# group by i_cod_pedido