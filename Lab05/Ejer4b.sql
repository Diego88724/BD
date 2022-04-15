SELECT Dni, Nombre
FROM hotel_viaje_cliente NATURAL JOIN cliente
WHERE Dni<>'10000002'
GROUP BY Dni, Nombre
HAVING COUNT(DISTINCT Idhotel) = (SELECT COUNT(DISTINCT IdHotel)
									FROM hotel_viaje_cliente
									WHERE Dni = '10000002')