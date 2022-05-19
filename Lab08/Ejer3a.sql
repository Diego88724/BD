SELECT DISTINCT V.destino, V.FechaSalida 
			FROM viaje V LEFT OUTER JOIN excursion_opcional HVC 
			ON V.Destino=HVC.Destino AND V.FechaSalida=HVC.FechaSalida 
			WHERE HVC.numero IS NULL OR HVC.precio<70; 