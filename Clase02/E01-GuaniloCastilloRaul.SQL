Select 
  empno, ename, sal, comm, 
  sal+comm "ingresos sin nvl",
  sal+nvl(comm,0) as ingresos 
from scott.emp;