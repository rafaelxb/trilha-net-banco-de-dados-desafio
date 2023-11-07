-- 1
SELECT 
	Nome,
	Ano
FROM Filmes

--2
SELECT 
	Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC

-- 3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De volta para o Futuro'

-- 4
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

-- 6
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--7
SELECT 
	Ano,
	COUNT(Ano) AS QUANTIDADE
FROM Filmes
GROUP BY Ano
ORDER BY QUANTIDADE DESC

--8
SELECT
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'M'

--9
SELECT
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

--10
SELECT
	F.Nome,
	G.Genero
FROM Filmes as F
INNER JOIN FilmesGenero	as FG
	ON F.Id = FG.IdFilme
INNER JOIN Generos as G
	ON FG.IdGenero = G.Id

--11
SELECT
	F.Nome,
	G.Genero
FROM Filmes as F
INNER JOIN FilmesGenero	as FG
	ON F.Id = FG.IdFilme
INNER JOIN Generos as G
	ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'

--12
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes as F
INNER JOIN ElencoFilme as EF
	ON EF.IdFilme = F.Id
INNER JOIN Atores as A
	ON A.Id = EF.IdAtor