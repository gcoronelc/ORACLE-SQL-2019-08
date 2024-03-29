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
Ejemplo 03
Se necesita saber el trabajador con mayor
salario por departamento, se debe incluir 
los empates.
*/

-- Mayor salario por departamento
select department_id, max(salary) salary
from hr.employees
where department_id is not null
group by department_id;

select * from hr.employees 
where (department_id, salary) in 
(
  select department_id, max(salary) salary
  from hr.employees
  where department_id is not null
  group by department_id
)
order by department_id ;


-- Como tabla derivada
select e.* 
from hr.employees e
join  (
        select department_id, max(salary) salary
        from hr.employees
        where department_id is not null
        group by department_id
      ) t
on e.department_id = t.department_id
and e.salary = t.salary;


/*
Ejercicio 01
Se necesita un reporte de la cantidad de alumnos
matriculados por curso, y son datos financieros.
 
                        IMPORTE         IMPORTE      FALTA
CURSO    MATRICULADOS   COMPROMETIDO    RECAUDADO    COBRAR
--------------------------------------------------------------
AAAAA    10              20000          12000        8000
AAAAA    10              20000          12000        8000
AAAAA    10              20000          12000        8000
--------------------------------------------------------------
Fuente: Esquema EDUCA
*/

-- De la tabla Matricula
select cur_id, count(1) matriculados, sum(mat_precio) comprometido
from educa.matricula
group by cur_id;

-- De la tabla Pago
select cur_id, sum(pag_importe) recaudado
from educa.pago
group by cur_id;

-- Consulta General
with 
v1 as (
        select cur_id, count(1) matriculados, sum(mat_precio) comprometido
        from educa.matricula
        group by cur_id
      ),
v2 as (
        select cur_id, sum(pag_importe) recaudado
        from educa.pago
        group by cur_id
      )      
select 
      c.cur_nombre, v1.matriculados, v1.comprometido,
      nvl(v2.recaudado,0) recaudado,
      v1.comprometido -  nvl(v2.recaudado,0) falta
from educa.curso c
join v1 on c.cur_id = v1.cur_id
left join v2 on c.cur_id = v2.cur_id;
 
/*
Ejercicio 02
Se necesita el siguiente reporte del esquema EUREKA.

NOMBRE       NOMBRE
SUCURSAL     MONEDA      INGRESOS      SALIDAS     SALDO
------------------------------------------------------------
SUCURSAL 1   SOLES       ###           ###         ####
SUCURSAL 1   DOLARES     ###           ###         ####
SUCURSAL 2   SOLES       ###           ###         ####
SUCURSAL 2   DOLARES     ###           ###         ####
. . .
. . .
------------------------------------------------------------
*/


SELECT 
	sucunombre, monenombre,
	sum(CASE WHEN tipoaccion='INGRESO' THEN moviimporte ELSE 0 END) ingreso,
	sum(CASE WHEN tipoaccion='SALIDA' THEN moviimporte ELSE 0 END) salida,
	sum(moviimporte * CASE WHEN tipoaccion='INGRESO' THEN 1 ELSE -1 END) saldo
FROM eureka.v_movimiento
GROUP BY sucunombre, monenombre
ORDER BY 1, 2;


/*
Ejercicio 3
Desarrollar una vista para obtener los siguientes datos
de los trabajadores.

codigo  nombre     departamento    cargo   salario   comision   jefe
------------------------------------------------------------------------------
C001    Pedro       Aaaaaa         Bbbbb     1000       500     Manuel
. . .
. . .
------------------------------------------------------------------------------
*/