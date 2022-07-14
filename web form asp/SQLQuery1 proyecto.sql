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
CONSTRAINT fk_Usuarios FOREIGN KEY (usucodigo) REFERENCES tbltipousuario (usucodigo)
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


drop table tbldocentes;
drop table tbltipousuario;