-- drop database oficina;
create database oficina;
use oficina;

-- -----------------------------------------------------
-- criar tabela Veiculo
-- -----------------------------------------------------
create table veiculo (
  idVeiculo int auto_increment,
  Marca varchar(45) null,
  Modelo varchar(45) null,
  Placa varchar(45) null,
  Ano int null,
  primary key (idVeiculo)
);

-- -----------------------------------------------------
-- criar tabela Cliente
-- -----------------------------------------------------
create table clients (
  idClient int auto_increment,
  Cname varchar(45) null,  
  CPF char(11) not null,
  Contact varchar(45) null,
  veiculo_idVeiculo int null,
  primary key (idClient),
  constraint unique_cpf_client unique (CPF),
  constraint fk_clients_veiculo foreign key (idClient) references veiculo(idVeiculo) 
);
alter table clients auto_increment=1;

-- -----------------------------------------------------
-- criar tabela Pedido
-- -----------------------------------------------------
create table orders (
  idOrder int auto_increment,
  orderService varchar(45) null,
  orderDescription varchar(255) null,
  orderDataInicio date null,
  orderDataFechamento date null,
  veiculo_idVeiculo int not null default 0,
  primary key (idOrder, veiculo_idVeiculo),
  constraint fk_orders_veiculo foreign key (idOrder) references veiculo(idVeiculo)
);

-- -----------------------------------------------------
-- criar tabela Analista da Manutenção
-- -----------------------------------------------------
create table analist (
  idAnalist int auto_increment,
  Aname varchar(45) null,
  Departament varchar(45) null,
  CPF CHAR(15) not null,
  primary key (idAnalist)
);

-- -----------------------------------------------------
-- criar tabela Manuteção Corretiva
-- -----------------------------------------------------
create table Corretiva (
  idCorretiva int auto_increment,
  Cname varchar(45) null,
  CPF char(15) not null,
  primary key (idCorretiva)
);

-- -----------------------------------------------------
-- criar tabela Manutenção Preventiva
-- -----------------------------------------------------
create table Preventiva (
  idPreventiva int auto_increment,
  Pname varchar(45) null,
  CPF char(15) not null,
  primary key (idPreventiva)
);

-- -----------------------------------------------------
-- criat tabela Ordem de Serviço
-- -----------------------------------------------------
create table OS (
  idOS int auto_increment,
  OSDescription varchar(255) null,
  OSDataInicio date null,
  OSDataFechamento date null,
  OSStatus enum('Encerrada', 'Aguardando peças', 'Aguardando MDO') default 'Encerrada',
  Corretiva_idCorretiva int not null default 0,
  Preventiva_idPreventiva int not null default 0,
  Order_idOrder int not null default 0,
  Order_Veiculo_idVeiculo int not null default 0,
  priceMDO float,
  priceParts float,
  primary key (idOS, Corretiva_idCorretiva, Preventiva_idPreventiva, Order_idOrder, Order_Veiculo_idVeiculo),
  constraint fk_OS_Corretiva foreign key (idOS) references Corretiva(idCorretiva),
  constraint fk_OS_Preventiva foreign key (idOS) references Preventiva(idPreventiva),
  constraint fk_OS_order foreign key (idOS) references Orders(idOrder)
);


-- -----------------------------------------------------
-- criar tabela Analise do Pedido
-- -----------------------------------------------------
create table OrdersAnalist (
  Order_idOrder int not null,
  OrdersAnalist_idAnalist int not null,
  primary key (Order_idOrder, OrdersAnalist_idAnalist),
  constraint fk_OrdersAnalist_Analist foreign key (Order_idOrder) references Analist(idAnalist)
);

show tables;
show databases;








