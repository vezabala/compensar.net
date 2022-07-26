create table tbltipousuario(
usucodigo INT PRIMARY KEY IDENTITY NOT NULL,
usunombre VARCHAR(30) NOT NULL,
usudescripcion VARCHAR(30)
);

CREATE TABLE tbldocentes(
usucodigo INT NOT NULL,
doccodigo INT PRIMARY KEY NOT NULL,
docapellido1 VARCHAR(30) NOT NULL,
docapellido2 VARCHAR(30) NOT NULL,
docnombre1 VARCHAR(30) NOT NULL,
docnombre2 VARCHAR(30),
docingreso VARCHAR(30) NOT NULL,
dotelefono VARCHAR(30) NOT NULL,
imagen VARCHAR(100),
archivo VARCHAR(100),
CONSTRAINT fk_Usuarios FOREIGN KEY (usucodigo) REFERENCES tbltipousuario (usucodigo)
);

CREATE TABLE tbldirectivo(
usucodigo INT NOT NULL,
dircodigo INT PRIMARY KEY NOT NULL,
dirapellido1 VARCHAR(30) NOT NULL,
dirapellido2 VARCHAR(30) NOT NULL,
dirnombre1 VARCHAR(30) NOT NULL,
dirnombre2 VARCHAR(30),
diringreso VARCHAR(30) NOT NULL,
direlefono VARCHAR(30),
dirsalario numeric(18, 0),
cargo VARCHAR(10) NOT NULL,
CONSTRAINT fk_Usuarios_DIRECTIVO FOREIGN KEY (usucodigo) REFERENCES tbltipousuario (usucodigo)
);

CREATE TABLE tblcursos(
curcodigo INT PRIMARY KEY IDENTITY NOT NULL,
curnombre1 VARCHAR(30) NOT NULL,
curintensidadh int NOT NULL,
curdescripcion VARCHAR(60) NOT NULL,
);

CREATE TABLE tblcursodocente(
curcodigo INT,
doccodigo INT,
primary key(curcodigo, doccodigo),
CONSTRAINT fk_cursos_doc FOREIGN KEY (curcodigo) REFERENCES tblcursos (curcodigo),
CONSTRAINT fk_docente_cur FOREIGN KEY (doccodigo) REFERENCES tbldocentes (doccodigo)
);

CREATE TABLE tblestudiantes(
usucodigo INT NOT NULL,
estcodigo INT PRIMARY KEY NOT NULL,
estapellido1 VARCHAR(30) NOT NULL,
estapellido2 VARCHAR(30) NOT NULL,
estnombre1 VARCHAR(30) NOT NULL,
estnombre2 VARCHAR(30),
estingreso VARCHAR(30) NOT NULL,
estelefono VARCHAR(30) NOT NULL,
imagen VARCHAR(100),
CONSTRAINT fk_Usuarios_alumno FOREIGN KEY (usucodigo) REFERENCES tbltipousuario (usucodigo),
);

CREATE TABLE tblcursoestudiante(
doccodigo INT,
curcodigo INT,
estcodigo INT,
primary key(curcodigo, estcodigo),
CONSTRAINT fk_cursos_doc_est FOREIGN KEY (curcodigo) REFERENCES tblcursos (curcodigo),
CONSTRAINT fk_estudiante_cur FOREIGN KEY (estcodigo) REFERENCES tblestudiantes (estcodigo),
CONSTRAINT fk_docente_cur_est FOREIGN KEY (doccodigo) REFERENCES tbldocentes (doccodigo)
);

INSERT INTO tbltipousuario
(usunombre,usudescripcion)
VALUES
('Administrador',null),
('Director',null),
('Docente', null),
('Estudiante',null);

INSERT INTO tbldocentes
(usucodigo, doccodigo,docapellido1, docapellido2,docnombre1, docnombre2, docingreso, dotelefono )
VALUES 
(3, 49389877,'Acero', 'Rivera', 'Carlos', 'Arturo','56987736','1'),
(3, 52322195,'Acero', 'Rivera', 'Gladys', 'Elena','78276683','2'),
(3, 55254515,'Acosta', 'Alvarez', 'Edna', 'Fernanda','99565630','3'),
(3, 58186834,'Acosta', 'Rincon', 'Eduardo', 'Juan','120854577','6'),
(3, 61119153,'Alfaro', 'Abril', 'Claudia', 'Yolima','142143524','5'),
(3, 64051472,'Alvarado', 'Santamaria', 'Nancy', 'Rocio','16343524','8'),
(3, 66983791,'Avella', 'Arcoz', 'Doriz', 'Estela','184721418','7'),
(3, 69916110,'Baron', 'Manrique', 'Luis', 'Carlos','206010365','8'),
(3, 72848429,'Barrera', 'Cocunubo', 'Marisol', '','227299312','9'),
(3, 75780748,'Barreto', 'Medina', 'Zulma', 'Rocio','248583259','8'),
(3, 78713067,'Becerra', 'Avella', 'Cyndy', 'Jasbleidy','269877206','9'),
(3, 81645386,'Becerra', 'Becerra', 'LLda', 'Francisca','2911661536','6'),
(3, 84577705,'Bohorquez', 'Rodriguez', 'Jeffer', '','312455100','5');

