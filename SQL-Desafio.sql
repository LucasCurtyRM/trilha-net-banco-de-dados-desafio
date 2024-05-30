--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano FROM Filmes
ORDER BY ANO ASC

--3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT * FROM Filmes
WHERE Ano = '1997'

--5
SELECT * FROM Filmes
WHERE Ano >= 2000

--6
SELECT * FROM Filmes
Where Duracao > 100 AND Duracao <= 150
ORDER BY Duracao ASC

--7
SELECT Ano, Count(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT * FROM Atores
WHERE Genero = 'M'

--9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

--10 
SELECT Filmes.Nome, generos.Genero FROM Generos
INNER JOIN FilmesGenero ON FilmesGenero.IdGenero = Generos.Id
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id

--11
SELECT Filmes.Nome, Generos.Genero From Generos
INNER JOIN FilmesGenero ON FilmesGenero.IdGenero = Generos.Id
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
WHERE Generos.Genero = 'Mistério'

--12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Atores
INNER JOIN ElencoFilme ON ElencoFilme.IdAtor = Atores.Id
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id