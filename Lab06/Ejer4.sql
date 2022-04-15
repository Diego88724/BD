SELECT V.Destino,
		DATE_ADD(V.FechaSalida, INTERVAL 1 YEAR) AS NuevaFecha,
		V.FechaSalida
FROM Viaje V
WHERE NOT EXISTS (SELECT *
					FROM hotel_viaje HV1
					WHERE HV1.Destino= 'Rias Baixas'
						AND HV1.FechaSalida='2021-05-19'
						AND NOT EXISTS (SELECT *
										FROM hotel_viaje HV2
										WHERE HV1.IdHotel=HV2.IdHotel
										AND hV2.Destino=v.Destino
										AND HV2.FechaSalida=V.FechaSalida))