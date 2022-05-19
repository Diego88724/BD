SELECT l.id, l.titulo, l.editorial, COUNT(distinct p.lector) 
		FROM libro l INNER JOIN prestamo p ON l.id=p.libro 
		GROUP BY l.id, l.titulo, l.editorial 
		HAVING COUNT(distinct p.lector)>=ALL (SELECT COUNT(DISTINCT lector) 
											FROM prestamo 
											GROUP BY libro);