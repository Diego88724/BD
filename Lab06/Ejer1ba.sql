SELECT C.DNI, C.Nombre, C.Direccion 
FROM cliente C 
WHERE c.DNI NOT IN (SELECT HVC.Dni 
					FROM hotel_viaje_cliente HVC NATURAL JOIN hotel H 
					WHERE H.Localidad = 'Donostia' AND H.Nombre = 'Asperia')