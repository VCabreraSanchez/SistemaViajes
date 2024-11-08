DROP DATABASE IF EXISTS bdviajes;

create database bdviajes;
use bdviajes;

CREATE TABLE USUARIO(
CODE  varchar(10) NOT NULL PRIMARY KEY,
USUARIO VARCHAR(30),
NOMBRE VARCHAR(29),
CORREO VARCHAR(30),
TELEFONO  varchar(11),
pais  VARCHAR(30)
);


INSERT INTO USUARIO VALUES('user1','alfa','Carlos Diaz','TuGfa@gmail.com','3578420','Peruano');
INSERT INTO USUARIO VALUES('user2','abcde','Juan Vera','jvera@gmail.com','5578420','Ecuador');


CREATE TABLE pasajeros (
	BOLNRO char (6) NOT NULL primary key ,
	VIANRO char(6) NULL ,
	Nom_pas varchar (30) NULL ,
	Nro_asi numeric (2, 0) NULL,
        tipo   char(1) null,
        pago   numeric(8,1) null 
); 

CREATE  table CHOFER (
	IDCOD char(4) NOT NULL Primary key ,
	CHONOM varchar (30) NULL ,
	CHOFIN date NULL ,
	CHOCAT varchar (1) NULL ,
	CHOSBA numeric(8, 1) NULL 
); 

CREATE TABLE RUTA (
	RUTCOD varchar (4) NOT NULL Primary Key ,
	RUTNOM varchar (20) NULL ,
	pago_cho numeric(8, 1) NULL 
); 

CREATE TABLE VIAJE (
	VIANRO char (6) NOT NULL Primary key,
	BUSNRO numeric(2, 0) NULL ,
	RUTCOD varchar (4) NULL ,
	IDCOD  char (4) NULL ,
	VIAHRS char(6) NULL ,
	VIAFCH date NULL ,
        COSVIA numeric(8,1) null  
);

