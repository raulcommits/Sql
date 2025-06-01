# ------------------------------ View's
create view vw_vendas1 as
select c.cod_cliente as codigo, c.nome_cliente as nome, p.cod_pedido as pedido,
p.data_pedido as data_requisicao
from tbl_cliente c, tbl_pedido p
where c.cod_cliente = p.cod_cliente;

create view vw_vendasWitem as
select c.cod_cliente as codigo, c.nome_cliente as nome, p.cod_pedido as pedido,
p.data_pedido as data_requisicao,
i.i_cod_produto as produto, i.qtde
from tbl_cliente c, tbl_pedido p, tbl_itempedido i
where c.cod_cliente = p.cod_cliente
and i.i_cod_pedido = p.cod_pedido;

create view vw_vendasWdescricao as
select c.cod_cliente as codigo, c.nome_cliente as nome, p.cod_pedido as pedido,
p.data_pedido as data_requisicao,
i.i_cod_produto as produto, pr.nome_produto as descricao, i.qtde,
pr.valor, i.qtde * pr.valor as totalcomprado
from tbl_cliente c, tbl_pedido p, tbl_itempedido i, tbl_produto pr
where c.cod_cliente = p.cod_cliente
and i.i_cod_pedido = p.cod_pedido
and i.i_cod_produto = pr.cod_produto;

select * from vw_vendas1;
select * from vw_vendasWitem;
select * from vw_vendasWdescricao;