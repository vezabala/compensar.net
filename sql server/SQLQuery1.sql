create database Turybus;

use Turybus;

create table Horarios(
id_horario INT PRIMARY KEY IDENTITY NOT NULL,
hora_salida VARCHAR(30) NOT NULL,
hora_llegada VARCHAR(30) NOT NULL,
);

create table Dias(
id_dia INT PRIMARY KEY IDENTITY NOT NULL,
fecha DATE NOT NULL
);

create table Rutas_turisticas(
id_ruta_turistica INT PRIMARY KEY IDENTITY NOT NULL,
nombre_ruta VARCHAR(50) NOT NULL
);

create table Folletos(
id_folleto INT PRIMARY KEY IDENTITY NOT NULL,
id_dia INT,
id_ruta_turistica INT NOT NULL,
id_Horario INT NOT NULL,
CONSTRAINT fk_Rutas_turisticas FOREIGN KEY  (id_ruta_turistica) REFERENCES Rutas_Turisticas (id_ruta_turistica),
CONSTRAINT fk_Horarios FOREIGN KEY  (id_Horario) REFERENCES Horarios (id_horario),
CONSTRAINT fk_Dias FOREIGN KEY  (id_Dia) REFERENCES Dias (id_dia)
);

CREATE TABLE Billete(
id_billete INT PRIMARY KEY IDENTITY NOT NULL,
importe_ruta INT NOT NULL,
id_Folleto INT NOT NULL,
CONSTRAINT fk_Folletos FOREIGN KEY (id_Folleto) REFERENCES Folletos (id_folleto)
);

Create table Viajero(
id_viajero INT PRIMARY KEY IDENTITY NOT NULL,
dni VARCHAR(10) NOT NULL UNIQUE,
nombre_apellidos VARCHAR(100) NOT NULL,
telefono VARCHAR(10)NOT NULL,
id_billete INT NOT NULL UNIQUE,
CONSTRAINT fk_Billete FOREIGN KEY (id_billete) REFERENCES Billete (id_billete)
);

Create table Horas_viajadas(
id_hora INT PRIMARY KEY IDENTITY NOT NULL,
horas_viajadas VARCHAR(10) NOT NULL,
id_viajero INT NOT NULL,
CONSTRAINT fk_Viajero FOREIGN KEY (id_viajero) REFERENCES Viajero (id_viajero)
);

Create table Media(
id_media INT PRIMARY KEY IDENTITY NOT NULL,
media_viajeros_ruta INT NOT NULL,
media_viajeros_dia INT NOT NULL,
id_ruta_turistica Int NOT NULL,
CONSTRAINT fk_Rutas_Turistas_Media FOREIGN KEY (id_ruta_turistica) REFERENCES Rutas_Turisticas (id_ruta_turistica)
);

Create table Lugares_recorrido(
id_recorrido INT PRIMARY KEY IDENTITY NOT NULL,
nombre_lugar VARCHAR(50) NOT NULL,
id_ruta_turistica Int NOT NULL,
CONSTRAINT fk_Rutas_Turistas_Recorrido FOREIGN KEY (id_ruta_turistica) REFERENCES Rutas_Turisticas (id_ruta_turistica)
);

Create table Descripcion(
id_descripccion INT PRIMARY KEY IDENTITY NOT NULL,
actividad_realizar TEXT,
tiempo_parada VARCHAR(50),
id_recorrido INT NOT NULL,
CONSTRAINT fk_Lugares_Recorridos FOREIGN KEY (id_recorrido) REFERENCES Lugares_recorrido (id_recorrido)
);

Create table Bus(
id_bus INT PRIMARY KEY IDENTITY NOT NULL,
placa_bus varchar(50) NOT NULL UNIQUE,
modelo VARCHAR(100) NOT NULL,
fabricante VARCHAR(200) NOT NULL,
caracteristicas VARCHAR(250) NOT NULL,
id_ruta_turistica Int NOT NULL UNIQUE,
CONSTRAINT fk_Rutas_Turistas_Bus FOREIGN KEY (id_ruta_turistica) REFERENCES Rutas_Turisticas (id_ruta_turistica)
);

