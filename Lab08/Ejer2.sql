SELECT DISTINCT B.id, B.nombre 
			FROM biblioteca AS B 
			INNER JOIN ejemplar AS E1 ON B.id=E1.biblioteca 
			INNER JOIN libro AS L ON L.id=E1.libro 
			INNER JOIN ejemplar AS E2 ON L.id=E2.libro AND E1.biblioteca<>E2.biblioteca 
			WHERE L.paginas < 100 
			ORDER BY B.nombre DESC;