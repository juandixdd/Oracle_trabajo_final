/* Oracle Querys parte 1 */

create table PERSONAS(
    IDPer INT,
    NomPer VARCHAR(30),
    ApePer VARCHAR(30),
    Direccion VARCHAR(40),
    Telefono VARCHAR(10),
    LugRes INT,
    FecNac DATE,
    LugNac INT
);

create table CIUDADES(
    IDCiu INT,
    NomCiu VARCHAR(30),
    Poblacion INT,
    IDDiv INT
);