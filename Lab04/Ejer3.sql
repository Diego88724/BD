SELECT Dni, Nombre, COUNT(Dni) AS Cant
FROM guia NATURAL JOIN idioma
GROUP BY Dni, Nombre
HAVING COUNT(Dni) > 3
ORDER BY COUNT(Dni) DESC
