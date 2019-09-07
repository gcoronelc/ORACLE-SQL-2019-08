/*
Ejemplo 01
De cada sucursal, se necesita el importe
en ahorros en SOLES y DOLARES.
El modelo del reporte es el siguiente:
SUCURSAL    SOLES     DOLARES
---------------------------------------
SUCURSAL 1  4567       43567
SUCURSAL 2  5346       76789
. . .
. . .
---------------------------------------
*/

select 
	s.vch_sucunombre,
	sum(case when c.chr_monecodigo='01' then c.dec_cuensaldo else 0 end) soles,
	sum(case when c.chr_monecodigo='02' then c.dec_cuensaldo else 0 end) dolares
from eureka.sucursal s 
join eureka.cuenta c 
on s.chr_sucucodigo = c.chr_sucucodigo 
group by s.vch_sucunombre;

/*
COMBINACIONES EXTERNAS
- LEFT
- RIGHT
- FULL
*/

/*
Ejemplo 02
Se necesita un reporte de la planilla de todos los
departamentos,incluido los que no tienen empleados.

NOMBRE          CANTIDAD       PLANILLA   PLANILLA       
DEPARTAMENTO    EMPLEADOS      SUELDO     BOMIFICACIONES    TOTAL
--------------------------------------------------------------------
Aaaaa           ###            ####       ##                #####
Aaaaa           ###            ####       ##                #####
Aaaaa           ###            ####       ##                #####
---------------------------------------------------------------------
*/


select 
    d.department_name departamento,
    nvl(count(e.employee_id),0) empleados,
    SUM(nvl(e.salary,0)) "PLANILLA SUELDO",
    SUM(nvl(e.commission_pct,0)*nvl(e.salary,0)) "PLANILLA BONIFICACION",
    SUM(nvl(e.salary,0) + nvl(e.commission_pct,0)*nvl(e.salary,0)) "PLANILLA TOTAL"
from HR.departments d 
LEFT join hr.employees e 
on d.department_id = e.department_id
group by d.department_name;

SELECT * FROM HR.departments;


/*
Ejemplo 01
De cada sucursal, se necesita el importe
en ahorros en SOLES y DOLARES.
El modelo del reporte es el siguiente:
SUCURSAL    SOLES     DOLARES
---------------------------------------
SUCURSAL 1  4567       43567
SUCURSAL 2  5346       76789
. . .
. . .
---------------------------------------
*/






