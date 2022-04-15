SELECT H.IdHotel, COUNT(DISTINCT HVC.Dni) AS Clientes
FROM hotel AS H LEFT JOIN hotel_viaje_cliente AS HVC
	ON H.IdHotel=HVC.idHotel
GROUP BY H.idHotel 