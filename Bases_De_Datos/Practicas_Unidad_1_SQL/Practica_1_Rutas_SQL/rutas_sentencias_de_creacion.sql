

--conductor
insert into conductor (licencia, Nombre, apellido_paterno, apellido_materno) values ('a-1', 'cristian', 'gonzales', 'celis');
insert into conductor (licencia, Nombre, apellido_paterno, apellido_materno) values ('b-2', 'eric', 'guzman', 'camacho');
insert into conductor (licencia, Nombre, apellido_paterno, apellido_materno) values ('c-3', 'suleyma', 'itza', 'tuyud');
insert into conductor (licencia, Nombre, apellido_paterno, apellido_materno) values ('c-4', 'bianca', 'kumul', 'baas');
insert into conductor (licencia, Nombre, apellido_paterno, apellido_materno) values ('b-5', 'brenda', 'luna', 'cruz');
insert into conductor (licencia, Nombre, apellido_paterno, apellido_materno) values ('a-6', 'zayra', 'manriquez', 'alvarado');
insert into conductor (licencia, Nombre, apellido_paterno, apellido_materno) values ('b-7', 'angel', 'martinez', 'moreno');
insert into conductor (licencia, Nombre, apellido_paterno, apellido_materno) values ('c-8', 'irany', 'may', 'cabrera');
insert into conductor (licencia, Nombre, apellido_paterno, apellido_materno) values ('a-9', 'adamaris', 'mex', 'jimenez');
insert into conductor (licencia, Nombre, apellido_paterno, apellido_materno) values ('a-10', 'cristian', 'gonzales', 'celis');
--viaje
insert into viaje (id_viaje, id_ruta, serie) values (11567, 55342, 01);
insert into viaje (id_viaje, id_ruta, serie) values (11897, 55332, 02);
insert into viaje (id_viaje, id_ruta, serie) values (11998, 55932, 03);
insert into viaje (id_viaje, id_ruta, serie) values (11752, 55881, 04);
insert into viaje (id_viaje, id_ruta, serie) values (11105, 55882, 05);
insert into viaje (id_viaje, id_ruta, serie) values (11349, 55723, 06);
insert into viaje (id_viaje, id_ruta, serie) values (11502, 55701, 07);
insert into viaje (id_viaje, id_ruta, serie) values (11493, 55705, 08);
insert into viaje (id_viaje, id_ruta, serie) values (11154, 55991, 09);
insert into viaje (id_viaje, id_ruta, serie) values (11169, 55100, 10);
--auto
INSERT INTO `auto` (`serie`, `placa`, `modelo`, `transmision`, `color`, `pais`, `propietario`, `conductor`) VALUES ('02', 'AGA-CY2', '2015', 'Automatico', 'azul', 'Mexico', 'AAPPC00607HQRBCRA', 'a-6'), ('03', 'C2A-DE2', '2002', 'Estandar', 'verde', 'EUA', 'BACY900618MQLASL2', 'a-9'), ('04', 'DFA-DK2', '2003', 'A', 'Automatico', 'Gris', 'BALR971019MPQRLN50', 'a-12'), ('05', 'DTA-ET2', '1996', 'Estandar', 'blanco', 'Taiwan', 'EIASN06030HJ1K0214', 'b-2'), ('06', 'DLA-DS2', '2017', 'Automatico', 'Rojo', 'Japon', 'EIGJ030306HMCNRSA9', 'b-5'), ('07', 'EUA-FP2', '2015', 'Estandar', 'Anaranjado', 'China', 'FERTY20148HFGN8975', 'b-7'), ('08', 'FRA-FWZ', '2020', 'Estandar', 'Morado', 'Mexico', 'GEIOL02365HNKJ8965', 'c-3'), ('09', 'A01-AAA', '2019', 'Automatico', 'Rosa', 'India', 'SAVA860927MDFNN09', 'c-4');
--ruta
insert into ruta (id_ruta, Destino, Direccion, Kilometros) values (55342, 'Deportivo', 'Teacamac edomex', 2.7);
insert into ruta (id_ruta, Destino, Direccion, Kilometros) values (55332, 'Cerro chiconautla', 'Teacamac edomex', 6.9);
insert into ruta (id_ruta, Destino, Direccion, Kilometros) values (55932, 'Temascalapa', 'Carretera San luis', 12.2);
insert into ruta (id_ruta, Destino, Direccion, Kilometros) values (55881, 'Zumpango', 'Carretera mexico', 15.2);
insert into ruta (id_ruta, Destino, Direccion, Kilometros) values (55882, 'Tizayuca', 'Carretera Mexico', 15.2);
insert into ruta (id_ruta, Destino, Direccion, Kilometros) values (55723, 'Tolcayuca', 'Carretera Hidalgo', 20.2);
insert into ruta (id_ruta, Destino, Direccion, Kilometros) values (55701, 'Indios verdes', 'Carretera Mexico', 12.2);
insert into ruta (id_ruta, Destino, Direccion, Kilometros) values (55705, 'Ecatepec', 'Carretera Mexico', 15.2);
insert into ruta (id_ruta, Destino, Direccion, Kilometros) values (55991, 'San cristobal', 'Carretera Mexico', 14.2);
insert into ruta (id_ruta, Destino, Direccion, Kilometros) values (55100, 'San luis', 'Carretera Mexico', 13.2);