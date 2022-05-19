--
-- Base de datos: viajes para ORACLE
-- usamos varchar2 en vez de varachar, integer en vez de int, date para fecha y timestamp para hora
-- la hora de salida de excursión necesitaría también de la fecha y se ha puesto NULL
-- las claves extranjeras se han dejado en el modo por defecto RESTRICT
-- ORACLE no permite ON UPDATE CASCADE
-- se ha modificado el formato de las fechas DD/MM/YYYY
-- ORACLE no funciona con AUTOCOMMIT como MySQL. Añadido COMMIT tras el último INSERT.
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla cliente
--

CREATE TABLE cliente (
  DNI varchar2(20) NOT NULL,
  Nombre varchar2(20),
  Direccion varchar2(20),
  NTelefono integer,
  PRIMARY KEY (DNI)
);

--
-- Volcado de datos para la tabla cliente
--

INSERT INTO cliente VALUES ('10000001', 'Ana Leza', 'Nueva 28, Haro', 943000001);
INSERT INTO cliente VALUES ('10000002', 'Mikel Landa', 'Leitzaran 1, Andoain', 943000002);
INSERT INTO cliente VALUES ('10000003', 'Montse Agirre', 'Erreka Kalea, Loiola', 943000003);
INSERT INTO cliente VALUES ('10000004', 'Julio Rey', 'Nueva 12, Alfaro', 943000004);
INSERT INTO cliente VALUES ('10000005', 'Leire Toledo', 'Kale Nagusia, Tolosa', 943000005);
INSERT INTO cliente VALUES ('10000006', 'Irati Lasa', 'Olaeta 5, Hernani', 943000006);
INSERT INTO cliente VALUES ('10000007', 'Ane Cases', 'Paseo 1, Briones', 943000007);
INSERT INTO cliente VALUES ('10000008', 'Bego Vadillo', 'Calle Puerto 1, Haro', 943000008);
INSERT INTO cliente VALUES ('10000009', 'Mercedes Espinosa', 'Mayor, 32, Haro', 943000009);
INSERT INTO cliente VALUES ('10000010', 'Leire Astiz', 'Olaeta 2, Donostia', 943000010);
INSERT INTO cliente VALUES ('10000011', 'Baltasar Arruti', 'Bidasoa 5, Lezo', 943000011);
INSERT INTO cliente VALUES ('10000012', 'Inma Arruti', 'Zubieta 5, Donostia', 943000012);
INSERT INTO cliente VALUES ('10000013', 'Xabier Luke', 'Maeztu 23, Gasteiz', 943000013);
INSERT INTO cliente VALUES ('10000014', 'Markel Casillas', 'Kale Nagusia, Tolosa', 943000014);
INSERT INTO cliente VALUES ('10000015', 'Libe Lasa', 'Akan 8, Urnieta', 943000015);
INSERT INTO cliente VALUES ('10000016', 'Ane Garmendia', 'Erreka 4, Donostia', 943000016);
INSERT INTO cliente VALUES ('10000017', 'Eneko Rey', 'Mayor 1, Briones', 943000017);
INSERT INTO cliente VALUES ('10000018', 'Odin Luengo', 'Mayor 2, Briones', 943000018);
INSERT INTO cliente VALUES ('10000019', 'Bixente Astiz', 'Zubieta 32, Usurbil', 943000019);
INSERT INTO cliente VALUES ('10000020', 'Mara Esnal', 'Olaeta 8, Hernani', 943000020);
INSERT INTO cliente VALUES ('10000021', 'Jean Ray', 'Pl. Centenario, Haro', 943000021);
INSERT INTO cliente VALUES ('10000022', 'Luis Pastor', 'Nueva 32, Haro', 943000022);
INSERT INTO cliente VALUES ('10000023', 'Gaspar Eloy', 'Roble 2, Briones', 943000023);
INSERT INTO cliente VALUES ('10000024', 'Ainhoa Elizalde', 'Berrospe 6, Tolosa', 943000024);
INSERT INTO cliente VALUES ('10000026', 'Bienvenido Ortega', 'Kale Nagusia, Tolosa', 943000026);
INSERT INTO cliente VALUES ('72515655', 'Mikel Arteta', 'Orio 5, Beasain', 632700787);
INSERT INTO cliente VALUES ('72515657', 'Patxi Valverde', 'Santana 28, Beasain', 632700789);
INSERT INTO cliente VALUES ('77777777', 'Maite Lopez', 'Leitzaran 1, Andoain', 943598778);
INSERT INTO cliente VALUES ('88888888', 'Maite Artola', 'Zubieta 5, Donostia', 943678900);
INSERT INTO cliente VALUES ('99999999', 'Nora Alberdi', 'Pl. Centenario, Lezo', 688344366);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla guia
--

