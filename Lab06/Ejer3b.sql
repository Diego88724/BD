SELECT H1.IdHotel, H1.Nombre
FROM hotel H1 INNER JOIN Hotel H2 ON H1.Capacidad=H2.Capacidad
WHERE H1.localidad LIKE '%Buenos Aires%' AND H2.nombre='Asperia'
	AND H2.Localidad='Donostia'