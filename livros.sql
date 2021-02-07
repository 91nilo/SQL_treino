create database if not exists db_Biblioteca;

create table if not exists livro
(titulo varchar(100) not null,
autor varchar(100) not null,
editora varchar (50),
ano_publicacao char(4),
codigo int auto_increment,
primary key (codigo)
);

insert into livro (titulo, autor, editora, ano_publicacao) 
VALUES
("O Senhor dos Anéis", "J.R.R Tolkien", "Martins Fontes", "1954"),
("Fundação", "Isaac Asimov", "Aleph", "1942");

alter table livro MODIFY codigo smallint auto_increment;

insert into livro (titulo, autor, editora, ano_publicacao)
values
("A Máquina do tempo", "H.G. WELLS", "Principis", "1895"),
("Divina Comédia", "Dante Alighieri", "Desconhecido", "1472"),
("Os três Mosqueteiros", "Alexandre Dumas", "Desconhecido", "1844");

update livro set editora="Nova Fronteira" where codigo=4;

