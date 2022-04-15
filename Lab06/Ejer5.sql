SELECT C.dni, C.Nombre
FROM Cliente C
WHERE NOT EXISTS (SELECT *
					FROM viaje V
					WHERE V.Destino='Toledo' AND NOT EXISTS (SELECT *
															FROM hotel_viaje_cliente HVC
															WHERE V.destino=HVC.destino
																AND V.FechaSalida=HVC.FechaSalida
																AND C.dni=HVC.dni))