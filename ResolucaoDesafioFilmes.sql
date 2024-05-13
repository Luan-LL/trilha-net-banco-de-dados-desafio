--1 
select nome,ano from Filmes
--2
select nome , ano,  Duracao from Filmes
Order by ano asc
--3
select nome , ano , Duracao from  Filmes
Where nome = 'De volta para o Futuro'
--4
select nome, ano , Duracao from Filmes
where ano = 1997
--5
select nome, ano , Duracao from Filmes
where ano > 2000
--6
select nome , ano , Duracao from Filmes
Where Duracao > 100 AND Duracao < 150
Order by Duracao Asc
--7
SELECT ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY ano 
Order by Quantidade Desc
-- 8
Select PrimeiroNome, UltimoNome, Genero from Atores
Where Genero = 'M' 
--9
Select PrimeiroNome, UltimoNome, Genero from Atores
Where Genero = 'F'
Order by PrimeiroNome 
--10

SELECT Filmes.Nome,Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

	
--11
SELECT Filmes.Nome,Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
where Generos.Genero = 'Mistério';

--12 

select	Filmes.Nome,
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel
FROM 
    Atores
INNER JOIN 
    ElencoFilme ON Atores.Id = ElencoFilme.IdAtor 
INNER JOIN 
    Filmes ON Filmes.Id = ElencoFilme.IdFilme

