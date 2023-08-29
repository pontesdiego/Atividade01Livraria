-- Criar Banco de Dados
CREATE DATABASE Livraria;

-- Mostrar Banco de Dados
SHOW DATABASES;

-- Acessa Banco de Dados
USE Livraria;

-- Criar Tabela
CREATE TABLE Bibilioteca(
    Id INT (30) auto_increment PRIMARY KEY,
    Livro VARCHAR (255) NOT NULL,
    Autor VARCHAR (255) NOT NULL,
    Sexo_Autor VARCHAR (30) NOT NULL,
    Num_Pag INT NOT NULL,
    Editora VARCHAR (255) NOT NULL,
    Valor_Capa_Comum DOUBLE NOT NULL,
    Valor_Kindle DOUBLE NOT NULL,
    Ano_de_Publicacao int (4) NOT NULL
);

-- Inserir Registro na Tabela
INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('Pai Rico Pai Pobre','Robert T. Kloyosaki', 'Masculino', '336', 'Alta Books', '61.53', '58.45', '2018');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('Mindset','Carol S. Dweck', 'Feminino', '312', 'Objetiva', '38.99', '14.95', '2017');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('Como Fazer Amigos e Influenciar Pessoas', 'Dale Carnegie', 'Masculino', '256', 'Sextante', '38.99', '33.24', '2019');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('A Cabana','William P. Young', 'Masculino', '240', 'Aqueiro', '35.99', '17.905', '2008');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('O Poder do Hábito', 'Charles Duhigg', 'Masculino', '408', 'Objetiva', '42.99', '29.90', '2012');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('Código Limpo', 'Robert C. Martin', 'Masculino', '425', 'Alta Books', '91.99', '87.39', '2009');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('Essencialismo', 'Greg McKeown', 'Masculino', '272', 'Sextante', '53.58', '33.24', '2015');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('Me Poupe!', 'Nathalia Arcuri', 'Feminino', '176', 'Sextante', '32.86', '17.09', '2018');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('Comece Pelo Porquê', 'Simon Sinek', 'Masculino', '256', 'Sextante', '50.58', '24.90', '2018');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('O Alquimista', 'Paulo Coelho', 'Masculino', '206', 'Paralela', '24.70', '14.70', '2017');

-- Apagar tabela

DROP TABLE Bibilioteca;

-- Deletar Id da tabela 

delete FROM Bibilioteca WHERE id=1;

-- Update Tabela

UPDATE Bibilioteca SET Autor = 'Joselíno' where id= 2;

-- Selecionando todos os registros da tabela "Clientes"

SELECT Id, Autor, Livro
FROM Bibilioteca
WHERE Id < 6 AND Livro Like '%S%'
ORDER BY Autor ASC ;

-- Trazer todos os dados
 
   SELECT * FROM Bibilioteca;

-- Trazer o nome do livro e nome da editora
 
 SELECT id, Livro, Editora 
 FROM Bibilioteca WHERE Id;

-- trazer o nome do livro, editora e autores do sexo Masculino

SELECT id, livro, editora, sexo_autor 
from Bibilioteca where sexo_autor
like '%Masculino';

-- Trazer o nome do livro, número de páginas e autores do sexo feminino 

SELECT id, livro, num_pag, sexo_autor 
from Bibilioteca where sexo_autor
like '%Feminino';

-- Trazer o nome do autor, editora e ano de publicação dos livros que tenham sido publicados a partir do ano 2017

SELECT id, Autor, editora,  Ano_de_Publicacao from Bibilioteca 
where Ano_de_Publicacao >= 2017;

-- Trazer o nome dos autores do sexo masculino com livros publicados pela editora Sextante ou pela editora Alta Books;

SELECT id, sexo_autor, livro, editora from Bibilioteca
where sexo_autor = 'Masculino' and editora = 'Sextante' or editora = 'Alta Books';

-- razer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum

SELECT id, livro, autor, num_pag, editora, ano_de_publicacao, valor_capa_comum 
from Bibilioteca;

-- Trazer o nome do livro, autor, número de páginas e valor no Kindle

SELECT id, livro, autor, num_pag, Valor_Kindle
from Bibilioteca;

-- Trazer o nome dos autores com livros publicados pela editora Sextante

select id, Livro, Editora, Autor, Editora FROM Bibilioteca
Where Editora = 'Sextante';

-- Trazer o nome do livro, autores, valor com capa comum e valor no Kindle

select id, Livro, Autor, Valor_Capa_Comum, Valor_Kindle 
from Bibilioteca;