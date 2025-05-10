# EXERCÍCIOS "QUERY" PARA TREINO

# Exercício 1 - Ruas por cidade: Feito
select count(*) logradouro
from tbl_endereco
where cidade = 'Embu das Artes';

select count(*) logradouro
from tbl_endereco
where cidade = 'Taboão da Serra';

# Exercício 2 - Bairro com mais ruas: Feito (com consulta ao pdf)
select count(*) as qtde, bairro
from tbl_endereco
group by bairro
order by 1 desc
limit 5;

# Exercício 3 - Clientes que nasceram entre 19(60/90): Feito
select nome_cliente, data_nasc
from tbl_cliente
where year (data_nasc) >= 1960 && year(data_nasc) <= 1990
order by year(data_nasc);

# Exercício 4 - Mês com mais clientes nascidos: Feito (com consulta ao pdf)
select count(*) as qtde, month(data_nasc) mes
from tbl_cliente
group by 2
order by 1 desc;

# Exercício 5 - Mês com mais pedidos realizados: Feito
select count(*) as qtde, month(data_pedido) mes
from tbl_pedido
group by 2
order by 1 desc;

# Exercício 6 - Menor preço vendido: Feito
select min(i_valor) as minimo_do_minimo
from tbl_itempedido;

# Exercício 7 - Código do produto mais vendido: Feito
select count(*) as qtde, i_cod_produto
from tbl_itempedido
group by 2
order by 1 desc;

# Exercício 8 - Soma do Estoque Atual: Feito
select sum(estoque_atual) 
from tbl_produto;

# Exercício 9 - Média do Estoque Atual: Feito
select avg(estoque_atual)
from tbl_produto;

# Exercício 10 - Valor total do Estoque Atual: Feito (com consulta ao pdf)
select sum(estoque_atual * valor) as valor_total
from tbl_produto;