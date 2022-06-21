/* Oracle Querys parte 2 */

 /* Se definen llaves primarias */
ALTER TABLE PERSONAS
ADD PRIMARY KEY (IDPER);

ALTER TABLE CIUDADES
ADD PRIMARY KEY (IDCIU);

ALTER TABLE DIVISIONES
ADD PRIMARY KEY (IDDIV);

ALTER TABLE PAISES
ADD PRIMARY KEY (IDPAIS);

ALTER TABLE IDIOMAS
ADD PRIMARY KEY (IDIDIOMA);

ALTER TABLE TIPODIVISION
ADD PRIMARY KEY (IDTIPO);


/* Se definen llaves foraneas */
ALTER TABLE PERSONAS
ADD FOREIGN KEY (LUGRES) REFERENCES CIUDADES(IDCIU);

ALTER TABLE PERSONAS
ADD FOREIGN KEY (LUGNAC) REFERENCES CIUDADES(IDCIU);

ALTER TABLE CIUDADES
ADD FOREIGN KEY (IDDIV) REFERENCES DIVISIONES(IDDIV);

ALTER TABLE DIVISIONES
ADD FOREIGN KEY (IDPAIS) REFERENCES PAISES(IDPAIS);

ALTER TABLE PAISES
ADD FOREIGN KEY (IDIDIOMA) REFERENCES IDIOMAS(IDIDIOMA);

ALTER TABLE PAISES
ADD FOREIGN KEY (IDTIPO) REFERENCES TIPODIVISION(IDTIPO);


/* Se insertan los tipos de division */
insert into tipodivision(idtipo, nombtipo)
select 1,'Departamento' from dual
union select 2,'Provincia' from dual
union select 3,'Region' from dual
union select 4,'Estado' from dual

/* Se insertan los idiomas */
insert into idiomas(ididioma, nombidioma)
select 1,'Español' from dual
union select 2,'Ingles' from dual
union select 3,'Portugues' from dual

/* Se insertan paises */
insert into paises(idpais, nompais, ididioma, idtipo)
select 1,'Colombia',1,1 from dual
union select 2,'Estados Unidos',2,4 from dual
union select 3,'Argentina',1,2 from dual
union select 4, 'Brasil',3,3 from dual
union select 5, 'Mexico',1,4 from dual

/* Se insertan divisiones */
insert into divisiones(iddiv, nomdiv, extension, idpais)
select 1,'Antioquia',63612,1 from dual
union select 2,'Cundinamarca',24210,1 from dual
union select 3,'Nariño',33268,1 from dual
union select 4,'California',423970,2 from dual
union select 5,'Florida',170312,2 from dual
union select 6,'Texas',695662,2 from dual
union select 7,'Cordoba',576,3 from dual
union select 8,'Buenos Aires',307571,3 from dual
union select 9,'Tierra del fuego',21263,3 from dual
union select 10,'Region norte',3800000,4 from dual
union select 11,'Region sur',576774,4 from dual
union select 12,'Region centro',1612000,4 from dual
union select 13,'Jalisco',78588,5 from dual
union select 14,'Michoacan',58599,5 from dual
union select 15,'Chihuahua',247455,5 from dual

/* Se insertan ciudades */
insert into ciudades(idciu, nomciu, poblacion, iddiv)
select 1,'Medellin',2569000,1 from dual
union select 2,'Itagui',279894,1 from dual
union select 3,'Apartadó',200931,1 from dual
union select 4,'Bogotá',7181000,2 from dual
union select 5,'Soacha',522442,2 from dual
union select 6,'Zipaquirá',130432,2 from dual
union select 7,'Pasto',392930,3 from dual
union select 8,'Ipiales',123341,3 from dual
union select 9,'La cruz',16674,3 from dual
union select 10,'Los angeles',4018080,4 from dual
union select 11,'San diego',1305736,4 from dual
union select 12,'San francisco',874784,4 from dual
union select 13,'Miami',461080,5 from dual
union select 14,'Orlando',284817,5 from dual
union select 15,'Tampa',395912,5 from dual
union select 16,'Houston',2313000,6 from dual
union select 17,'Dallas',1339000,6 from dual
union select 18,'El paso',679879,6 from dual
union select 19,'Ciudad de cordoba',1655481,7 from dual
union select 20,'Rio cuarto',184561,7 from dual
union select 21,'San justo',21624,7 from dual
union select 22,'Buernos aires',2890151,8 from dual
union select 23,'Mar del plata',512129,8 from dual
union select 24,'Lanús',459263,8 from dual
union select 25,'Ushuaia',127205,9 from dual
union select 26,'Rio grande',98277,9 from dual
union select 27,'Tolhuin',2949,9 from dual
union select 28,'Belém',1393399,10 from dual
union select 29,'Macapá',512902,10 from dual
union select 30,'Manaos',2020000,10 from dual
union select 31,'Florianópolis',508826,11 from dual
union select 32,'Rio grande',211965,11 from dual
union select 33,'Curitiba',1864416,11 from dual
union select 34,'Brasilia',3015268,12 from dual
union select 35,'Cuiabá',618124,12 from dual
union select 36,'Bonito',22190,12 from dual
union select 37,'Guadalajara',1460000,13 from dual
union select 38,'Lagos de moreno',111569,13 from dual
union select 39,'Puerto vallarta',379886,13 from dual
union select 40,'Morelia',743275,14 from dual
union select 41,'Uruapan del Progreso',299523,14 from dual
union select 42,'Zamora de Hidalgo',154546,14 from dual
union select 43,'Delicias',150506,15 from dual
union select 44,'Galeana',6656,15 from dual
union select 45,'Santa Isabel',3791,15 from dual

