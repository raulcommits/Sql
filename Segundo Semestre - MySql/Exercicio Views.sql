# EXERCÍCIO VIEWS EM DUPLA. DUPLA: PEDRO GUEDES E RAUL TOMAZ, DSII

create view vw_pedido as
select c.cod_cliente as codigo, c.nome_cliente as nome, p.cod_pedido as pedido,
p.data_pedido as data_requisicao, p.data_entrega as data_recebimento
from tbl_cliente c, tbl_pedido p
where c.cod_cliente = p.cod_cliente
and p.data_pedido > "2014-01-30";

select * from vw_pedido;
#-----------------------------------------------------------------------------------
create view vw_qtpedido as
select c.cod_cliente as codigo, c.nome_cliente as nome, p.cod_pedido as pedido,
p.data_pedido as data_requisicao, p.data_entrega as data_recebimento,
i.qtde as quantidade, i.i_cod_produto as numero_produto
from tbl_cliente c, tbl_pedido p, tbl_itempedido i
where c.cod_cliente = p.cod_cliente and qtde > 25;

select * from vw_qtpedido;
#-----------------------------------------------------------------------------------
create view vw_descpedido as
select p.cod_pedido as pedido, c.cod_cliente as codigo,
i.qtde as quantidade, i.i_cod_produto as numero_produto, pr.desc_produto
from tbl_cliente c, tbl_pedido p, tbl_itempedido i, tbl_produto pr
where c.cod_cliente = p.cod_cliente;

select * from vw_descpedido;
#------------------------------------------------------------------------------------
create view vw_reajuste as
select pr.cod_produto as numero_produto, pr.desc_produto as descricao,
pr.valor as preco, pr.valor * 1.112 as reajuste 
from tbl_produto pr;

select * from vw_reajuste;