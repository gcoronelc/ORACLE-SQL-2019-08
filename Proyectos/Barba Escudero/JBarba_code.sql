-- Creacion de tablas

create table empleado (id_empleado int, apellidos varchar(45), nombre varchar(45), id_sucursal int);
create table sucursal (id_sucursal int, distrito varchar (45), direccion varchar(45) );
create table mascota (id_mascota int, nombre varchar(45), id_cliente int, tipo varchar(45), raza varchar(45), peso real);
create table cliente (id_cliente int, apellidos varchar(45), nombre varchar(45), dni varchar(8), telefono varchar(9));
create table atenciones (id_atencion int, id_cliente int, id_mascota int, id_sucursal int, id_empleado int, fecha date, servicio varchar(30), facturacion real);

-- Tabla empleado
insert into empleado (id_empleado, apellidos, nombre, id_sucursal) values (1, 'Sanchez Torres', 'Carlos', 1);
insert into empleado (id_empleado, apellidos, nombre, id_sucursal) values (2, 'Cruzado Guzman', 'Cesar', 1);
insert into empleado (id_empleado, apellidos, nombre, id_sucursal) values (3, 'Moreno Carrazco', 'Ana', 2);
insert into empleado (id_empleado, apellidos, nombre, id_sucursal) values (4, 'Guevara Suarez', 'Marco', 3);
insert into empleado (id_empleado, apellidos, nombre, id_sucursal) values (5, 'Sarmiento Gonzales', 'Jacinto', 3);
insert into empleado (id_empleado, apellidos, nombre, id_sucursal) values (6, 'Gonzales Reyes', 'Percy', 2);


-- Tabla sucursal
insert into sucursal (id_sucursal, distrito, direccion) values (1, 'San Miguel', 'Av. Unversitaria 2565');
insert into sucursal (id_sucursal, distrito, direccion) values (2, 'Cercado de Lima', 'Av. Colonial 2314');
insert into sucursal (id_sucursal, distrito, direccion) values (3, 'Jesus Maria', 'Av. Salaverry 1854');



-- Tabla mascota
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (1, 'Pelusa', 1, 'Gato', 'Angora', 3.5);
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (2, 'Titi', 2, 'Gato', 'Persa', 4);
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (3, 'Mimi', 2, 'Gato', 'Persa', 3.8);
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (4, 'Mathilde', 3, 'Gato', '', 4);
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (5, 'Lucas', 4, 'Perro', '', 12);
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (6, 'Fifi', 4, 'Gato', 'Angora', 4.2);
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (7, 'Mosita', 5, 'Gato', 'Azul Ruso', 5.5);
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (8, 'Gala', 6, 'Perro', 'Mastin', 40);
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (9, 'Ares', 6, 'Perro', 'Rottweiler', 25);
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (10, 'Thanos', 6, 'Perro', 'Pastor', 25);
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (11, 'Mina', 7, 'Perro', '', 6);
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (12, 'Dali', 4, 'Perro', '', 12);
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (13, 'Maya', 6, 'Perro', 'Schnauzzer', 6);
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (14, 'Kiya', 5, 'Gato', '', 4);
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (15, 'Milo', 8, 'Perro', '', 6.5);
insert into mascota (id_mascota, nombre, id_cliente, tipo, raza, peso) values (16, 'Lulu', 1, 'Gato', '', 3.3);


