/* Oracle Querys parte 3 */

/*Todas las personas que vivan en ciudades de más de 1000000 de habitantes*/

select
    p.nomper,
    c.nomciu
from
    personas p
    join ciudades c on p.idper = c.idciu
where
    c.poblacion > 1000000;

/*Todas las personas que vivan en una división específica*/

select
    p.nomper,
    c.nomciu,
    d.nomdiv
from
    personas p
    join ciudades c on c.idciu = p.lugres
    join divisiones d on d.iddiv = c.iddiv
where
    d.nomdiv = :nombreDivision;

/* Personas que vivan en un país diferente al de una persona dada */

select
    p.nomper,
    c.nomciu,
    d.nomdiv,
    pa.nompais
from
    personas p
    join ciudades c on c.idciu = p.lugres
    join divisiones d on d.iddiv = c.iddiv
    join paises pa on pa.idpais = d.idpais
where
    pa.idpais != (
        select
            pa.idpais
        from
            personas p
            join ciudades c on c.idciu = p.lugres
            join divisiones d on d.iddiv = c.iddiv
            join paises pa on pa.idpais = d.idpais
        where
            p.nomper = :nombre
    );

/* Personas que vivan en paises cuyas divisiones sean estados */

select
    p.nomper,
    c.nomciu,
    d.nomdiv,
    pa.nompais,
    tp.nombtipo
from
    personas p
    join ciudades c on p.lugres = c.idciu
    join divisiones d on d.iddiv = c.iddiv
    join paises pa on pa.idpais = d.idpais
    join tipodivision tp on tp.idtipo = pa.idtipo
where
    tp.nombtipo = 'Estado';

/* Personas que nacieron en paises que hablan el mismo idioma que el país donde nacio cierta persona */

select
    p.nomper,
    c.nomciu,
    d.nomdiv,
    pa.nompais,
    i.nombidioma
from
    personas p
    join ciudades c on p.lugnac = c.idciu
    join divisiones d on d.iddiv = c.iddiv
    join paises pa on pa.idpais = d.idpais
    join idiomas i on i.ididioma = pa.ididioma
where
    i.ididioma in (
        select
            i.ididioma
        from
            personas p
            join ciudades c on p.lugnac = c.idciu
            join divisiones d on d.iddiv = c.iddiv
            join paises pa on pa.idpais = d.idpais
            join idiomas i on i.ididioma = pa.ididioma
        where
            p.nomper = :nombre
    );

/* Mostrar nombre, apellido, ciudad, departamento, de personas que vivan en lugares distintos
    de donde nacieron. */

select
    p.nomper,
    p.apeper,
    cn.nomciu as "Ciudad de nacimiento",
    cr.nomciu as "Ciudad de residencia",
    d.nomdiv as "Division de residencia"
from
    personas p
    join ciudades cr on cr.idciu = p.lugres
    join ciudades cn on cn.idciu = p.lugnac
    join divisiones d on d.iddiv = cr.iddiv
where
    p.lugnac != p.lugres;

/* Creación de indice */

create index Index_Persona on personas(correo);

/* Mostrar indice */

select
    Index_Name
from
    user_indexes
where
    table_name = 'PERSONAS';

    /* Creación de vista */
CREATE VIEW info_Personas AS 
select p.nomper || ' ' || p.apeper as "Nombre completo", c.nomciu as "Ciudad", pa.nompais as "Pais" from personas p
join ciudades c on c.idciu = p.idper
join divisiones d on d.iddiv = c.iddiv
join paises pa on pa.idpais = d.idpais
order by c.nomciu;

/* Consulta de vista */

select * from info_personas;