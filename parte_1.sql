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

create table DIVISIONES(
    IDDiv INT,
    NomDiv VARCHAR(30),
    Extension INT,
    IDPais INT
);

create table PAISES(
    IDPais INT,
    NomPais VARCHAR(30),
    IDIdioma INT,
    IDTipo INT
);

create table IDIOMAS(
    IDIdioma INT,
    NombIdioma VARCHAR(30)
);

create table TIPODIVISION(
    IDTipo INT,
    NombTipo VARCHAR(30)
);
