select 
    iddepartamento, sum(NVL(sueldo,0)) sueldo, 
    sum(nvl(comision,0)) comision,  
    sum(NVL(sueldo,0)) + sum(nvl(comision,0)) total
from recursos.empleado 
group by iddepartamento;