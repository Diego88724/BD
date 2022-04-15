SELECT Destino, FechaSalida
FROM viaje
WHERE PrecioDia*dias >=ALL (SELECT PrecioDia*dias FROM viaje)