create database if not exists biblioteca_projeto;

create table if not exists usuario(
email varchar (40) not null,
data_nascimento date not null,
nome varchar (50) not null,
cpf char (14) not null,
endereco varchar(50) not null, 
situacao varchar(10),
matricula int auto_increment primary key
);

insert into usuario (email, data_nascimento, nome, cpf, endereco, situacao)values 
("joao@usuario.com", '1991-05-12', "João da Silva", "011.591.965-11", "Rua A, 342", "Regular"),
("maria@teste.com", '2000-12-12', "Maria da Silva", "010.590.960-10", "Rua B, 356", "Regular"),
("mauro@usuario.com", '1991-05-12', "João da Silva", "011.591.965-11", "Rua A, 342");

create table if not exists funcionario
(
nome varchar (50) not null, 
telefone char (14) not null,
codigo int auto_increment primary key
) ;

insert into funcionario (nome, telefone) values 
("José da Silva", "(81)99898-9898"),
("Joana da Silva", "(81)95955-9595");

create table if not exists livro (
genero varchar(20),
codigo int auto_increment,
titulo varchar(50) not null,
editora varchar(30),
codigo_funcionario int,
primary key (codigo),
constraint CodigoFuncionarioLivro foreign key (codigo_funcionario) references funcionario(codigo)
);

insert into livro (genero, titulo, editora, codigo_funcionario) values
("Ficção Científica", "A volta dos que não foram", "Editora Amanhã", 2),
("História", "As tranças do Rei Careca - a história da peruca","Editora Nova", 1),
("Tecnologia", "Introdução a Sistemas de Banco de Dados", "Elsevier", 1);

create table if not exists autor (
nome varchar (50) not null,
codigo int auto_increment primary key,
codigo_funcionario int,
constraint fk_CodFuncionario foreign key (codigo_funcionario) references funcionario(codigo)
);

insert into autor (nome, codigo_funcionario) values 
("John Silver", 2),
("Antônio da Silva", 1),
("C.J Date", 1);

create table if not exists autor_livro (
codigo_livro int,
codigo_autor int,
codigo int auto_increment primary key,
constraint livro_AutorLivro foreign key (codigo_livro) references livro(codigo),
constraint autor_AutorLivro foreign key (codigo_autor) references autor(codigo)
);

insert into autor_livro (codigo_livro, codigo_autor) values 
(1, 2),
(1, 2),
(1, 1),
(3, 3);

create table if not exists emprestimo
(
data_concessao date not null, 
data_devolucao date not null, 
codigo int auto_increment primary key,
codigo_funcionario int,
matricula int,
codigo_livro int,
constraint fk_FuncionarioEmp foreign key (codigo_funcionario) references funcionario (codigo),
constraint fk_matriculaEmp foreign key (matricula) references usuario (matricula),
constraint fk_LivroEmp foreign key (codigo_livro) references livro (codigo)
) ;

insert into emprestimo (data_concessao, data_devolucao, codigo_funcionario, matricula, codigo_livro)values
('2020-07-17', '2020-08-01', 1, 1, 1), 
('2020-07-15', '2020-07-30', 2, 2, 3),
('2020-07-10', '2020-07-25', 1, 2, 2);