CREATE TABLE guia (
  DNI varchar2(20) NOT NULL,
  Nombre varchar2(20),
  NTelefono integer,
  PRIMARY KEY (DNI)
);

--
-- Volcado de datos para la tabla guia
--

INSERT INTO guia VALUES ('21212121', 'Mikel Landa', 943121212);
INSERT INTO guia VALUES ('65111111', 'Leire Artola', 943313131);
INSERT INTO guia VALUES ('66666666', 'Andoni Toledo', 948666666);
INSERT INTO guia VALUES ('72515633', 'Maite Leunda', 632700765);
INSERT INTO guia VALUES ('72515638', 'Cristian Blanco', 632700770);
INSERT INTO guia VALUES ('72515639', 'Edurne Gorriti', 632700771);
INSERT INTO guia VALUES ('72515642', 'Nerea Haro', 632700774);
INSERT INTO guia VALUES ('72515648', 'Maite Loinaz', 632700780);
INSERT INTO guia VALUES ('72515650', 'Ainhoa Zapiain', 632700782);
INSERT INTO guia VALUES ('72515651', 'Unai Gauna', 632700783);
INSERT INTO guia VALUES ('72515655', 'Mikel Arteta', 632700787);
INSERT INTO guia VALUES ('72515657', 'Patxi Valverde', 632700789);
INSERT INTO guia VALUES ('72515665', 'Irati Lasa', 632700797);
INSERT INTO guia VALUES ('72515666', 'Gontzal Mendibil', 632700798);
INSERT INTO guia VALUES ('72515667', 'Igor Zalakain', 632700799);
INSERT INTO guia VALUES ('72515671', 'Jon Zatarain', 632700768);
INSERT INTO guia VALUES ('72515672', 'Javier Cosin', 632700769);
INSERT INTO guia VALUES ('72515673', 'Bienvenido Atetxe', 632700770);
INSERT INTO guia VALUES ('75646464', 'Iker Pujol', 943567567);
INSERT INTO guia VALUES ('88888888', 'Maite Artola', 948777777);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla viaje
--

CREATE TABLE viaje (
  Destino varchar2(20) NOT NULL,
  FechaSalida date NOT NULL,
  Dias integer,
  CiudadSalida varchar2(20),
  DNI varchar2(20),
  PrecioDia integer,
  PRIMARY KEY (Destino,FechaSalida),
  FOREIGN KEY (DNI) REFERENCES guia (DNI)
);

--
-- Volcado de datos para la tabla viaje
--

