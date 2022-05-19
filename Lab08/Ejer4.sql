SELECT v.dni, extract(year from v.FechaSalida) AS ano, 
			COUNT(DISTINCT v.Destino) AS destinos, COUNT(DISTINCT hvc.DNI) AS clientes 
			FROM idioma i INNER JOIN 
			viaje v ON i.dni=v.dni INNER JOIN 
			hotel_viaje_cliente hvc 
			ON v.Destino=hvc.Destino AND v.FechaSalida=hvc.FechaSalida 
			WHERE i.idioma='Catalan' OR i.idioma='Frances' 
			GROUP BY v.dni, extract(year from v.FechaSalida);