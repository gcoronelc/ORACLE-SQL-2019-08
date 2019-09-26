/*1.MOSTRAR EL NOMBRE DE LA MUNICIPALIDAD, SUS SIGLAS Y SU UBICACION. SOLO DE LAS ENTIDADES QUE SE UBIQUEN EN LIMA*/
SELECT e.c_nomorg ORGANIZACION, s.c_sigla SIGLA, u.c_desubi UBICACION
from system.entidad e
    join system.sigla_entidad s on e.n_id_organ = s.N_ID_ORGAN
    join system.ubigeo u on e.N_ID_UBIGEO = u.N_ID_UBIGEO
WHERE e.c_nomorg like 'MUNICIPALIDAD%' AND TO_CHAR(s.D_FECCRE,'MM') = 02 AND u.C_DESUBI ='LIMA'
ORDER BY 1;

/*2.*/
SELECT ex.c_nomets, v.c_nombre "NORMA APLICABLE",NVL2(p.C_DNI,p.C_DNI,'0000000'),
NVL2(concat(p.c_nombre,p.c_apell),concat(p.c_nombre,p.c_apell),'NO EXISTE REGISTRO')
FROM system.expediente ex
join system.variable v on ex.c_norapl = v.N_ID_VALVARIABLE
LEFT join system.personas p on ex.c_usucre = p.c_dni
ORDER BY 3 DESC;

/*3. MOSTRAR LA NOMENCLATURA, QUE TIPO DE OBJETO Y SELECCION*/
SELECT ex.c_nomets, v.c_nombre "TIPO DE OBJETO",
    CASE 
       WHEN ex.c_nomets like 'AS%' THEN 'ADJUDICACION SIMPLIFICADA'
       WHEN ex.c_nomets like 'LP%'  THEN 'LICITACION PUBLICA'
       WHEN ex.c_nomets like 'CP%'  THEN 'CONCURSO PUBLICO'
       WHEN ex.c_nomets like 'PEC%'  THEN 'PROCEDIMIENTO ESPECIAL'
       WHEN ex.c_nomets like 'RES%'  THEN 'REGIMEN ESPECIAL'
       WHEN ex.c_nomets like 'SIE%'  THEN 'SUBASTA INVERSA ELECTRONICA'
       WHEN ex.c_nomets like 'DIRECTA%'  THEN 'CONTRATACION DIRECTA'
       WHEN ex.c_nomets like 'CONV%'  THEN 'CONVENIO'
       WHEN ex.c_nomets like 'COMPRE%'  THEN 'COMPARACION DE PRECIOS'
    ELSE  'OTROS' END "TIPO PROCEDIMIENTO"
FROM system.expediente ex
join system.variable v on ex.c_TIPOBJ = v.N_ID_VALVARIABLE;

/*4. MOSTRAR EL DNI,  NOMBRE COMPLETO, UBIGEO, Y ORGANIZACION DONDE PERTECE
DE LAS ENTIDADES QUE PERTENCEN AL CALLAO*/
SELECT p.c_dni, CONCAT(p.c_nombre,p.c_apell), u.n_id_ubigeo, u.c_desubi UBICACION,
       e.C_NRORUC,e.c_nomorg
from system.personas p
join system.ubigeo u on p.N_ID_UBIGEO=u.N_ID_UBIGEO
join system.entidad e on p.n_id_organ=e.n_id_organ
where u.c_desubi = 'CALLAO';

/*5.MOSTRAR EL CODIGO, NOMBRE DE NORMA APLICATIVA, Y LA SUMA DEL VALORE REFERENCIAL DEL MES DE FEBRERO DEL 2019*/
SELECT e.c_norapl, v.c_nombre, sum(c_valret)
from system.expediente e
join system.variable v on e.C_NORAPL = v.N_ID_VALVARIABLE
WHERE TO_CHAR(E.D_FECCRE,'MM') = 02
group by e.c_norapl, v.c_nombre
order by 3;

/*6. MOSTRAR ENTIDADS CON EL NUMERO DE EXPEDIENTES Y SIGLAS*/
with 
v1 as (
        select n_id_organ, count(n_id_expede) expedientes
        from system.expediente
        group by n_id_organ
      ),
v2 as (
        select n_id_organ, count(n_id_sigent) siglas
        from system.sigla_entidad
        group by n_id_organ
      )      
select 
      e.c_nomorg, v1.expedientes,
      v2.siglas
from ENTIDAD e
join v1 on e.n_id_organ = v1.n_id_organ
LEFT join v2 on e.n_id_organ = v2.n_id_organ;

/*7.MOSTRAR EL CODIGO, NOMBRE DE MODALIDAD DE SELECCION
, Y LA SUMA DEL VALOR REFERENCIAL DEL MES DE FEBRERO DEL 2019*/
SELECT CASE E.C_TIPSEL
WHEN 75 THEN 'Concurso Público'
WHEN 80 THEN 'Licitación Pública'
WHEN 84	 THEN 'Regímen Especial'
WHEN 271 THEN 'Adjudicación Simplificada'
WHEN 511 THEN 'Procedimiento Especial de Contratación'
WHEN 385 THEN 'Selección de Consultores Individuales'
WHEN 730 THEN 'Adjudicación Simplificada-Homologación'
WHEN 293 THEN 'Contratación Directa'
WHEN 770 THEN 'Adjudicación Simplificada - Ley Nº 30556'
WHEN 798 THEN 'Adjudicación Selectiva'
WHEN 1055 THEN 'Concurso de Proyectos Arquitectónicos'
ELSE 'OTROS'
END "TIPO DE SELECCION"
, e.c_norapl,v.c_nombre, sum(c_valret)
from system.expediente e
join system.variable v on e.C_MODSEL = v.N_ID_VALVARIABLE
WHERE TO_CHAR(E.D_FECCRE,'MM') = 06
group by E.C_TIPSEL,e.c_norapl, v.c_nombre
order by 3;

/*8.Mostrar las siglas de los expedientes y que comiencen con p*/

select e.n_id_expede, e.c_nomets, s.n_id_sigent, s.c_sigla
from 	EXPEDIENTE e
join SIGLA_ENTIDAD s on e.n_id_sigent = s.n_id_sigent
where s.c_sigla like 'P%';

/*9.Mostrar las personas registradas y su ubicacion ordenadas alfabeticamente*/

select concat(p.c_nombre,p.c_apell), u.c_desubi
from PERSONAS p
join system.ubigeo u on p.n_id_ubigeo = u.n_id_ubigeo
order by 1;

/*10.Mostrar las entidades registradas y su ubicacion ordenadas alfabeticamente*/

select e.c_nomorg, u.c_desubi
from entidad e
join system.ubigeo u on e.n_id_ubigeo = u.n_id_ubigeo
order by 1;