INSERT INTO viaje VALUES ('Aitzgorri', '15/09/2020', 1, 'Zegama', '72515648', 25);
INSERT INTO viaje VALUES ('Asilah', '03/05/2021', 602, 'Donostia', '72515657', 325);
INSERT INTO viaje VALUES ('Auckland', '01/04/2021', 5, 'Mordor', '72515657', 75);
INSERT INTO viaje VALUES ('Barcelona', '01/01/2020', 5, 'Lasarte', '72515667', 150);
INSERT INTO viaje VALUES ('Barcelona', '01/02/2020', 4, 'Lasarte', '21212121', 100);
INSERT INTO viaje VALUES ('Barcelona', '04/05/2021', 5, 'Hernani', '72515667', 741);
INSERT INTO viaje VALUES ('Berlin', '01/06/2019', 5, 'Santander', '72515650', 111);
INSERT INTO viaje VALUES ('Donostia', '01/01/2019', 40, 'Haro', '72515650', 400);
INSERT INTO viaje VALUES ('Donostia', '01/01/2021', 40, 'Haro', '65111111', 100);
INSERT INTO viaje VALUES ('Donostia', '02/01/2022', 50, 'Alfaro', '72515650', 450);
INSERT INTO viaje VALUES ('Everest', '11/11/2021', 5, 'Mordor', '72515673', 1500);
INSERT INTO viaje VALUES ('Haro', '02/06/2017', 3, 'Ribera Baja', '72515666', 512);
INSERT INTO viaje VALUES ('Haro', '03/01/2019', 20, 'Donostia', '72515666', 300);
INSERT INTO viaje VALUES ('India', '03/03/2023', 42, 'Zarautz', '72515650', 40);
INSERT INTO viaje VALUES ('India', '01/12/2024', 54, 'Lizartza', '72515642', 652);
INSERT INTO viaje VALUES ('Kioto', '26/09/2021', 30, 'Donostia', '88888888', 100);
INSERT INTO viaje VALUES ('Kioto', '26/12/2021', 30, 'Donostia', '88888888', 100);
INSERT INTO viaje VALUES ('Lisboa', '11/11/2020', 5, 'Mordor', '72515633', 40);
INSERT INTO viaje VALUES ('Marrakets', '26/09/2022', 15, 'Haro', '88888888', 40);
INSERT INTO viaje VALUES ('Mordor', '11/04/2020', 78, 'Irun', '72515673', 800);
INSERT INTO viaje VALUES ('Mordor', '18/09/2020', 1000, 'Zarautz', '72515638', 5000);
INSERT INTO viaje VALUES ('Namibia', '21/11/2020', 5, 'Santander', '72515673', 452);
INSERT INTO viaje VALUES ('Namibia', '11/11/2023', 5, 'Mordor', '72515673', 452);
INSERT INTO viaje VALUES ('New York', '28/09/2020', 14, 'Santander', NULL, 125);
INSERT INTO viaje VALUES ('Oporto', '10/11/2030', 55, 'Mordor', '72515633', 30);
INSERT INTO viaje VALUES ('Paris', '11/11/2020', 50, 'Mordor', '72515639', 400);
INSERT INTO viaje VALUES ('Patagonia', '18/09/2020', 27, 'Donostia', NULL, 132);
INSERT INTO viaje VALUES ('Patagonia', '26/10/2022', 27, 'Haro', '88888888', 67);
INSERT INTO viaje VALUES ('Pekin', '02/05/2021', 500, 'Mordor', '72515673', 0);
INSERT INTO viaje VALUES ('Pekin', '11/01/2022', 12, 'Mordor', '72515651', 65);
INSERT INTO viaje VALUES ('Peru', '01/06/2021', 5, 'Alfaro', '72515650', 111);
INSERT INTO viaje VALUES ('Piondjang', '06/01/2019', 25, 'Donostia', '72515642', 170);
INSERT INTO viaje VALUES ('Rias Baixas', '19/05/2021', 15, 'Tolosa', '66666666', 60);
INSERT INTO viaje VALUES ('Rias Baixas', '19/05/2022', 15, 'Tolosa', '66666666', 65);
INSERT INTO viaje VALUES ('Rotorua', '01/03/2020', 10, 'Auckland', '21212121', 200);
INSERT INTO viaje VALUES ('Rotorua', '01/04/2020', 10, 'Auckland', '21212121', 300);
INSERT INTO viaje VALUES ('Sahara', '10/09/2020', 365, 'Donostia', '72515673', 120);
INSERT INTO viaje VALUES ('Sahara', '02/11/2020', 365, 'Donostia', '72515667', 119);
INSERT INTO viaje VALUES ('Senegal', '01/03/2019', 2, 'Mordor', '72515655', 10);
INSERT INTO viaje VALUES ('Senegal', '01/04/2022', 7, 'Donostia', '72515673', 40);
INSERT INTO viaje VALUES ('Toledo', '01/05/2020', 51, 'Irun', '72515671', 240);
INSERT INTO viaje VALUES ('Toledo', '01/05/2021', 51, 'Irun', '72515671', 240);
INSERT INTO viaje VALUES ('Torres del Paine', '11/11/2022', 800, 'Irun', '72515650', 405);
INSERT INTO viaje VALUES ('Vigo', '19/03/2021', 15, 'Lasarte', '66666666', 50);
INSERT INTO viaje VALUES ('Vigo', '19/04/2021', 15, 'Lasarte', '66666666', 50);
INSERT INTO viaje VALUES ('Zarautz', '20/11/2020', 5, 'Santander', '65111111', 50);




-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla excursion_opcional
--

CREATE TABLE excursion_opcional (
  Destino varchar2(20) NOT NULL,
  FechaSalida date NOT NULL,
  Numero integer NOT NULL,
  DestinoExcursion varchar2(20),
  HoraSalida timestamp,
  LugarSalida varchar2(20),
  Precio integer,
  PRIMARY KEY (Destino,FechaSalida,Numero),
  FOREIGN KEY (Destino,FechaSalida) REFERENCES viaje (Destino, FechaSalida)
);

--
-- Volcado de datos para la tabla excursion_opcional
--

