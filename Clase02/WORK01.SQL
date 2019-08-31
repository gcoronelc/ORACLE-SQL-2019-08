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

-- SUBSTR

SELECT SUBSTR('TRUJILLO',4,2) FROM DUAL;

SELECT SUBSTR('ALIANZA',4) FROM DUAL;

SELECT SUBSTR('PERU',-2) FROM DUAL;



SELECT E.*,
  TO_CHAR(FECINGRESO,'DD/MM/YYYY HH24:MISS') "FECHA INGRESO"
FROM RECURSOS.EMPLEADO E;


UPDATE RECURSOS.EMPLEADO
SET FECINGRESO = TO_DATE('01/04/2000 22:30:15', 'DD/MM/YYYY HH24:MI:SS')
WHERE IDEMPLEADO = 'E0001';





