SELECT cliente.DNI, cliente.Nombre, COUNT(excursion_opcional.Numero), SUM(excursion_opcional.Precio)
FROM cliente NATURAL JOIN excursion_opcional NATURAL JOIN excursion_opcional_cliente
WHERE excursion_opcional.Destino = 'Namibia'
GROUP BY cliente.DNI, cliente.Nombre