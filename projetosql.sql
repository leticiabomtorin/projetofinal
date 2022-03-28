-- 1 Recriar as tabelas de correntista e fluxo_de_caixa
-- 2 inserir 4 registros na tabela de correntista
-- 3 inserir 10 registros na tabela de fluxo_de_caixa
-- 4 vai mostrar a seleção dos registros relacionando as tabelas

-- Tabela de Correntista
create table correntista(
ag int not null,
conta int not null,
nome varchar(50) not null,
email varchar(80) not null,
telefone char(11) not null,
saldo decimal(8,2) not null,
primary key (ag,conta));

describe correntista;

insert into correntista
(ag,conta,nome,email,telefone,saldo)
values
(7932,01675,"Leticia","leticia@itau-unibanco.com.br","996921877",20000.00),
(7931,07229,"Maria","Maria@itau-unibanco.com.br","996521478",10000.00),
(0191,78450,"Carolina","Carolina@itau-unibanco.com.br","87452127",15000.00),
(0192,12547,"Rafael","Rafael@itau-unibanco.com.br","547896521",800.00);


select * from correntista;

create table fluxo_caixa(
ag int not null,
conta int not null,
fluxo int not null,
entrada decimal(8,2) not null,
saida decimal(8,2) not null,
primary key(ag,conta,fluxo));

insert into fluxo_caixa
(ag,conta,fluxo,entrada,saida)
values
(7932,01675,8,10000,0),
(7932,01675,12,1000,0),
(7931,07229,24,100,0),
(7931,07229,12,10,0),
(0191,78450,5,12000,0),
(0191,78450,10,10200,0),
(0192,12547,12,1500,0),
(0192,12547,8,100,0),
(0191,78450,9,1050,0),
(0191,78450,2,15,0);

select * from fluxo_caixa;

-- Relacionando as tabelas de correntista ao fluxo de caixa
select c.ag,c.conta,c.nome,f.entrada,f.saida
from correntista as c,
fluxo_caixa as f
where (c.ag=f.ag) and (c.conta=f.conta);

-- Relacionando as tabelas com inner join
select c.ag,c.conta,c.nome,f.entrada,f.saida
from correntista as c
inner join fluxo_caixa as f
on(c.ag=f.ag) and (c.conta=f.conta);

select c.ag,c.conta,c.nome,f.entrada,f.saida
from correntista as c
inner join fluxo_caixa as f
on(c.a=f=1) and (c.conta=f=1);

select count(*) as total_registros from correntista;

select count(*) as total_registros from fluxo_caixa;