/* Se insertan personas */
insert into personas(idper, nomper, apeper, Direccion, Telefono, LugRes, FecNac,LugNac)
select 1,'Nombre1','Apellido1','calle 8 #57 - 47' ,'3303170290',41,'7/01/1981', 28 from dual
union select 2,'Nombre2','Apellido2','calle 35 #71 - 85' ,'3999689091',29,'22/09/1980', 3 from dual
union select 3,'Nombre3','Apellido3','calle 37 #98 - 58' ,'3219823193',41,'5/04/1988', 26 from dual
union select 4,'Nombre4','Apellido4','calle 65 #60 - 5' ,'3067111126',2,'19/02/1971', 35 from dual
union select 5,'Nombre5','Apellido5','calle 26 #91 - 74' ,'3157467352',30,'11/03/1981', 7 from dual
union select 6,'Nombre6','Apellido6','calle 84 #86 - 10' ,'3567516790',27,'20/08/1987', 37 from dual
union select 7,'Nombre7','Apellido7','calle 21 #7 - 48' ,'3962827164',4,'20/05/1971', 32 from dual
union select 8,'Nombre8','Apellido8','calle 61 #47 - 3' ,'3329418608',15,'22/08/1974', 31 from dual
union select 9,'Nombre9','Apellido9','calle 96 #49 - 4' ,'3399642041',14,'20/09/1996', 11 from dual
union select 10,'Nombre10','Apellido10','calle 24 #14 - 99' ,'3404199479',38,'25/07/1996', 12 from dual
union select 11,'Nombre11','Apellido11','calle 64 #62 - 66' ,'3402560356',37,'5/04/1973', 38 from dual
union select 12,'Nombre12','Apellido12','calle 9 #64 - 35' ,'3187415303',2,'7/04/1985', 8 from dual
union select 13,'Nombre13','Apellido13','calle 18 #24 - 100' ,'3127580195',5,'7/02/1984', 4 from dual
union select 14,'Nombre14','Apellido14','calle 71 #16 - 72' ,'3190620511',25,'4/04/1992', 34 from dual
union select 15,'Nombre15','Apellido15','calle 73 #73 - 28' ,'3560489783',38,'18/06/1993', 29 from dual
union select 16,'Nombre16','Apellido16','calle 59 #32 - 50' ,'3504915485',8,'1/03/1988', 11 from dual
union select 17,'Nombre17','Apellido17','calle 29 #47 - 18' ,'3015216734',42,'11/03/1985', 16 from dual
union select 18,'Nombre18','Apellido18','calle 66 #43 - 88' ,'3777120011',39,'25/05/1998', 17 from dual
union select 19,'Nombre19','Apellido19','calle 16 #33 - 84' ,'3180694336',24,'25/01/1999', 23 from dual
union select 20,'Nombre20','Apellido20','calle 87 #42 - 42' ,'3428929497',20,'9/05/1990', 5 from dual
union select 21,'Nombre21','Apellido21','calle 94 #69 - 40' ,'3644644479',2,'9/07/2002', 44 from dual
union select 22,'Nombre22','Apellido22','calle 99 #87 - 74' ,'3953818446',24,'22/08/1989', 9 from dual
union select 23,'Nombre23','Apellido23','calle 6 #98 - 68' ,'3360195781',13,'6/05/1975', 42 from dual
union select 24,'Nombre24','Apellido24','calle 23 #13 - 29' ,'3389860141',33,'25/08/1977', 23 from dual
union select 25,'Nombre25','Apellido25','calle 54 #62 - 84' ,'3399547657',20,'12/07/1974', 22 from dual
union select 26,'Nombre26','Apellido26','calle 9 #92 - 82' ,'3880017142',8,'5/09/1985', 25 from dual
union select 27,'Nombre27','Apellido27','calle 63 #28 - 90' ,'3637527068',3,'18/02/1979', 25 from dual
union select 28,'Nombre28','Apellido28','calle 63 #6 - 11' ,'3678128149',40,'17/03/1970', 28 from dual
union select 29,'Nombre29','Apellido29','calle 9 #36 - 91' ,'3698066134',14,'20/07/1992', 39 from dual
union select 30,'Nombre30','Apellido30','calle 26 #89 - 60' ,'3700225637',35,'17/07/1987', 18 from dual


/* Se agrega la columna celular a la tabla personas */
alter table personas
add column celular int default 0 not null

/* Se modifica la columna celular a varchar 10 */
alter table personas
modify celular varchar(10)

/* Se agrega la columna correo a la tabla personas varchar (40) */
alter table personas
add correo varchar(40)

/* Se elimina columna de celular */
alter table personas
drop column celular

/* Se le da el valor a la comuna correo con la primera letra del nombre y el apellido completo concatenado con @misena.edu.co  */
update personas set CORREO = lower(substr(NOMPER,1,1)||APEPER||'@misena.edu.co');

