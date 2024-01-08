CREATE DATABASE RH_CAFE;

USE RH_CAFE;

CREATE TABLE BARISTAS (
id BIGINT auto_increment PRIMARY KEY,
Nome VARCHAR(30),
Salario DECIMAL(10,2),
DataNascimento DATE,
Setor VARCHAR(30),
Entrada DATE
);

INSERT INTO BARISTAS (Nome,Salario,DataNascimento,Setor,Entrada)
VALUES
   ('Rafael', 5500.00, '1997-04-13', 'Café', '2023-08-14'),
   ('Lucas', 6500.00, '1997-05-19', 'Café', '2023-04-10'),
   ('Guilherme', 10000.00, '1990-07-12', 'Café', '2023-01-01'),
   ('Vitor', 5500.00, '1997-03-25', 'Café', '2023-11-02'),
   ('Maria', 5500.00, '2000-09-10', 'Café', '2023-12-02');
   
   SELECT * FROM BARISTAS WHERE Salario > 2000;
   
   SELECT * FROM BARISTAS WHERE Salario < 2000;
   
   UPDATE BARISTAS
   SET Salario = 8500.00
   WHERE Nome = 'Lucas';
   
   