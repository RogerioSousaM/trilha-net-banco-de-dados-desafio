-- 1
SELECT 
    Nome,
	Ano

FROM Filmes


-- 2
 SELECt
    *
 FROM Filmes
 ORDER BY Ano ASC


 --3
SELECT 
  Nome,
  Ano,
  Duracao
FROM Filmes
WHERE 
    Nome = 'De Volta para o Futuro'


--4
SELECT 
   *
FROM Filmes
where Ano = '1997'


--5
SELECT
   *
FROM Filmes
WHERE ANO > '2000'


--6
SELECT
    *
FROM Filmes
WHERE Duracao > '100'  AND Duracao < '150'
ORDER BY Duracao ASC


--7
SELECT 
    Ano,
    COUNT(*) AS Quantidade
FROM Filmes
GROUP BY 
    Ano
ORDER BY 
    Quantidade DESC;



--8
SELECT 
  *
FROM Atores
WHERE Genero = 'M'



--9
SELECT
    *
FROM Atores
WHERE Genero = 'F'
ORDER BY UltimoNome


--10
SELECT
  Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = IdFilme
INNER JOIN  Generos ON FilmesGenero.IdGenero = Generos.Id


--11
SELECT
    Filmes.Nome,
    Generos.Genero 
FROM
    Filmes
INNER JOIN
    FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN
    Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE
    Generos.Genero = 'Mistério';


--12
SELECT
    Filmes.Nome,
    Atores.PrimeiroNome,
    Atores.UltimoNome,
    ElencoFilme.Papel
FROM
    Filmes
INNER JOIN
    ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN
    Atores ON ElencoFilme.IdAtor = Atores.Id;
