SELECT C.dni, C.nombre, C.Direccion
FROM cliente C
WHERE NOT EXISTS (SELECT HVC.DNI
					FROM hotel_viaje_cliente HVC NATURAL JOIN Hotel H
					WHERE H.Nombre='Asperia' AND H.Localidad='Donostia'
					AND c.dni=hvc.DNI)