-- Tabla cliente
insert into cliente (id_cliente, apellidos, nombre, dni, telefono) values (1, 'Villalba Suarez', 'Ana', '41509563', '999556231');
insert into cliente (id_cliente, apellidos, nombre, dni, telefono) values (2, 'Rengifo Revolledo', 'Juan', '84563217', '981463845');
insert into cliente (id_cliente, apellidos, nombre, dni, telefono) values (3, 'Flores Valverde', 'Percy', '23543187', '975234831');
insert into cliente (id_cliente, apellidos, nombre, dni, telefono) values (4, 'Levano Quispe', 'Cecilia', '36581354', '980584318');
insert into cliente (id_cliente, apellidos, nombre, dni, telefono) values (5, 'Castro Flores', 'Elena', '12654531', '995121531');
insert into cliente (id_cliente, apellidos, nombre, dni, telefono) values (6, 'Galindo Sanchez', 'Lidia', '53483185', '992483655');
insert into cliente (id_cliente, apellidos, nombre, dni, telefono) values (7, 'Rojas Flores', 'Teresa', '56460140', '996643581');
insert into cliente (id_cliente, apellidos, nombre, dni, telefono) values (8, 'Gonzales Aquino', 'Ricardo', '44652342', '998855131');
insert into cliente (id_cliente, apellidos, nombre, dni, telefono) values (9, 'Reatuegui Navarro', 'Pedro', '33254612', '996452116');
insert into cliente (id_cliente, apellidos, nombre, dni, telefono) values (10, 'Arones Sotomayor', 'Julio', '12554345', '992365445');


 -- Tabla Atenciones

insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (1, 2, 2, 2, 3, TO_DATE('2019-02-01','YYYY-MM-DD'), 'Vacuna', 35);
insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (2, 2, 3, 2, 6, TO_DATE('2019-02-01','YYYY-MM-DD'), 'Vacuna', 35);
insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (3, 1, 1, 1, 1, TO_DATE('2019-02-04','YYYY-MM-DD'), 'Consulta', 20);
insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (4, 4, 5, 1, 2, TO_DATE('2019-02-05','YYYY-MM-DD'), 'Baño', 20);
insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (5, 4, 6, 1, 1, TO_DATE('2019-02-05','YYYY-MM-DD'), 'Baño', 20);
insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (6, 3, 4, 3, 4, TO_DATE('2019-02-07','YYYY-MM-DD'), 'Baño', 20);
insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (7, 6, 13, 1, 2, TO_DATE('2019-02-08','YYYY-MM-DD'), 'Operacion', 200);
insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (8, 5, 7, 2, 6, TO_DATE('2019-02-08','YYYY-MM-DD'), 'Consulta', 20);
insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (9, 4, 12, 1, 1, TO_DATE('2019-02-08','YYYY-MM-DD'), 'Consulta', 20);
insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (10, 2, 2, 2, 3, TO_DATE('2019-02-09','YYYY-MM-DD'), 'Baño', 20);
insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (11, 7, 11, 1, 1, TO_DATE('2019-02-09','YYYY-MM-DD'), 'Vacuna', 35);
insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (12, 8, 15, 2, 3, TO_DATE('2019-02-10','YYYY-MM-DD'), 'Vacuna', 35);
insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (13, 8, 15, 2, 3, TO_DATE('2019-02-11','YYYY-MM-DD'), 'Baño + Corte', 35);
insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (14, 5, 14, 2, 6, TO_DATE('2019-02-11','YYYY-MM-DD'), 'Baño', 20);
insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (15, 6, 10, 3, 5, TO_DATE('2019-02-14','YYYY-MM-DD'), 'Operacion', 200);
insert into atenciones(id_atencion , id_cliente , id_mascota , id_sucursal , id_empleado, fecha, servicio, facturacion) values (16, 1, 16, 1, 2, TO_DATE('2019-02-14','YYYY-MM-DD'), 'Consulta', 20);


-- 1. ¿Cuántos animales en total han sido atendidos?

    select distinct count(id_mascota) from atenciones;

-- 2. Cantidad de perros en la lista de mascotas

    select tipo, count(*) Cantidad from mascota group by tipo having tipo='Perro';

-- 3. Los tipos de animales que atienden
    
    select count(t.Cantidad) from ( select count(*) Cantidad from mascota group by tipo) t ;

-- 4. Los empleados con su cantidad de atenciones

    -- Primero obtenemos el Id del empleado y sus atenciones

    select id_empleado, count(*) from atenciones group by id_empleado;

    -- Ahora cruzamos la tabla resultante con la tabla empleado para obtener el nombre del empleado

    select e.apellidos, e.nombre, x.Total 
    from empleado e 
    join ( select id_empleado, count(*) Total from atenciones group by id_empleado ) x 
    on e.id_empleado = x.id_empleado;

