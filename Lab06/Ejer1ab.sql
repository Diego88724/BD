SELECT C.dni, C.nombre, Direccion
FROM cliente C
WHERE EXISTS (SELECT HVC.DNI
				FROM hotel_viaje_cliente HVC NATURAL JOIN Hotel H
				WHERE H.Nombre='Asperia' AND H.Localidad='Donostia'
				AND c.DNI=hvc.DNI)