INSERT INTO tblcursos
(curnombre1, curintensidadh, curdescripcion)
VALUES
('Ingles.', 5, 'Curso de formacion corto 30 semanas'),
('Ingles 2', 2, 'Curso de formacion corto 40 semanas'),
('C++', 3, 'Curso de formacion corto 60 semanas'),
('Java', 4, 'Curso de formacion corto 40 semanas'),
('Cobol', 6, 'Curso de formacion corto 40 semanas'),
('Español.', 4, 'Curso de formacion corto 20 semanas'),
('Finanzas.', 7, 'Curso de formacion corto 50 semanas'),
('Liderazgo.', 9, 'Curso de formacion corto 40 semanas');

INSERT INTO tblcursodocente
(curcodigo, doccodigo)
VALUES
(1, 49389877),
(1, 64051472),
(1, 66983791),
(1, 72848429),
(1, 75780748),
(2, 49389877),
(2, 58186834),
(2, 78713067),
(5, 84577705),
(6, 61119153),
(7, 49389877),
(8, 66983791);

INSERT INTO tbldirectivo
(usucodigo, dircodigo,dirapellido1, dirapellido2,dirnombre1, dirnombre2, diringreso, direlefono, dirsalario, cargo )
VALUES 
(1, 784587,'Albarracin', 'Oviedo', 'Nelsy', '','85','',null,'Director'),
(1, 799858,'Araque', 'Parra', 'Lendy', '.','99','',null,'Director'),
(1, 815129,'Archila', 'Barragan', 'Monica', 'Paola','23','',null,'Director'),
(1, 830400,'Becerra', 'Becerra', 'Martha', 'Lucia','21','',null,'Director'),
(1, 845671,'Becerra', 'Chaparro', 'Dilcia', 'Concepcion','22','',null,'Director');

INSERT INTO tblestudiantes
(usucodigo, estcodigo,estapellido1, estapellido2,estnombre1, estnombre2, estingreso, estelefono )
VALUES 
(4, 45123548,'Gonzalez', 'Carmelo', 'Rodrigo', 'Benito','54236552','5'),
(4, 15427855, 'garcia', 'cadena', 'santiago', 'jhoan','47582469','6'),
(4, 14868215, 'alfonzo', 'castillo', 'juan', 'esteban','10229360','8'),
(4, 15483525,'jaramillo', 'alvarado', 'julian', 'esteban','14528596','9'),
(4, 75396325,'torres', 'sanchez', 'dayana', 'nicol','12348579','7'),
(4, 75398526,'saenz', 'paez', 'claudia', 'Rocio','12587496','1'),
(4, 35489628,'avellaneda', 'torrres', 'david', 'julian','34928615','2'),
(4, 69916110,'gutierrez', 'zabala', 'maria', 'jose','49527618','4'),
(4, 79286145,'Barrera', 'Castellaños', 'Maiocol', 'esteban','78492517','6'),
(4, 75986335,'Barreto', 'esteban', 'julian', '','28496375','5'),
(4, 98364581,'garcia', 'Avella', 'Cyndy', 'Jasbleidy','26987720','9'),
(4, 34927681,'castillo', 'garcia', 'linda', '','65842277','8'),
(4, 96522746,'Bohorquez', 'sanchez', 'yeferzon', 'maicol','15874526','7');

INSERT INTO tblcursoestudiante
(doccodigo,curcodigo, estcodigo)
VALUES
(49389877,1, 45123548),
(64051472,1, 15427855),
(66983791,1, 14868215),
(72848429,1, 15483525),
(75780748,1, 75396325),
(49389877,2, 35489628),
(58186834,2, 15427855),
(78713067,2, 96522746),
(84577705,5, 34927681),
(61119153,6, 98364581),
(49389877,7, 79286145),
(66983791,8, 69916110);

drop table tblcursoestudiante;
drop table tblestudiantes;
drop table tblcursodocente;
drop table tblcursos;
drop table tbldirectivo;
drop table tbldocentes;
drop table tbltipousuario;