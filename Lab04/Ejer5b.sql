SELECT DISTINCT V.destino, V.fechasalida, C.dni,
		SUBSTRING_INDEX(G.Nombre, ' ', 1) AS Nombre_sin_apellido
FROM (HOTEL_VIAJE_CLIENTE HVC NATURAL JOIN CLIENTE C)
INNER JOIN
(VIAJE V NATURAL JOIN GUIA G) 
ON HVC.Destino=V.Destino AND HVC.FechaSalida = V.FechaSalida
WHERE SUBSTRING_INDEX(G.Nombre, ' ', 1)=SUBSTRING_INDEX(C.Nombre, ' ', 1)