INSERT INTO excursion_opcional VALUES ('Auckland', '01/04/2021', 1, 'Hotsprings', NULL, 'Clock Tower', 75);
INSERT INTO excursion_opcional VALUES ('Auckland', '01/04/2021', 8, 'Hotsprings', NULL, 'Main Street', 70);
INSERT INTO excursion_opcional VALUES ('Barcelona', '01/01/2020', 55, 'La Pedrera', NULL, 'Rambla', 90);
INSERT INTO excursion_opcional VALUES ('Donostia', '01/01/2019', 4, 'Chillida Leku', NULL, 'Unibertsitateak', 550);
INSERT INTO excursion_opcional VALUES ('Donostia', '02/01/2022', 5, 'Galarreta', NULL, 'Unibertsitateak', 222);
INSERT INTO excursion_opcional VALUES ('Haro', '02/06/2017', 6, 'Bodegas Muga', NULL, 'Piscinas Haro', 100);
INSERT INTO excursion_opcional VALUES ('India', '01/12/2024', 12, 'Tah Majal', NULL, 'Clock Tower, Delhi', 777);
INSERT INTO excursion_opcional VALUES ('Mordor', '11/04/2020', 10, 'Hotsprings', NULL, 'Main Street 12', 754);
INSERT INTO excursion_opcional VALUES ('Namibia', '21/11/2020', 1, 'Duna 7', NULL, 'Hotel Sheraton', 60);
INSERT INTO excursion_opcional VALUES ('Namibia', '21/11/2020', 3, 'Duna 45', NULL, 'Hotel Sheraton', 70);
INSERT INTO excursion_opcional VALUES ('Namibia', '21/11/2020', 5, 'Harbor Bay', NULL, 'Hotel Sheraton', 90);
INSERT INTO excursion_opcional VALUES ('Namibia', '21/11/2020', 7, 'Windhoek', NULL, 'Hotel Sheraton', 40);
INSERT INTO excursion_opcional VALUES ('Pekin', '02/05/2021', 14, 'Blue River', NULL, 'Central Park', 755);
INSERT INTO excursion_opcional VALUES ('Piondjang', '06/01/2019', 8, 'President Palace', NULL, 'Central Park', 75);
INSERT INTO excursion_opcional VALUES ('Sahara', '10/09/2020', 2, 'Kanpalekua1', NULL, 'Sarrerako atea', 750);
INSERT INTO excursion_opcional VALUES ('Sahara', '02/11/2020', 3, 'Kanpalekua2', NULL, 'Sarrerako atea', 775);
INSERT INTO excursion_opcional VALUES ('Senegal', '01/04/2022', 11, 'Paris-Dakar museum', NULL, 'Kananga Office', 475);
INSERT INTO excursion_opcional VALUES ('Toledo', '01/05/2020', 13, 'Museo del Greco', NULL, 'Plaza Zocodover', 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla excursion_opcional_cliente
--

CREATE TABLE excursion_opcional_cliente (
  Destino varchar2(20) NOT NULL,
  FechaSalida date NOT NULL,
  Numero integer NOT NULL,
  DNI varchar2(20) NOT NULL,
  PRIMARY KEY (Destino,FechaSalida,Numero,DNI),
  FOREIGN KEY (DNI) REFERENCES cliente (DNI),
  FOREIGN KEY (Destino,FechaSalida,Numero) REFERENCES excursion_opcional (Destino,FechaSalida,Numero)
);
-- Volcado de datos para la tabla excursion_opcional_cliente
--

INSERT INTO excursion_opcional_cliente VALUES ('India', '01/12/2024', 12, '10000001');
INSERT INTO excursion_opcional_cliente VALUES ('Pekin', '02/05/2021', 14, '10000001');
INSERT INTO excursion_opcional_cliente VALUES ('Toledo', '01/05/2020', 13, '10000001');
INSERT INTO excursion_opcional_cliente VALUES ('Donostia', '01/01/2019', 4, '10000004');
INSERT INTO excursion_opcional_cliente VALUES ('Auckland', '01/04/2021', 1, '10000005');
INSERT INTO excursion_opcional_cliente VALUES ('Mordor', '11/04/2020', 10, '10000008');
INSERT INTO excursion_opcional_cliente VALUES ('Sahara', '10/09/2020', 2, '10000008');
INSERT INTO excursion_opcional_cliente VALUES ('Sahara', '02/11/2020', 3, '10000011');
INSERT INTO excursion_opcional_cliente VALUES ('Namibia', '21/11/2020', 1, '10000012');
INSERT INTO excursion_opcional_cliente VALUES ('Donostia', '02/01/2022', 5, '10000013');
INSERT INTO excursion_opcional_cliente VALUES ('Namibia', '21/11/2020', 7, '10000013');
INSERT INTO excursion_opcional_cliente VALUES ('Senegal', '01/04/2022', 11, '10000014');
INSERT INTO excursion_opcional_cliente VALUES ('Namibia', '21/11/2020', 7, '10000016');
INSERT INTO excursion_opcional_cliente VALUES ('Namibia', '21/11/2020', 1, '10000018');
INSERT INTO excursion_opcional_cliente VALUES ('Namibia', '21/11/2020', 1, '10000019');
INSERT INTO excursion_opcional_cliente VALUES ('Haro', '02/06/2017', 6, '10000020');
INSERT INTO excursion_opcional_cliente VALUES ('Piondjang', '06/01/2019', 8, '10000024');
INSERT INTO excursion_opcional_cliente VALUES ('Namibia', '21/11/2020', 1, '72515655');
INSERT INTO excursion_opcional_cliente VALUES ('Namibia', '21/11/2020', 5, '72515655');
INSERT INTO excursion_opcional_cliente VALUES ('Namibia', '21/11/2020', 7, '72515655');
INSERT INTO excursion_opcional_cliente VALUES ('Namibia', '21/11/2020', 1, '72515657');
INSERT INTO excursion_opcional_cliente VALUES ('Namibia', '21/11/2020', 7, '72515657');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla idioma
--

CREATE TABLE idioma (
  DNI varchar2(20) NOT NULL,
  Idioma varchar2(20) NOT NULL,
  PRIMARY KEY (DNI,Idioma),
  FOREIGN KEY (DNI) REFERENCES guia (DNI)
) ;

--
-- Volcado de datos para la tabla idioma
--

INSERT INTO idioma VALUES ('21212121', 'Euskera');
INSERT INTO idioma VALUES ('65111111', 'Euskera');
INSERT INTO idioma VALUES ('65111111', 'Italiano');
INSERT INTO idioma VALUES ('66666666', 'Lengua de signos');
INSERT INTO idioma VALUES ('72515633', 'Francés');
INSERT INTO idioma VALUES ('72515638', 'Inglés');
INSERT INTO idioma VALUES ('72515639', 'Italiano');
INSERT INTO idioma VALUES ('72515639', 'Catalán');
INSERT INTO idioma VALUES ('72515642', 'Euskera');
INSERT INTO idioma VALUES ('72515642', 'Inglés');
INSERT INTO idioma VALUES ('72515642', 'Swahili');
INSERT INTO idioma VALUES ('72515648', 'Chino');
INSERT INTO idioma VALUES ('72515650', 'Alemán');
INSERT INTO idioma VALUES ('72515650', 'Castellano');
INSERT INTO idioma VALUES ('72515650', 'Japonés');
INSERT INTO idioma VALUES ('72515650', 'Coreano');
INSERT INTO idioma VALUES ('72515650', 'Chino');
INSERT INTO idioma VALUES ('72515651', 'Bable');
INSERT INTO idioma VALUES ('72515655', 'Euskera');
INSERT INTO idioma VALUES ('72515655', 'Swahili');
INSERT INTO idioma VALUES ('72515657', 'Árabe');
INSERT INTO idioma VALUES ('72515665', 'Chino');
INSERT INTO idioma VALUES ('72515666', 'Japonés');
INSERT INTO idioma VALUES ('72515667', 'Francés');
INSERT INTO idioma VALUES ('72515667', 'Castellano');
INSERT INTO idioma VALUES ('72515667', 'Inglés');
INSERT INTO idioma VALUES ('72515667', 'Catalán');
INSERT INTO idioma VALUES ('72515671', 'Francés');
INSERT INTO idioma VALUES ('72515672', 'Inglés');
INSERT INTO idioma VALUES ('72515673', 'Alemán');
INSERT INTO idioma VALUES ('72515673', 'Urdu');
INSERT INTO idioma VALUES ('72515673', 'Bubi');
INSERT INTO idioma VALUES ('72515673', 'Fang');
INSERT INTO idioma VALUES ('72515673', 'Francés');
INSERT INTO idioma VALUES ('72515673', 'Castellano');
INSERT INTO idioma VALUES ('72515673', 'Inglés');
INSERT INTO idioma VALUES ('72515673', 'Kombe');
INSERT INTO idioma VALUES ('72515673', 'Swahili');
INSERT INTO idioma VALUES ('72515673', 'Lengua de signos');
INSERT INTO idioma VALUES ('88888888', 'Gallego');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla hotel
--

CREATE TABLE hotel (
  IdHotel varchar2(20) NOT NULL,
  Nombre varchar2(20),
  Localidad varchar2(20),
  Capacidad integer,
  PRIMARY KEY (IdHotel)
);

--
-- Volcado de datos para la tabla hotel
--

INSERT INTO hotel VALUES ('h01', 'Sheraton', 'Pekin', 340);
INSERT INTO hotel VALUES ('h02', 'Asperia', 'Donostia', 200);
INSERT INTO hotel VALUES ('h03', 'Alaska Beach', 'Rotorua', 23);
INSERT INTO hotel VALUES ('h04', 'Hilton', 'Lima', 1000);
INSERT INTO hotel VALUES ('h05', 'Sunshine', 'Pekin', 2);
INSERT INTO hotel VALUES ('h06', 'River Hostel', 'Dakar', 350);
INSERT INTO hotel VALUES ('h07', 'Tinto Dreams Hostel', 'Casalarreina', 40);
INSERT INTO hotel VALUES ('h08', 'Eight Hotel', 'Katmandu', 8);
INSERT INTO hotel VALUES ('h09', 'Corner Hotel', 'Windhoek', 673);
INSERT INTO hotel VALUES ('h10', 'Campsite', 'Sahara', 1500);
INSERT INTO hotel VALUES ('h11', 'King', 'Japon', 2000);
INSERT INTO hotel VALUES ('h12', 'Tango', 'Buenos Aires, Boca', 200);
INSERT INTO hotel VALUES ('h13', 'Nini', 'Coreatown', 20);
INSERT INTO hotel VALUES ('h14', 'Campamento Torre', 'Cerro Castillo', 20);
INSERT INTO hotel VALUES ('h15', 'Sunshine', 'Pekin', 202);
INSERT INTO hotel VALUES ('h16', 'Mercury', 'Mordor', 201);
INSERT INTO hotel VALUES ('h17', 'Kulungu', 'Senegal City', 204);
INSERT INTO hotel VALUES ('h18', 'K2', 'New Delhi', 270);
INSERT INTO hotel VALUES ('h19', 'Hotel Sol', 'Toledo', 2700);
INSERT INTO hotel VALUES ('h20', 'Mezkitor', 'Ayacha', 2700);
INSERT INTO hotel VALUES ('h21', 'Camp now hostel', 'Ramblas, Badalona', 2700);
INSERT INTO hotel VALUES ('Id100', 'Cheap Hotel', 'Rotorua', 100);
INSERT INTO hotel VALUES ('Id101', 'Medium Hotel', 'Rotorua', 200);
INSERT INTO hotel VALUES ('Id102', 'Expensive Hotel', 'Rotorua', 300);
INSERT INTO hotel VALUES ('id103', 'City', 'Mordor', 15);
INSERT INTO hotel VALUES ('id104', 'River', 'Mordor', 250);
INSERT INTO hotel VALUES ('id105', 'City', 'Rotorua', 100);
INSERT INTO hotel VALUES ('id106', 'Igeldo', 'Donostia', 75);
INSERT INTO hotel VALUES ('id107', 'Ribeiro I', 'Vigo', 50);
INSERT INTO hotel VALUES ('id108', 'Ribeiro II', 'Vigo', 100);
INSERT INTO hotel VALUES ('id109', 'Hotel Callao', 'Lima', 1000);
INSERT INTO hotel VALUES ('id110', 'Hotel Aeropuerto', 'Lima', 200);
INSERT INTO hotel VALUES ('id111', 'Hotel Emperador', 'Toledo', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla hotel_viaje
--

CREATE TABLE hotel_viaje (
  Destino varchar2(20) NOT NULL,
  FechaSalida date NOT NULL,
  IdHotel varchar2(20) NOT NULL,
  PRIMARY KEY (Destino,FechaSalida,IdHotel),
  FOREIGN KEY (IdHotel) REFERENCES hotel (IdHotel),
  FOREIGN KEY (Destino,FechaSalida) REFERENCES viaje (Destino, FechaSalida)
);

--
-- Volcado de datos para la tabla hotel_viaje
--

INSERT INTO hotel_viaje VALUES ('Pekin', '11/01/2022', 'h01');
INSERT INTO hotel_viaje VALUES ('Donostia', '01/01/2019', 'h02');
INSERT INTO hotel_viaje VALUES ('Donostia', '01/01/2021', 'h02');
INSERT INTO hotel_viaje VALUES ('Donostia', '02/01/2022', 'h02');
INSERT INTO hotel_viaje VALUES ('Zarautz', '20/11/2020', 'h02');
INSERT INTO hotel_viaje VALUES ('Auckland', '01/04/2021', 'h03');
INSERT INTO hotel_viaje VALUES ('Peru', '01/06/2021', 'h04');
INSERT INTO hotel_viaje VALUES ('Pekin', '02/05/2021', 'h05');
INSERT INTO hotel_viaje VALUES ('Senegal', '01/03/2019', 'h06');
INSERT INTO hotel_viaje VALUES ('Haro', '02/06/2017', 'h07');
INSERT INTO hotel_viaje VALUES ('Haro', '03/01/2019', 'h07');
INSERT INTO hotel_viaje VALUES ('Everest', '11/11/2021', 'h08');
INSERT INTO hotel_viaje VALUES ('Namibia', '21/11/2020', 'h09');
INSERT INTO hotel_viaje VALUES ('Namibia', '11/11/2023', 'h09');
INSERT INTO hotel_viaje VALUES ('Sahara', '10/09/2020', 'h10');
INSERT INTO hotel_viaje VALUES ('Sahara', '02/11/2020', 'h10');
INSERT INTO hotel_viaje VALUES ('Piondjang', '06/01/2019', 'h13');
INSERT INTO hotel_viaje VALUES ('Torres del Paine', '11/11/2022', 'h14');
INSERT INTO hotel_viaje VALUES ('Mordor', '11/04/2020', 'h16');
INSERT INTO hotel_viaje VALUES ('Senegal', '01/04/2022', 'h17');
INSERT INTO hotel_viaje VALUES ('India', '03/03/2023', 'h18');
INSERT INTO hotel_viaje VALUES ('India', '01/12/2024', 'h18');
INSERT INTO hotel_viaje VALUES ('Toledo', '01/05/2020', 'h19');
INSERT INTO hotel_viaje VALUES ('Toledo', '01/05/2021', 'h19');
INSERT INTO hotel_viaje VALUES ('Asilah', '03/05/2021', 'h20');
INSERT INTO hotel_viaje VALUES ('Barcelona', '04/05/2021', 'h21');
INSERT INTO hotel_viaje VALUES ('Rotorua', '01/03/2020', 'Id100');
INSERT INTO hotel_viaje VALUES ('Rotorua', '01/04/2020', 'Id100');
INSERT INTO hotel_viaje VALUES ('Rotorua', '01/03/2020', 'Id101');
INSERT INTO hotel_viaje VALUES ('Rotorua', '01/04/2020', 'Id102');
INSERT INTO hotel_viaje VALUES ('Donostia', '01/012019', 'id106');
INSERT INTO hotel_viaje VALUES ('Rias Baixas', '19/05/2021', 'id107');
INSERT INTO hotel_viaje VALUES ('Rias Baixas', '19/05/2022', 'id107');
INSERT INTO hotel_viaje VALUES ('Vigo', '19/03/2021', 'id107');
INSERT INTO hotel_viaje VALUES ('Vigo', '19/04/2021', 'id107');
INSERT INTO hotel_viaje VALUES ('Rias Baixas', '19/05/2021', 'id108');
INSERT INTO hotel_viaje VALUES ('Rias Baixas', '19/05/2022', 'id108');
INSERT INTO hotel_viaje VALUES ('Vigo', '19/03/2021', 'id108');
INSERT INTO hotel_viaje VALUES ('Vigo', '19/04/2021', 'id108');
INSERT INTO hotel_viaje VALUES ('Toledo', '01/05/2020', 'id111');
INSERT INTO hotel_viaje VALUES ('Toledo', '01/05/2021', 'id111');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla hotel_viaje_cliente
--

CREATE TABLE hotel_viaje_cliente (
  Destino varchar2(20) NOT NULL,
  FechaSalida date NOT NULL,
  IdHotel varchar2(20) NOT NULL,
  DNI varchar2(20) NOT NULL,
  NumNoches integer,
  PRIMARY KEY (Destino,FechaSalida,IdHotel,DNI),
  FOREIGN KEY (Destino,FechaSalida,IdHotel) REFERENCES hotel_viaje (Destino, FechaSalida, IdHotel),
  FOREIGN KEY (DNI) REFERENCES cliente (DNI)
);

--
-- Volcado de datos para la tabla hotel_viaje_cliente
--

INSERT INTO hotel_viaje_cliente VALUES ('Asilah', '03/05/2021', 'h20', '10000015', 7);
INSERT INTO hotel_viaje_cliente VALUES ('Auckland', '01/04/2021', 'h03', '10000005', 4);
INSERT INTO hotel_viaje_cliente VALUES ('Auckland', '01/04/2021', 'h03', '10000008', 4);
INSERT INTO hotel_viaje_cliente VALUES ('Auckland', '01/04/2021', 'h03', '10000023', 10);
INSERT INTO hotel_viaje_cliente VALUES ('Barcelona', '04/05/2021', 'h21', '10000004', 3);
INSERT INTO hotel_viaje_cliente VALUES ('Donostia', '01/01/2019', 'h02', '10000018', 4);
INSERT INTO hotel_viaje_cliente VALUES ('Donostia', '01/01/2019', 'h02', '10000004', 4);
INSERT INTO hotel_viaje_cliente VALUES ('Donostia', '02/01/2022', 'h02', '10000013', 1);
INSERT INTO hotel_viaje_cliente VALUES ('Everest', '11/11/2021', 'h08', '10000001', 12);
INSERT INTO hotel_viaje_cliente VALUES ('Haro', '02/06/2017', 'h07', '10000020', 1);
INSERT INTO hotel_viaje_cliente VALUES ('India', '01/12/2024', 'h18', '10000001', 4);
INSERT INTO hotel_viaje_cliente VALUES ('India', '01/12/2024', 'h18', '10000003', 4);
INSERT INTO hotel_viaje_cliente VALUES ('Mordor', '11/04/2020', 'h16', '10000008', 5);
INSERT INTO hotel_viaje_cliente VALUES ('Mordor', '11/04/2020', 'h16', '10000026', 5);
INSERT INTO hotel_viaje_cliente VALUES ('Namibia', '21/11/2020', 'h09', '10000012', 4);
INSERT INTO hotel_viaje_cliente VALUES ('Namibia', '21/11/2020', 'h09', '10000013', 4);
INSERT INTO hotel_viaje_cliente VALUES ('Namibia', '21/11/2020', 'h09', '10000016', 4);
INSERT INTO hotel_viaje_cliente VALUES ('Namibia', '21/11/2020', 'h09', '10000018', 4);
INSERT INTO hotel_viaje_cliente VALUES ('Namibia', '21/11/2020', 'h09', '10000019', 4);
INSERT INTO hotel_viaje_cliente VALUES ('Namibia', '21/11/2020', 'h09', '72515655', 4);
INSERT INTO hotel_viaje_cliente VALUES ('Namibia', '21/11/2020', 'h09', '72515657', 5);
INSERT INTO hotel_viaje_cliente VALUES ('Pekin', '02/05/2021', 'h05', '10000001', 20);
INSERT INTO hotel_viaje_cliente VALUES ('Pekin', '02/05/2021', 'h05', '10000023', 20);
INSERT INTO hotel_viaje_cliente VALUES ('Pekin', '11/01/2022', 'h01', '10000009', 1);
INSERT INTO hotel_viaje_cliente VALUES ('Peru', '01/06/2021', 'h04', '10000009', 10);
INSERT INTO hotel_viaje_cliente VALUES ('Piondjang', '06/01/2019', 'h13', '10000012', 4);
INSERT INTO hotel_viaje_cliente VALUES ('Piondjang', '06/01/2019', 'h13', '10000024', 4);
INSERT INTO hotel_viaje_cliente VALUES ('Rias Baixas', '19/05/2021', 'id107', '10000020', 4);
INSERT INTO hotel_viaje_cliente VALUES ('Rias Baixas', '19/05/2021', 'id108', '10000019', 7);
INSERT INTO hotel_viaje_cliente VALUES ('Rias Baixas', '19/05/2022', 'id107', '10000020', 4);
INSERT INTO hotel_viaje_cliente VALUES ('Rotorua', '01/03/2020', 'Id101', '10000002', 1);
INSERT INTO hotel_viaje_cliente VALUES ('Sahara', '10/09/2020', 'h10', '10000008', 1);
INSERT INTO hotel_viaje_cliente VALUES ('Sahara', '10/09/2020', 'h10', '10000017', 1);
INSERT INTO hotel_viaje_cliente VALUES ('Sahara', '10/09/2020', 'h10', '10000021', 3);
INSERT INTO hotel_viaje_cliente VALUES ('Sahara', '02/11/2020', 'h10', '10000011', 2);
INSERT INTO hotel_viaje_cliente VALUES ('Sahara', '02/11/2020', 'h10', '10000021', 2);
INSERT INTO hotel_viaje_cliente VALUES ('Senegal', '01/03/2019', 'h06', '10000004', 1);
INSERT INTO hotel_viaje_cliente VALUES ('Senegal', '01/04/2022', 'h17', '10000010', 3);
INSERT INTO hotel_viaje_cliente VALUES ('Senegal', '01/04/2022', 'h17', '10000014', 3);
INSERT INTO hotel_viaje_cliente VALUES ('Toledo', '01/05/2020', 'h19', '10000001', 1);
INSERT INTO hotel_viaje_cliente VALUES ('Toledo', '01/05/2020', 'h19', '10000002', 1);
INSERT INTO hotel_viaje_cliente VALUES ('Toledo', '01/05/2020', 'h19', '10000026', 1);
INSERT INTO hotel_viaje_cliente VALUES ('Toledo', '01/05/2020', 'id111', '10000026', 1);
INSERT INTO hotel_viaje_cliente VALUES ('Toledo', '01/05/2021', 'id111', '10000002', 1);
INSERT INTO hotel_viaje_cliente VALUES ('Toledo', '01/05/2021', 'id111', '10000006', 1);
INSERT INTO hotel_viaje_cliente VALUES ('Toledo', '01/05/2021', 'id111', '10000026', 1);
INSERT INTO hotel_viaje_cliente VALUES ('Torres del Paine', '11/11/2022', 'h14', '10000022', 1);

commit;
