SELECT COUNT(*)
FROM viaje
WHERE PrecioDia > ANY ( SELECT PrecioDia
						FROM viaje
						WHERE Destino = 'Sahara')