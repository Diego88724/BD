SELECT H1.IdHotel, H1.Nombre
FROM hotel H1
WHERE H1.localidad LIKE '%Buenos Aires%' AND EXISTS (SELECT Capacidad
													FROM Hotel h2
													WHERE H2.nombre='Asperia' AND H2.Localidad='Donostia' AND H1.capacidad=h2.Capacidad)