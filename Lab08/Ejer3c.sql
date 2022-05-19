SELECT v.destino, v.FechaSalida 
			FROM viaje V 
			WHERE (V.destino, V.FechaSalida) NOT IN (SELECT destino, FechaSalida 
												FROM excursion_opcional) 
			OR (V.destino, V.FechaSalida) IN (SELECT destino, FechaSalida 
												FROM excursion_opcional 
												WHERE precio<70);