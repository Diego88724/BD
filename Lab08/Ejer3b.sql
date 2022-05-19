	SELECT V.destino, V.FechaSalida 
			FROM viaje V 
			WHERE (V.destino, V.FechaSalida) NOT IN (SELECT destino, FechaSalida 
											FROM excursion_opcional) 
			UNION 
										SELECT destino, FechaSalida 
										FROM excursion_opcional 
										WHERE precio<70; 