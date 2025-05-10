# POPULANDO AS TABELAS COM OS PRODUTOS
insert into tbl_produto (nome_produto, desc_produto, unid_medida, estoque_atual, estoque_min, estoque_max, valor) values
('Arroz', 'Arroz agulhinha tipo 1', 'SC', 10, 2, 20, 12.50),
('Feijão', 'Feijão Carioca com casca', 'SC', 25, 5, 60, 7.50),
('Macarrão', 'Macarrão Adria Espaguete', 'PC', 50, 10, 80, 5.50),
('Óleo', 'Óleo Lisa', 'LT', 15, 10, 45, 6.50),
('Vinagre', 'Vinagre Castelo', 'GR', 30, 10, 50, 7.89),
('Batata', 'Batata Lavada', 'KG', 100, 50, 200, 4.50),
('Tomate', 'Tomata Vermelho', 'KG', 80, 8, 160, 6.90),
('Cebola', 'Cebola com Casca', 'KG', 50, 5, 100, 6.99),
('Leite', 'Leite Leco', 'CX', 25, 10, 90, 2.50),
('Café', 'Café do Ponto', 'SC', 500, 100, 200, 11.50);

#Clientes
insert into tbl_cliente (nome_cliente, cpf, data_nasc, cep, numero, complemento) values
('Marcos Costa de Sousa', '12345678901','1981-02-06',6768100, '1525', 'apto 166C'),
('Zoroastro Zoando', '01987654321', '1989-06-15', 6757190, '250',''),
('Idelbrandolâncio Silva', '54698721364', '1974-09-27',6753001, '120',''),
('Cosmólio Ferreira', '41368529687','1966-12-01',6753020, '25', 'apto 255 F'),
('Conegunda Prado', '54781269501','1950-10-06',6753020, '50', 'apto 166C'),
('Brogundes Asmônio', '41256398745', '1940-05-10',6753400, '100',''),
('Iscruência da Silva', '12457965823', '1974-11-25', 6803040, '5',''),
('Zizafânio Zizundo', '54123698562', '1964-08-14',6803140, '25',''),
('Ricuerda Zunda', '21698534589', '1934-10-14',6803045, '123',''),
('Aninoado Zinzão', '25639856971','1976-12-25', 6803070, '50','');

insert into tbl_pedido (data_pedido, data_entrega, cod_cliente) values
('2025-03-12', '2025-03-19', 1),
('2025-02-27', '2025-03-03', 2),
('2025-03-02', '2025-03-04', 3),
('2025-03-10', '2025-03-16', 4),
('2025-02-18', '2025-02-25', 5),
('2025-03-03', '2025-03-09', 6),
('2025-01-29', '2025-02-06', 7),
('2025-02-14', '2025-02-20', 8);

insert into tbl_itempedido (qtde, i_cod_pedido, i_cod_produto, i_valor) values
(2, 1, 1, 12.50), (3, 1, 2, 7.50), (4, 1, 6, 4.50),
(5, 2, 7, 6.90), (4, 2, 4, 6.50), (3, 2, 3, 5.50),
(4, 3, 9, 2.50), (2, 3, 10, 11.50), (3, 3, 4, 6.50),
(6, 4, 6, 4.50), (5, 4, 7, 6.90), (4, 4, 3, 5.50),
(3, 5, 8, 6.99), (1, 5, 1, 12.50), (2, 5, 5, 7.89),
(2, 6, 10, 11.50), (1, 6, 4, 6.50), (4, 6, 5, 7.89),
(5, 7, 2, 7.50), (2, 7, 8, 6.99), (3, 7, 9, 2.50),
(3, 8, 4, 6.50), (4, 8, 9, 2.50), (5, 8, 6, 4.50);