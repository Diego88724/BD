SELECT CONCAT('Cod-',H.IdHotel), UPPER(H.Nombre), H.Localidad
FROM hotel H LEFT JOIN
		hotel_viaje_cliente HVC ON H.idhotel=HVC.IdHotel
WHERE H.Nombre like '%Hotel%'
GROUP BY H.IdHotel, H.Nombre, H.Localidad
HAVING COUNT(DISTINCT Dni)<2
ORDER BY Localidad