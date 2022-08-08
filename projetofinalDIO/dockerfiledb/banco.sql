CREATE DATABASE meubanco;
USE meubanco;
CREATE TABLE dados (
    AlunoID int,
    Nome varchar(50),
    Sobrenome varchar(50),
    Endereco varchar(150),
    Cidade varchar(50),
    Host varchar(50)
);

ALTER USER 'root IDENTIFIED WITH mysql_native_password BY 'root';
