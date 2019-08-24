-- http://gcoronelc.blogspot.com/p/oracle.html

-- Cargar SQL*Plus

sqlplus /nolog

-- Demo

C:\Users\Alumno>sqlplus /nolog

SQL*Plus: Release 11.1.0.6.0 - Production on Sßb Ago 24 09:46:25 2019

Copyright (c) 1982, 2007, Oracle.  All rights reserved.

SQL> show user
USER es ""

SQL>

-- Cargar SQL*Plus e Iniciar sesión

sqlplus system/oracle

C:\Users\Alumno>sqlplus system/oracle

SQL*Plus: Release 11.1.0.6.0 - Production on Sßb Ago 24 09:48:41 2019

Copyright (c) 1982, 2007, Oracle.  All rights reserved.


Conectado a:
Oracle Database 11g Enterprise Edition Release 11.1.0.6.0 - Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options

SQL> show user
USER es "SYSTEM"

SQL>


-- Conexión Remota

sqlplus usuario/clave@IP:puerto/servicio

connect usuario/clave@IP:puerto/servicio


C:\Users\Alumno>sqlplus system/oracle@localhost:1521/orcl

SQL*Plus: Release 11.1.0.6.0 - Production on Sßb Ago 24 10:30:01 2019

Copyright (c) 1982, 2007, Oracle.  All rights reserved.


Conectado a:
Oracle Database 11g Enterprise Edition Release 11.1.0.6.0 - Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options




-- Consultando parametros

show parameter nombre

SQL> show parameter name

NAME                                 TYPE        VALUE
------------------------------------ ----------- -------------------
db_file_name_convert                 string
db_name                              string      orcl
db_unique_name                       string      orcl
global_names                         boolean     FALSE
instance_name                        string      orcl
lock_name_space                      string
log_file_name_convert                string
service_names                        string      orcl



-- Conexión Remota

CONNECT usuario/clave 

CONNECT usuario/clave@ip:puerto/servicio


-- Esquema SCOTT

SQL> CONN SCOTT/tiger
ERROR:
ORA-28002: the password will expire within 7 days


Conectado.
SQL> alter user scott identified by tiger;

Usuario modificado.

SQL> select * from cat;

TABLE_NAME                     TABLE_TYPE
------------------------------ -----------
BONUS                          TABLE
DEPT                           TABLE
EMP                            TABLE
SALGRADE                       TABLE

-- Esquema Recursos

SQL> show user
USER es "RECURSOS"
SQL> select * from cat;

TABLE_NAME                     TABLE_TYPE
------------------------------ -----------
CARGO                          TABLE
CONTROL                        TABLE
DEPARTAMENTO                   TABLE
EMPLEADO                       TABLE
UBICACION                      TABLE

SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
CARGO                          TABLE
CONTROL                        TABLE
DEPARTAMENTO                   TABLE
EMPLEADO                       TABLE
UBICACION                      TABLE


-- Esquema EDUCA

SQL> conn system/oracle
Conectado.
SQL> @C:\EGCC\databases\EDUCA\Oracle\ModeloOracle.sql
SQL> show user
USER es "EDUCA"
SQL> select * from cat;

TABLE_NAME                     TABLE_TYPE
------------------------------ -----------
ALUMNO                         TABLE
CURSO                          TABLE
MATRICULA                      TABLE
PAGO                           TABLE




-- Esquema Ventas

SQL> conn system/oracle
Conectado.
SQL> @C:\EGCC\databases\Ventas\Oracle\Modelo\Modelo.SQL
SQL> SHOW USER
USER es "VENTAS"
SQL> SET LINESIZE 400
SQL> SET PAGESIZE 5000
SQL> SELECT * FROM CAT;

TABLE_NAME                     TABLE_TYPE
------------------------------ -----------
CATEGORIA                      TABLE
DETALLE                        TABLE
EMPLEADO                       TABLE
PAGO                           TABLE
PRODUCTO                       TABLE
SQ_CATEGORIA                   SEQUENCE
SQ_DETALLE                     SEQUENCE
SQ_EMPLEADO                    SEQUENCE
SQ_PAGO                        SEQUENCE
SQ_PRODUCTO                    SEQUENCE
SQ_VENTA                       SEQUENCE
TIPO_PAGO                      TABLE
USUARIO                        TABLE
VENTA                          TABLE

14 filas seleccionadas.

SQL> SELECT SEQUENCE_NAME, LAST_NUMBER FROM USER_SEQUENCES;

SEQUENCE_NAME                  LAST_NUMBER
------------------------------ -----------
SQ_CATEGORIA                           601
SQ_DETALLE                               1
SQ_EMPLEADO                           2001
SQ_PAGO                                  1
SQ_PRODUCTO                           1021
SQ_VENTA                                 1

6 filas seleccionadas.

SQL>




























