-- 5. Los dias que se ganaron más de 100 soles
    select Fecha, sum(Facturacion) Total from atenciones group by fecha having sum(Facturacion) > 100;


-- 6. La cantidad de gatos registrados
    select count(*) from mascota where tipo = 'Gato';

-- 7. El dı́a que más atenciones hubo
    select Fecha, count(*) from atenciones 
    group by Fecha order by count(*) desc 
    offset 0 rows fetch next 1 rows only;

-- 8. Cantidad de baños por dı́a
    select Fecha, count(*) from atenciones where servicio like 'Baño%' group by Fecha;

-- 9. Cantidad de vacunas suministradas
    select count(*) from atenciones where servicio like 'Vacuna%';


-- 10. Cantidad de baños en total
    select count(*) from atenciones where servicio like 'Baño%';







--  1. El empleado que mas dinero recaudo

 
 -- Primero obtenemos el id_empleado que mas dinero recaudo
    select id_empleado, sum(facturacion) ventas from atenciones group by id_empleado order by sum(FACTURACION) desc;


    -- ahora la tabla resiltante la cruzamos con empleados para obtener el nombre del empleado
    select distinct e.apellidos, a.ventas
    from (
        select id_empleado, sum(facturacion) ventas from atenciones group by id_empleado order by sum(FACTURACION) desc
        ) a
    inner join empleado e on e.id_empleado = a.id_empleado
    order by Ventas desc;

    -- ahora elegimos el primero

    select distinct e.apellidos, a.ventas
    from (
        select id_empleado, sum(facturacion) ventas from atenciones 
        group by id_empleado order by sum(FACTURACION) desc ) a
    inner join empleado e on e.id_empleado = a.id_empleado
    order by Ventas desc;
    offset 0 rows fetch next 1 rows only;

-- 2. Cual fue el servicio que genero mas ingresos

    select sum(facturacion), servicio from atenciones 
    group by servicio 
    order by sum(facturacion) desc 
    offset 0 rows fetch next 1 rows only;



-- 3. El cliente que no atendio ninguna mascota
    -- Primero seleccionamos la lista de clientes atendidos
    select distinct id_cliente  from atenciones order by id_cliente asc;

    -- Ahoran la comparamos con la lista generalde clientes     
    select * from cliente where id_cliente not in ( select distinct id_cliente from atenciones) ;


-- 4. El empleado que mas gatos atendio


    -- Primero imprimimos la cantidad de gatos y perros atendidos
     
    select a.id_empleado, m.tipo from mascota m 
    join atenciones a 
    on m.id_mascota = a.id_mascota;
     
    -- Ahora sumamos los que son gatos y los que son perros
    select x.id_empleado, 
    	( case when x.tipo='Gato' then 1 else 0 end ) Gatos,
    	( case when x.tipo='Perro' then 1 else 0 end ) Perros
    from ( select a.id_empleado, m.tipo from mascota m join atenciones a on m.id_mascota = a.id_mascota) x;
     
    -- Ahora agrupamos por empleados, sumamos la cantidad de gatos (y perros), y ordenamos en forma devreciente (los gatos)
     
    select x.id_empleado, 
    	sum( case when x.tipo='Gato' then 1 else 0 end ) Gatos,
    	sum( case when x.tipo='Perro' then 1 else 0 end ) Perros
        from ( select a.id_empleado, m.tipo from mascota m join atenciones a on m.id_mascota = a.id_mascota) x
    group by x.id_empleado
    order by Gatos desc;
    
     -- Ahora falta limitar el primer campo y a parte cruzar la tabla para obtener el de empleado para obtener el nombre
     
    select e.apellidos, e.nombre, t.Gatos
    from empleado e
    join (
        select x.id_empleado, 
    	sum( case when x.tipo='Gato' then 1 else 0 end ) Gatos,
    	sum( case when x.tipo='Perro' then 1 else 0 end ) Perros
    	from ( select a.id_empleado, m.tipo from mascota m join atenciones a on m.id_mascota = a.id_mascota) x
    	group by x.id_empleado
    ) t
    on e.id_empleado = t.id_empleado
    order by t.Gatos desc
    offset 0 rows fetch next 1 rows only;

 