Create table Conductor(
id_conductor INT PRIMARY KEY IDENTITY NOT NULL,
dni varchar(10) NOT NULL UNIQUE,
nombre_apellidos VARCHAR(100) NOT NULL,
telefono VARCHAR(10) NOT NULL,
direccion VARCHAR(50) NOT NULL,
id_ruta_turistica Int NOT NULL UNIQUE,
CONSTRAINT fk_Rutas_Turistas_Conductor FOREIGN KEY (id_ruta_turistica) REFERENCES Rutas_Turisticas (id_ruta_turistica)
);

Create table Revision_vehiculo(
id_revision INT PRIMARY KEY IDENTITY NOT NULL,
fecha DATE NOT NULL,
diagnostico TEXT NOT NULL,
id_bus Int NOT NULL,
CONSTRAINT fk_bus FOREIGN KEY (id_bus) REFERENCES Bus (id_bus)
);

Create table Reparaciones(
id_reparaciones INT PRIMARY KEY IDENTITY NOT NULL,
codigo INT NOT NULL UNIQUE,
tiempo_empleado VARCHAR(20) NOT NULL,
comentario TEXT,
id_revision INT NOT NULL,
CONSTRAINT fk_revision_bus FOREIGN KEY (id_revision) REFERENCES Revision_vehiculo (id_revision)
);

Create table kilometros_diarios(
id_kilometros INT PRIMARY KEY IDENTITY NOT NULL,
kilometros_realizados INT NOT NULL,
id_dia INT NOT NULL,
id_bus INT NOT NULL,
id_conductor INT NOT NULL,
CONSTRAINT fk_dia_kilo FOREIGN KEY (id_dia) REFERENCES Dias (id_dia),
CONSTRAINT fk_bus_kilo FOREIGN KEY (id_bus) REFERENCES Bus (id_bus),
CONSTRAINT fk_conductor_kilo FOREIGN KEY (id_conductor) REFERENCES Conductor (id_conductor)
);

INSERT INTO DIAS
(fecha)
VALUES ('2022-07-04'), ('2022-07-05'), ('2022-07-06'), ('2022-07-07'), ('2022-07-09'), ('2022-07-09'), ('2022-07-10');

INSERT INTO Horarios
(hora_salida , hora_llegada)
VALUES('7:00 AM', '9:00 AM'),('8:00 AM', '10:00 AM'),('9:00 AM', '11:00 AM'),('10:00 AM', '12:00 PM'),('11:00 AM', '1:00 PM'),('12:00 PM', '2:00 PM'),('1:00 PM', '3:00 PM'),('2:00 PM', '3:00PM');

INSERT INTO Rutas_turisticas
(nombre_ruta)
VALUES('Caribe'), ('LLanera'), ('Sur'), ('Sombrero Vueltlao'), ('Memorias de la independencia'), ('Cultura Precolombina'), ('Cafetera')

INSERT INTO Folletos
(id_dia, id_ruta_turistica, id_Horario)
VALUES (1,1,1),(2,2,2), (3,3,3), (4,4,4),(5,5,5), (6,6,6), (7,7,7)

create view  folletos_view 
as
Select id_folleto, Dias.fecha, Rutas_turisticas.nombre_ruta, Horarios.hora_salida from Folletos 
INNER JOIN  Dias ON Folletos.id_dia =Dias.id_dia
INNER JOIN  Rutas_turisticas ON Folletos.id_ruta_turistica =Rutas_turisticas.id_ruta_turistica
INNER JOIN  Horarios ON Folletos.id_Horario =Horarios.id_horario

INSERT INTO Billete
(importe_ruta,id_Folleto)
VALUES (120000,1),(150000,2), (130000,3),(120000,4), (130000,5),(150000,6), (130000,7)

INSERT INTO Lugares_recorrido
(nombre_lugar,id_ruta_turistica)
VALUES ('lugar1Caribe',1), ('lugar2Caribe',1), ('lugar1LLanera',2), ('lugar2LLanera',2), ('lugar1Sur',3), ('lugar2Sur',3),('lugar1Sombrero',4), ('lugar2Sombrero',4), ('lugar1Memorias',5), ('lugar2Memorias',5), ('lugar1Cultura',6), ('lugar2Cultura',6), ('lugar1Cafetera',7), ('lugar2Cafetera',7)

