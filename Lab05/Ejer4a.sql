SELECT Dni, Nombre 
FROM hotel_viaje_cliente NATURAL JOIN cliente 
GROUP BY Dni, Nombre 
HAVING COUNT(DISTINCT IdHotel) = (SELECT COUNT(DISTINCT IdHotel) 
									FROM hotel_viaje_cliente 
									WHERE Dni = '10000002')