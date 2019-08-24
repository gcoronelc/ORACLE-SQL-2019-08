-- http://gcoronelc.blogspot.com/p/oracle.html

-- SELECT - COLUMNAS

SELECT * FROM SCOTT.EMP;

SELECT EMPNO, ENAME 
FROM SCOTT.EMP;


SELECT 
    EMPNO, ENAME, SAL, 
    SAL * 1.30 NEW_SAL,
    SAL * 1.30 "NEW SAL"
FROM SCOTT.EMP;

-- LIMITANDO FILAS

/*
Que departamentos tienen empleados
*/

-- Rpta 1

select distinct iddepartamento from recursos.empleado;


/*
Se necesita tambien el nombre del departamento.
*/

select * from recursos.departamento
where iddepartamento in (100,101,102,103,105);
                         
select * from recursos.departamento
where iddepartamento in (select distinct iddepartamento 
                         from recursos.empleado);
                         
/*
Y los departamentos que no tienen empleados.
*/                         

select * from recursos.departamento
where iddepartamento not in (select distinct iddepartamento 
                             from recursos.empleado);

-- Operadores Relacionales

/* Consultar los empleados que su sueldo es mayor a 5000 */

select * from recursos.empleado 
where sueldo > 5000;

-- Operadores Lógicos

/*

Se necesita tenes un listados de los trabajadores
del departamento de ventas y sistemas.

S1P1-Apellido.SQL

*/







