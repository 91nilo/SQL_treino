create database projeto_sistema;

use database projeto_sistema;

create table usuario(
    idUsuario int auto_increment unsigned,
	saldo decimal(7,2),
	email varchar(30),
	senha varchar(12),
	nome varchar(20),
	ultimo_nome varchar(20),
	primary_key(idUsuario)
);

create table cartao(
	instituicao varchar(22),
	idCartao int unsigned,
	primary_key(idCartao)
);

create table receita(
	idReceita int unsigned,
	fonte varchar(40),
	observacao varchar(80),
	dataReceita datetime,
	primary_key(idReceita)
);

create table despesa(
	idDespesa int unsigned,
	dataDespesa datetime,
	fonte varchar(40),
	observacao varchar(80),
	situacao enum('Paga', 'Pendente'),
	tipoPagamento enum('Cartao', 'Transferencia', 'Dinheiro')
	
);