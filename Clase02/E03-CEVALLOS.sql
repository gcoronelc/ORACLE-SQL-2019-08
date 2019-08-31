select iddepartamento, sum(sueldo) TOT_SUELDO, 
nvl(sum(comision),0) TOT_COMISION, 
sum(sueldo)+nvl(sum(comision),0) as total
from recursos.EMPLEADO
group by iddepartamento
order by 1;