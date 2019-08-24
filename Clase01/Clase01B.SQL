
SELECT * FROM V$SESSION 
WHERE USERNAME = 'SYSTEM';

SELECT * FROM v$tablespace;

SELECT * FROM dba_data_files 
WHERE tablespace_name = 'USERS';

select * from dba_users 
where username in ('RECURSOS','SCOTT','EDUCA','EUREKA','VENTAS');

