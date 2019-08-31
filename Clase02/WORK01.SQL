-- Verificar usuarios

select *
from dba_users
where username in ('SCOTT','HR','EUREKA','EDUCA','VENTAS','RECURSOS');


-- Valores Nulos

SELECT NVL( 20, 30 ) FROM DUAL;

SELECT NVL( NULL, 50 ) FROM DUAL;

-- Ejercicio 01
-- Se necesita un listado de los empleados
-- con su salario, comision y  total de ingresos


-- NVL2

SELECT NVL2( 20, 100, 200 ) FROM DUAL;

SELECT NVL2( null, 500, 800 ) FROM DUAL;


-- Ejercicio 02
-- Se necesita un listado de los empleados
-- con su salario, comision y  total de ingresos
-- Aplicando NVL2




