insert into scott.emp(empno,ename,sal)
values( 7777, 'Gustavo', 9999 );

insert into scott.emp(empno,ename,sal)
values( 8888, 'Laura', 8888 );

insert into scott.emp(empno,ename,sal)
values( 6666, 'Leonor', 8877 );

select * from scott.emp;

commit;

ALTER USER SCOTT
IDENTIFIED BY tiger
ACCOUNT UNLOCK;

select 
        e.*, 
        to_char(e.hiredate,'DD/MM/YYYY HH24:MI:SS') hiredate2
from scott.emp e;


insert into scott.emp(empno,ename,sal,hiredate)
values( 5678, 'Leonor', 8877, 
        to_date('15/07/2005 15:35','DD/MM/YYYY HH24:MI') );


insert into scott.emp(empno,ename,sal,hiredate)
values( &codigo, '&NOMBRE', 8877, 
        to_date('15/07/2005 15:35','DD/MM/YYYY HH24:MI') );
        
select 
        e.*, 
        to_char(e.hiredate,'DD/MM/YYYY HH24:MI:SS') hiredate2
from scott.emp e;


create table SCOTT.EMP2
  as (select * from SCOTT.EMP WHERE SAL = 0);

INSERT INTO SCOTT.EMP2
SELECT * FROM SCOTT.EMP WHERE DEPTNO = 20;



create table SCOTT.EMP10
  as (select * from SCOTT.EMP WHERE SAL = 0);
  
create table SCOTT.EMP20
  as (select * from SCOTT.EMP WHERE SAL = 0);  
  
create table SCOTT.EMP30
  as (select * from SCOTT.EMP WHERE SAL = 0);

create table SCOTT.EMP00
  as (select * from SCOTT.EMP WHERE SAL = 0); 
  
INSERT ALL
WHEN DEPTNO = 10 THEN
  INTO SCOTT.EMP10(EMPNO,ENAME,SAL,DEPTNO) VALUES(EMPNO,ENAME,SAL,DEPTNO)
WHEN DEPTNO = 20 THEN
  INTO SCOTT.EMP20(EMPNO,ENAME,SAL,DEPTNO) VALUES(EMPNO,ENAME,SAL,DEPTNO)  
WHEN DEPTNO = 30 THEN
  INTO SCOTT.EMP30(EMPNO,ENAME,SAL,DEPTNO) VALUES(EMPNO,ENAME,SAL,DEPTNO)  
ELSE
  INTO SCOTT.EMP00(EMPNO,ENAME,SAL,DEPTNO) VALUES(EMPNO,ENAME,SAL,DEPTNO)  
SELECT * FROM SCOTT.EMP;
  
SELECT * FROM SCOTT.EMP10;
SELECT * FROM SCOTT.EMP20;
SELECT * FROM SCOTT.EMP30;
SELECT * FROM SCOTT.EMP00;