CREATE TABLE BUS(
BUSNRO numeric(2, 0) NOT NULL PRIMARY KEY,
PLACA CHAR(10),
CAPACIDAD numeric(2, 0)
);
INSERT INTO pasajeros VALUES ('000001','100001','CLAUDIA VASQUEZ',1,'E',40);
INSERT INTO pasajeros VALUES ('000002','100002','CARLOS PAREDES',2,'A' ,50);
INSERT INTO pasajeros VALUES ('000003','100001','JUAN SANCHEZ',3,'A' ,70);
INSERT INTO pasajeros VALUES ('000004','100001','ADELA MEZA',4,'N' ,70);
INSERT INTO pasajeros VALUES ('000005','100002','GLORIA DELGADO',12,'N' ,60);
INSERT INTO pasajeros VALUES ('000006','100001','VIRNA MEJIA',6,'E' ,70);
INSERT INTO pasajeros VALUES ('000007','100001','JOSE LINARES',7,'A',70);
INSERT INTO pasajeros VALUES ('000008','100002','JENIFER CRUZADO',8,'A' ,50);
INSERT INTO pasajeros VALUES ('000009','100002','RAMON CERCADO',9,'A' ,50);
INSERT INTO pasajeros VALUES ('000010','100001','TERESA EGUSQUIZA',10,'A' ,20);
INSERT INTO pasajeros VALUES ('000011','100001','CAROLINA RETAMOZO',11,'N',30);
INSERT INTO pasajeros VALUES ('000012','100002','SHANDY PAREDES',12,'A' ,40);
INSERT INTO pasajeros VALUES ('000013','100001','NURITH GUILLEN',13,'A',70);
INSERT INTO pasajeros VALUES ('000014','100002','DANIEL VERGARA',14,'N',50);
INSERT INTO pasajeros VALUES ('000015','100001','JOHANA LOPEZ',10,'A',70);
INSERT INTO pasajeros VALUES ('000016','100003','huachua Ernestina',11,'E' ,70);
INSERT INTO pasajeros VALUES ('000017','100004','Cardenas Juana',5,'A',70);
INSERT INTO pasajeros VALUES ('000018','100004','Leon Malpartida',2,'A' ,50);
INSERT INTO pasajeros VALUES ('000019','100004','Gonzales carrillo',4,'N' ,70);
INSERT INTO pasajeros VALUES ('000020','100005','Mio Gamboa',7,'A' ,70);
INSERT INTO pasajeros VALUES ('000021','100005','Maldonado Huaman',11,'A' ,70);
INSERT INTO pasajeros VALUES ('000022','100005','Gaspar Acosta',14,'E' ,60);
INSERT INTO pasajeros VALUES ('000023','100006','Echegaray Felix',10,'E' ,60);
INSERT INTO pasajeros VALUES ('000024','100006','Cano Siu',8,'N' ,70);
INSERT INTO pasajeros VALUES ('000025','100006','Melgarejo percy',9,'N',70);
INSERT INTO pasajeros VALUES ('000026','100006','Grijalva Alan ',13,'A' ,70);
INSERT INTO pasajeros VALUES ('000027','100007','Marin LOPEZ',5,'A' ,70);
INSERT INTO pasajeros VALUES ('000028','100007','JOHANA LOPEZ',14,'A',70);
INSERT INTO pasajeros VALUES ('000029','100008','huachua Ernestina',11,'N',70);
INSERT INTO pasajeros VALUES ('000030','100008','Cardenas Juana',5,'E',70);
INSERT INTO pasajeros VALUES ('000031','100009','Leon Malpartida',2,'N' ,70);
INSERT INTO pasajeros VALUES ('000032','100009','Gonzales carrillo',4,'E' ,70);
INSERT INTO pasajeros VALUES ('000033','100010','Mio Gamboa',7,'E' ,70);
INSERT INTO pasajeros VALUES ('000034','100011','Maldonado Huaman',11,'A' ,70);
INSERT INTO pasajeros VALUES ('000035','100012','Gaspar Acosta',14,'N',70);
INSERT INTO pasajeros VALUES ('000036','100013','Echegaray Felix',10,'A' ,70);
INSERT INTO pasajeros VALUES ('000037','100014','Cano Siu',08,'E' ,70);
INSERT INTO pasajeros VALUES ('000038','100015','Melgarejo percy',09,'N' ,70);
INSERT INTO pasajeros VALUES ('000039','100016','Grijalva Alan ',13,'A' ,70);
INSERT INTO pasajeros VALUES ('000040','100017','Marin LOPEZ',5,'N' ,70);
INSERT INTO pasajeros VALUES ('000041','100018','JOHANA LOPEZ',14,'E' ,70);

INSERT INTO pasajeros VALUES ('000042','100019','Cama Roxama',2,'N' ,70);
INSERT INTO pasajeros VALUES ('000043','100019','Lopez Donayre, juan',4,'E' ,70);
INSERT INTO pasajeros VALUES ('000044','100019','Lopez Vera, Ana',7,'E' ,70);
INSERT INTO pasajeros VALUES ('000045','100020','Maldonado Huaman',11,'A' ,70);
INSERT INTO pasajeros VALUES ('000046','100020','Diaz Gaspar Alicia',14,'N',70);
INSERT INTO pasajeros VALUES ('000047','100020','Pezo Zuta Eliana',10,'A' ,70);
INSERT INTO pasajeros VALUES ('000048','100021','Carrasco Cano Maribel',08,'E' ,70);
INSERT INTO pasajeros VALUES ('000049','100021','Quispe Rojas, percy',09,'N' ,70);
INSERT INTO pasajeros VALUES ('000050','100021','Grijalva Alan ',13,'A' ,70);
INSERT INTO pasajeros VALUES ('000051','100022','Marin LOPEZ',5,'N' ,70);
INSERT INTO pasajeros VALUES ('000052','100022','JOHANA LOPEZ',14,'E' ,70);





INSERT INTO RUTA VALUES ('LMTR','TRUJILLO',15);
INSERT INTO RUTA VALUES ('LMCZ','CUZCO',50);
INSERT INTO RUTA VALUES ('LMAR','AREQUIPA',35);
INSERT INTO RUTA VALUES ('LMHA','HUANCAVELICA', 200);
INSERT INTO RUTA VALUES ('LMTA','TACNA', 300);
INSERT INTO RUTA VALUES ('LMCH','CHICLAYO', 80);
INSERT INTO RUTA VALUES ('LMIC','ICA', 50);
INSERT INTO RUTA VALUES ('LMHZ','HUARAZ', 70);
INSERT INTO RUTA VALUES ('LMHC','HUANUCO', 120);
INSERT INTO RUTA VALUES ('LMAY','AYACUCHO', 170);
-- LLENAR TABLA CHOFER

