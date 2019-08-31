--verificar si tenemos scott--usuarios
select * from dba_users
where username in ('RECURSOS','HR','SCOTT','EDUCA','VENTAS','EUREKA');

--Valores nulos
--DUAL, CREADA POR ORACLE PARA COMPLETAR LA SINTAXIS
select NVL(20,30) FROM DUAL;
select NVL(NULL,50) FROM DUAL;
select NVL(50,NULL) FROM DUAL;

--Ejercicio 01
--Se necesita un listado de los empleados con su sueldo y salario, comision y total de ingresos
select * from recursos.empleado;

select 
  idempleado, nombre, sueldo, nvl(comision,0), 
  sueldo + NVL(comision,0) AS INGRESOS 
from  recursos.empleado;

