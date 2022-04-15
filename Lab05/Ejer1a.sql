SELECT Destino, FechaSalida 
FROM viaje WHERE PrecioDia > ALL (SELECT PrecioDia 
									FROM viaje
									WHERE Destino='Sahara')