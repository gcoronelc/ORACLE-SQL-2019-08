-- Cuantos empleados hay por departamento.
-- Criterio de agrupamiento: departamento
-- Acción: Contar

SELECT  IDDEPARTAMENTO, D.NOMBRE, COUNT(1) EMPS
FROM RECURSOS.EMPLEADO E
JOIN RECURSOS.DEPARTAMENTO D USING ( iddepartamento )
GROUP BY IDDEPARTAMENTO, D.NOMBRE
ORDER BY 1;

SELECT  E.IDDEPARTAMENTO, D.NOMBRE, COUNT(1) EMPS
FROM RECURSOS.EMPLEADO E
JOIN RECURSOS.DEPARTAMENTO D 
ON E.iddepartamento = d.iddepartamento
GROUP BY E.IDDEPARTAMENTO, D.NOMBRE
ORDER BY 1;


-- Cuantos empleados hay por puesto de trabajo en cada departamento.
-- Criterio de agrupamiento: departamento, cargo
-- Acción: Contar

SELECT 
    d.nombre DEPARTAMENTO, 
    c.nombre CARGO,
    COUNT(1) EMPS
FROM RECURSOS.CARGO C
JOIN RECURSOS.EMPLEADO E ON c.idcargo = e.idcargo
JOIN RECURSOS.DEPARTAMENTO D ON e.iddepartamento = d.iddepartamento
GROUP BY d.nombre, c.nombre 
order by 1, 2;


-- Ejercicio 05
/*
Se necesita la planilla por departamento.
Debe incluir la comusión.

DEPARTAMENTO   SALARIO     COMISION     TOTAL
--------------------------------------------------
CONTABILIDAD   50,000     10,000       60,000
GERENCIA
VENTAS
...
---------------------------------------------------
*/




-- Ejercicio 6
/*
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
