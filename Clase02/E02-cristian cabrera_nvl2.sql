select idempleado, nombre, sueldo, comision, 
NVL2(comision,sueldo+comision,sueldo) as ingresos 
from recursos.empleado;