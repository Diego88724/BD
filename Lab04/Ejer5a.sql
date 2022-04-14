SELECT DISTINCT V.destino, V.fechasalida, C.dni, C.nombre
FROM (HOTEL_VIAJE_CLIENTE HVC NATURAL JOIN CLIENTE C)
INNER JOIN
(VIAJE V NATURAL JOIN GUIA G) 
ON HVC.Destino=V.Destino AND HVC.FechaSalida=V.FechaSalida
WHERE G.nombre=C.nombre