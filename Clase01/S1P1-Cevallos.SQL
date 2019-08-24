select * from recursos.empleado
where iddepartamento in 
(select iddepartamento from recursos.departamento
 where Nombre = 'Ventas' or Nombre='Sistemas');