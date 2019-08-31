--verificar si tenemos scott--usuarios
select * from dba_users
where username in ('RECURSOS','HR','SCOTT','EDUCA','VENTAS','EUREKA');

--Valores nulos
--DUAL, CREADA POR ORACLE PARA COMPLETAR LA SINTAXIS
--NVL
select NVL(20,30) FROM DUAL;
select NVL(NULL,50) FROM DUAL;
select NVL(50,NULL) FROM DUAL;

--Ejercicio 01
--Se necesita un listado de los empleados con su sueldo y salario, comision y total de ingresos
select * from recursos.empleado;
select idempleado, nombre, sueldo, nvl(comision,0) , sueldo + NVL(comision,0) AS INGRESOS 
from  recursos.empleado;

--NVL2 (SI EXPRESION 1 NO ES NULO, REGRESA EXPRESION 2, SI ES NULO REGRESA EXPRESION 3)
SELECT NVL2(NULL,2,1) FROM DUAL;
SELECT NVL2(3,2,1) FROM DUAL;

--Ejercicio 02
select idempleado, nombre, sueldo, 
nvl2(comision,comision,0) as COMISION, 
sueldo + NVL2(comision,comision,0) AS INGRESOS 
from  recursos.empleado;