-- 5. La sucursal que mas dinero produjo

    -- el id de la sucursal que mas dinero produjo 
    select id_sucursal, sum(facturacion) from atenciones group by id_sucursal;
     
    -- ahora cruzamos la tabla para obtener los datos de la sucursal
     
    select s.distrito, s.direccion, x.total_ventas
    from sucursal s
    join (  select id_sucursal, sum(facturacion) total_ventas from atenciones group by id_sucursal ) x
    on s.id_sucursal = x.id_sucursal
    order by total_ventas desc
    offset 0 rows fetch next 1 rows only;
 
 
-- 6.La segunda sucursal que mas dinero produjo


    select s.distrito, s.direccion, x.total_ventas
    from sucursal s
    join (  select id_sucursal, sum(facturacion) total_ventas from atenciones group by id_sucursal ) x
    on s.id_sucursal = x.id_sucursal
    order by total_ventas desc
    offset 1 rows fetch next 1 rows only;


-- 7 el mascota que mas veces fue atendido


    select id_mascota, count(*) Frecuencia from atenciones group by id_mascota;
    
    -- Ahora lo tengo que cruzar con la tabla mascota
    select m.nombre, x.Frecuencia from mascota m
    join ( select id_mascota, count(*) Frecuencia from atenciones group by id_mascota) x
    on m.id_mascota = x.id_mascota
    order by x.Frecuencia desc
    offset 0 rows fetch next 1 rows only;






-- 8 El empleado que mas baños atendio

    select * from atenciones;
    
    -- Primero id_empleado y si atendio baño
    select id_empleado, 
    	( case when servicio like 'Baño%' then 1 else 0 end ) Banho, servicio
    from atenciones;
    
    -- Ahora contamos los baños que tuvo cada id_empleado
    select id_empleado, 
    	sum( case when servicio like 'Baño%' then 1 else 0 end ) Banho
    from atenciones
    group by id_empleado;
    
    -- Cruzamos la tabla con el nombre del empleado, 
    
    select 
    	e.apellidos, e.nombre, x.Banho
    from ( select id_empleado, sum( case when servicio like 'Baño%' then 1 else 0 end ) Banho from atenciones group by id_empleado) x
    join empleado e
    on x.id_empleado = e.id_empleado;
    
    
    -- Finalmente ordenamos y recogemos el primero

    select 
    	e.apellidos, e.nombre, x.Banho
    from ( select id_empleado, sum( case when servicio like 'Baño%' then 1 else 0 end ) Banho from atenciones group by id_empleado) x
    join empleado e
    on x.id_empleado = e.id_empleado
    order by Banho desc
    offset 0 rows fetch next 1 rows only;





-- 9 La lista de empleados que no laboraron el dia 08
    
    select * from atenciones;
    
    -- Los servicion qe se direon el 8
    select id_empleado from atenciones where fecha = to_date('2019-02-08','YYYY-MM-DD');
    
    select * from empleado where id_empleado not in ( select id_empleado from atenciones where fecha = to_date('2019-02-08','YYYY-MM-DD')); 
    


-- 10 El cliente mas frecuente

    -- Cliente y su frecuencia
    select id_cliente, count(id_cliente) Frecuencia from atenciones group by id_cliente;
    
    -- Ahora cruzamos la tabla con la tabla nombres para tener el nombre
    
    select c.apellidos, x.Frecuencia
    from ( select id_cliente, count(id_cliente) Frecuencia from atenciones group by id_cliente )  x
    join cliente c
    on c.id_cliente = x.id_cliente
    order by Frecuencia desc
    offset 0 rows fetch next 1 rows only;