INSERT INTO Descripcion
(id_recorrido,actividad_realizar,tiempo_parada)
VALUES (1,'JDJKLDSJ','15 MINUTOS'), (2,'FSFSFSDDSF','15 MINUTOS'), (3,NULL,'15 MINUTOS'), (4,'JDJKLDSJ','15 MINUTOS'), (5,'FSFSFSDDSF','15 MINUTOS'), (6,NULL,'15 MINUTOS'), (7,'JDJKLDSJ','15 MINUTOS'), (8,'FSFSFSDDSF','15 MINUTOS'), (9,NULL,'15 MINUTOS'), (10,'JDJKLDSJ','15 MINUTOS'), (11,'FSFSFSDDSF','15 MINUTOS'), (12,NULL,'15 MINUTOS'), (13,'JDJKLDSJ','15 MINUTOS'), (14,'FSFSFSDDSF','15 MINUTOS')

create view Billete_view
as
SELECT id_Billete, folletos_view.nombre_ruta,folletos_view.fecha, folletos_view.hora_salida,Horarios.hora_llegada, importe_ruta, Lugares_recorrido.nombre_lugar, Descripcion.actividad_realizar, Descripcion.tiempo_parada FROM Billete
INNER JOIN folletos_view ON Billete.id_Folleto = folletos_view.id_folleto
INNER JOIN Horarios ON folletos_view.hora_salida = Horarios.hora_salida
INNER JOIN Rutas_turisticas ON folletos_view.nombre_ruta = Rutas_turisticas.nombre_ruta
INNER JOIN Lugares_recorrido ON Rutas_turisticas.id_ruta_turistica =Lugares_recorrido.id_ruta_turistica
INNER JOIN Descripcion ON Lugares_recorrido.id_recorrido = Descripcion.id_recorrido

INSERT INTO Viajero
(dni,nombre_apellidos,telefono,id_billete)
VALUES ('1000293847','Juan Fernzando Perez Coral','3294039475',1),('1084758394','Valentina Laverde Rosal','3247564098',2), ('1028374859','Oscar Alfonso Ramirez Prieto','304947584',3), ('172637383','Sara Teresa Sanchez Pinar','3049876748',4),('1002837465','Efrain Casas Mejia','3190283746',5), ('1002938478','Julieta Ponce Leon','3304938293',6),('1922039485','Martin Elias Rios','3022938495',7),('1039304958','Helmer Jair Fuente Rojas','304548475',8)


INSERT INTO BUS
(placa_bus,modelo,fabricante,caracteristicas,id_ruta_turistica)
VALUES ('MS480','modelo x','fabricante x','hdsjkhdkdkd',1),('LsJ837','modelo y','fabricante y','jkdfdkjfd',2),('JH8374','modelo x','fabricante x','FDJKHFDKJDHFSK',3),('H7UE7','modelo y','fabricante y','jdiojdijdidjd',4), ('JHF76','modelo x','fabricante x','jdhsdkhdjsk',5),('UY793N','modelo Y','fabricante y','JHDSKHKDJSHKDS',7), ('JI4D4','modelo Y','fabricante y','HJDKHDKd',6)

INSERT INTO Conductor
(dni,nombre_apellidos,telefono,direccion,id_ruta_turistica)
VALUES ('102938473','Jose Raul Alfonso Bonilla','3203849584','CRa28A32',1), ('1029384756','Edison Ramires Roballo','3049583948','CRa28A32',2), ('1029384732','Juan Perez Rondal','302938493','CRa28A32',3),('1029384754','Brayan Castiblanco Pizar','3029383376','CRa28A32',4), ('1022987367','Felipe Andres Balles Comercio','3058675890','CRa28A32',5),('1029384764','Cristian Antonia Villan Mendez','3044987890','CRa28A32',6), ('1837499878','meison Andres Sayan Lowerpos','3348765987','CRa28A32',7)

