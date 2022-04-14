SELECT HV.Destino, HV.FechaSalida, COUNT(idHotel)
FROM Hotel H NATURAL JOIN hotel_viaje HV
GROUP BY HV.Destino, HV.FechaSalida
HAVING COUNT(idHotel) > 1 AND COUNT(DISTINCT Localidad) = 1