INSERT INTO CHOFER VALUES ('C001','PATRICIO HERRERA','1990-10-08','F',350 );
INSERT INTO CHOFER VALUES ('C002','JORGE QUISPE','2001-04-07','C',200 );
INSERT INTO CHOFER VALUES ('C003','EDWARD TEMPLE','2005-04-11','F',450 );
INSERT INTO CHOFER VALUES ('C004','ELMER MORALES','1998-04-10','F',550 );
INSERT INTO CHOFER VALUES ('C005','MARCOS CUEVA','1995-04-12','F',650 );

INSERT INTO CHOFER VALUES ('C006','Luis Prieto','1998-04-12','F',350 );
INSERT INTO CHOFER VALUES ('C007','Eloy Lazo','2004-04-12','F',350 );
INSERT INTO CHOFER VALUES ('C008','Jaime Benavidez','2005-04-12','F',350 );



INSERT INTO BUS VALUES (1,'WH2145',40 );
INSERT INTO BUS VALUES (2,'MN1975',60 );
INSERT INTO BUS VALUES (3,'PQ5478',50 );
INSERT INTO BUS VALUES (4,'RP7812',40 );
INSERT INTO BUS VALUES (5,'TP3547',40 );


INSERT INTO VIAJE VALUES ('100001',01,'LMTA','C001','10:30','2021-04-12',70);
INSERT INTO VIAJE VALUES ('100002',02,'LMTA','C002','09:30','2021-04-12',60);
INSERT INTO VIAJE VALUES ('100003',03,'LMCZ','C003','11:30','2021-04-13',80);
INSERT INTO VIAJE VALUES ('100004',02,'LMCZ','C002','08:00','2021-04-13',90);
INSERT INTO VIAJE VALUES ('100005',01,'LMIC','C007','13:30','2021-04-13',60);
INSERT INTO VIAJE VALUES ('100006',04,'LMIC','C003','15:00','2021-04-14',50);
INSERT INTO VIAJE VALUES ('100007',05,'LMHZ','C002','21:30','2021-04-14',50);
INSERT INTO VIAJE VALUES ('100008',01,'LMHZ','C001','12:30','2021-04-14',60);
INSERT INTO VIAJE VALUES ('100009',03,'LMCH','C004','18:30','2021-04-15',70);
INSERT INTO VIAJE VALUES ('100010',04,'LMTR','C003','19:00','2021-04-15',70);
INSERT INTO VIAJE VALUES ('100011',02,'LMCZ','C005','19:40','2021-04-15',80);
INSERT INTO VIAJE VALUES ('100012',03,'LMIC','C003','17:00','2021-04-16',70);
INSERT INTO VIAJE VALUES ('100013',03,'LMHA','C002','18:40','2021-04-16',90);
INSERT INTO VIAJE VALUES ('100014',04,'LMAY','C003','19:00','2021-04-17',30);
INSERT INTO VIAJE VALUES ('100015',01,'LMTA','C002','19:00','2021-04-17',40);
INSERT INTO VIAJE VALUES ('100016',01,'LMCZ','C001','17:00','2021-04-18',50);
INSERT INTO VIAJE VALUES ('100017',04,'LMAR','C002','19:00','2021-04-18',70);
INSERT INTO VIAJE VALUES ('100018',02,'LMTR','C005','15:00','2021-04-19',60);
INSERT INTO VIAJE VALUES ('100019',03,'LMTR','C004','19:00','2021-04-19',60);
INSERT INTO VIAJE VALUES ('100020',04,'LMAY','C005','19:00','2021-04-18',70);

INSERT INTO VIAJE VALUES ('100021',03,'LMTR','C007','19:00','2021-04-19',60);
INSERT INTO VIAJE VALUES ('100022',04,'LMAY','C007','19:00','2021-04-19',70);

select * from pasajeros;
select * from viaje;