INSERT INTO Revision_vehiculo
(fecha,diagnostico,id_bus)
VALUES('2022-05-04','hjksdfhjkds',8),('2022-05-04','djsksd',9),('2022-05-04','jkfdkjfd',10),('2022-05-04','jkdsnjsdk',11),('2022-05-04','ejkewj',12), ('2022-05-04','njdfkk',13), ('2022-05-04','djidji',14)

INSERT INTO Reparaciones
(codigo,tiempo_empleado,comentario, id_revision)
VALUES('180','5 horas', null,1), ('270','3 horas', 'dhwdjdhj',5),('746','6 horas', 'hifdauh',6),('847','2 horas', null,2),('475','5 horas', null,3),('756','3 horas', null,4),('487','5 horas', null,7)


CREATE VIEW Revision_efectuada
as
SELECT Revision_vehiculo.id_revision,Bus.placa_bus, Revision_vehiculo.fecha,Revision_vehiculo.diagnostico,codigo, tiempo_empleado,comentario from Reparaciones
INNER JOIN Revision_vehiculo ON Revision_vehiculo.id_revision = Reparaciones.id_revision 
INNER JOIN Bus ON Bus.id_bus = Revision_vehiculo.id_bus

INSERT INTO kilometros_diarios
(kilometros_realizados,id_dia,id_bus,id_conductor)
VALUES (50,1,8,5),(30,1,9,6), (60,1,10,7), (50,1,11,8),(60,4,12,9),(26,1,13,10), (50,1,14,7)

CREATE VIEW Bus_view
as
SELECT id_bus,placa_bus,modelo,fabricante,caracteristicas, Rutas_turisticas.nombre_ruta FROM Bus
INNER join Rutas_turisticas ON Bus.id_ruta_turistica = Rutas_turisticas.id_ruta_turistica

CREATE VIEW Conductor_view
as
SELECT id_conductor,dni,nombre_apellidos,telefono,direccion, Rutas_turisticas.nombre_ruta FROM Conductor
INNER join Rutas_turisticas ON Conductor.id_ruta_turistica = Rutas_turisticas.id_ruta_turistica

CREATE VIEW kilometros_diarios_view
as
SELECT id_kilometros,kilometros_realizados, Dias.fecha, Bus.placa_bus, Conductor.nombre_apellidos FROM kilometros_diarios
INNER JOIN Dias ON kilometros_diarios.id_dia = Dias.id_dia
INNER JOIN Bus ON kilometros_diarios.id_bus = Bus.id_bus
INNER JOIN Conductor ON kilometros_diarios.id_conductor = Conductor.id_conductor

INSERT INTO Horas_viajadas
(horas_viajadas, id_viajero)
VALUES ('2horas', 4), ('2horas', 5), ('2horas', 7), ('2horas', 8), ('2horas', 9), ('2horas', 10), ('2horas', 11), ('2horas', 12)

CREATE VIEW Horas_viajadas_view
as
Select id_hora, horas_viajadas, Viajero.id_viajero, Viajero.nombre_apellidos, Viajero.telefono from Horas_viajadas
INNER JOIN Viajero ON Horas_viajadas.id_viajero = Viajero.id_viajero

INSERT INTO Media
(media_viajeros_ruta,media_viajeros_dia,id_ruta_turistica)
VALUES (2,1,1),(1,1,2),(1,1,3),(1,1,4),(1,1,5),(1,1,6),(1,1,7)

CREATE VIEW Media_view
as
SELECT id_media, media_viajeros_ruta, media_viajeros_dia, Rutas_turisticas.nombre_ruta FROM Media
INNER JOIN Rutas_turisticas ON Media.id_ruta_turistica = Rutas_turisticas.id_ruta_turistica

select * from folletos_view;
select * from Billete_view;
select * from Viajero;
select * from Bus_view;
select * from Conductor_view;
select * from Revision_efectuada;
select * from Media_view;
select * from kilometros_diarios_view;
select * from Horas_viajadas_view;

drop table kilometros_diarios;
drop table Reparaciones;
drop table Revision_vehiculo;
drop table Conductor;
drop table Bus;
drop table Descripcion;
drop table Lugares_recorrido;
drop table Media;
drop table Horas_viajadas;
drop table Viajero;
drop table Billete;
drop table Folletos;
drop table Dias;
drop table Horarios;
drop table Rutas_turisticas;