SELECT H.IdHotel, Nombre, Localidad
FROM hotel H LEFT JOIN
		hotel_viaje_cliente HVC ON H.IdHotel=hvc.IdHotel
GROUP BY H.IdHotel
HAVING COUNT(DISTINCT hvc.dni)<2
ORDER BY H.localidad