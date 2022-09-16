insert into veiculo (Marca, Modelo, Placa, Ano) values
			('Fiat', 'Uno', 'AAA1111', 2018),
            ('VW', 'Polo', 'BBB2222', 2021),
            ('HB', 'HB20', 'CCC3333', 2022),
            ('Chevrolet', 'Onix', 'DDD4444', 2022);

select * from veiculo;

insert into clients (Cname, CPF, Contact) values
			('Paulo José', 12345678912, 12345678912),
            ('Marcos Roberto', 01236547890, 34999999988),
            ('Paulo Cesar', 74185296317, 34777777777),
            ('Sidney Carlos', 65432198752, 34666666666);
select * from clients;

insert into orders (orderService, orderDescription, orderDataInicio, orderDataFechamento) values
			('Trocar Amortecedores', 'Amortecedores não estão funcionando corretamente', '2022-10-20', '2022-10-20'),
            ('Revisão de 10.000km', 'Atingiu a kilometragem para primeira revisão', '2022-10-21', '2022-10-21'),
            ('Trocar de óleo do motor e cambio', 'Atingiu a kilometragem para troca', '2022-10-21', '2022-10-21'),
            ('Motor com barulho estranho', 'Analisar barulho no motor', '2022-10-21', '2022-10-31');
select * from orders;

insert into analist (Aname, Departament, CPF) values
			('José Carlos', 'Manutenção', 15975314725),
            ('Antonio Cesar', 'Manutenção', 78945612395),
            ('Antonio Paulo', 'Manutenção', 78945612365),
            ('Cesar Augusto', 'Manutenção', 95184762398);
select * from analist;

insert into Corretiva (Cname, CPF) values
			('Pedro Antonio', 74815932602),
            ('Francisco Carlos', 98765432100),
            ('Carlos Alberto', 91532648704),
            ('Alberto Santos', 53159758255);
select * from Corretiva;

insert into Preventiva (Pname, CPF) values
			('Jose Francisco', 55544466600),
            ('Peter Silva', 44466688899),
            ('Jonas Santos', 45465655522),
            ('Manoel Pereira', 12132325877);
select * from Preventiva;

insert into OS (OSDescription, OSDataInicio, OSDataFechamento, OSStatus, priceMDO, priceParts) values
			('trocado os 4 amortecedores, feito alinhamento e balanceamento', '2022-10-20', '2022-10-20', 'Encerrada', 50.00, 189.00),
            ('trocado as velas o filtro de ar o filtro de óleo e o óleo', '2022-10-21', '2022-10-21', 'Encerrada', 100.00, 250.00),
            ('Trocado oleo motor e cambio', '2022-10-21', '2022-10-21', 'Encerrada', 100.00, 200.00),
            ('motor esta batendo válvulas - necessário retificar o cabeçote', '2022-10-21', '2022-10-31', 'Aguardando peças', 850.00, 10.000);
select * from OS;
select count(*) from clients;

select * from orders o, os os where o.idOrder = idOS;











