/* Oracle Querys parte 3 */

/*Todas las personas que vivan en ciudades de más de 1000000 de habitantes*/
select p.nomper, c.nomciu from personas p
join ciudades c on p.idper = c.idciu
where c.poblacion > 1000000

