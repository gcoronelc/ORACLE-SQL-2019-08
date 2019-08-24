select *
from recursos.empleado
where iddepartamento in (103,105);


select r.*, a.nombre
from recursos.empleado r,  recursos.departamento a
where r.iddepartamento = a.iddepartamento
and a.iddepartamento in (103,105);