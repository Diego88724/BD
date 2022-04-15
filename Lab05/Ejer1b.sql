SELECT COUNT(*) 
FROM viaje 
WHERE PrecioDia > ALL ( SELECT PrecioDia 
						FROM viaje 
						WHERE Destino='Sahara')