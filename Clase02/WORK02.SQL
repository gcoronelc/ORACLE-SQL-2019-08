-- Totalizando Filas

-- COUNT

SELECT COUNT(*) "FILAS DE LA TABLA" FROM SCOTT.EMP;

SELECT COUNT(1) "FILAS DE LA TABLA" FROM SCOTT.EMP;

SELECT COUNT(SAL) "CANT. EMPS. TIENEN SUELDO" FROM SCOTT.EMP;

SELECT COUNT(COMM) "CANT. EMPS. TIENEN COMM" FROM SCOTT.EMP;

-- AVG

SELECT * FROM EDUCA.MATRICULA
WHERE CUR_ID = 1;

SELECT AVG( MAT_NOTA ) PROMEDIO
FROM EDUCA.MATRICULA
WHERE CUR_ID = 1;

UPDATE EDUCA.MATRICULA 
SET MAT_NOTA = NULL
WHERE CUR_ID = 1 AND ALU_ID = 3;

-- GROUP BY


-- Cuantos empleados hay por departamento.
-- Criterio de agrupamiento: departamento
-- Acción: Contar

SELECT IDDEPARTAMENTO, COUNT(1) EMPS
FROM RECURSOS.EMPLEADO
GROUP BY IDDEPARTAMENTO;

-- Cuantos empleados hay por puesto de trabajo en cada departamento.
-- Criterio de agrupamiento: departamento, cargo
-- Acción: Contar

SELECT IDDEPARTAMENTO, idcargo, COUNT(1) EMPS
FROM RECURSOS.EMPLEADO
GROUP BY IDDEPARTAMENTO, idcargo
order by 1, 2;

-- HAVING

-- Se necesita un listado de los departamentos
-- que tienen mas de 5 empleados.

SELECT IDDEPARTAMENTO, COUNT(1) EMPS
FROM RECURSOS.EMPLEADO
GROUP BY IDDEPARTAMENTO
HAVING COUNT(1) > 5;

-- Ejercicio 03
/*
Se necesita la planilla por departamento.
Debe incluir la comusión.

DEPARTAMENTO   SALARIO     COMISION     TOTAL
--------------------------------------------------
100             50,000     10,000       60,000
101
102
...
---------------------------------------------------

*/








