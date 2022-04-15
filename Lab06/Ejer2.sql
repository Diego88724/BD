SELECT G.dni, G.nombre
FROM guia G
WHERE dni<> '21212121' AND NOT EXISTS (SELECT *
										FROM idioma I1
										WHERE I1.dni='21212121' and
										NOT EXISTS (SELECT *
													FROM idioma I2
													WHERE G.dni=I2.dni AND I1.idioma=I2.Idioma))