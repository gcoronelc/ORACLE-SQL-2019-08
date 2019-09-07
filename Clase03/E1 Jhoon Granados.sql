SELECT C.CUR_NOMBRE,
       SUM(C.CUR_MATRICULADOS) MATRICULADOS,
       SUM(C.CUR_PRECIO) "IMPORTE COMPROMETIDO",
       SUM(M.MAT_PRECIO) "IMPORTE RECAUDADO",
       SUM(C.CUR_PRECIO) - SUM(M.MAT_PRECIO) "FALTA COBRAR"
FROM EDUCA.CURSO C
INNER JOIN EDUCA.MATRICULA M
ON C.CUR_ID = M.CUR_ID
GROUP BY C.CUR_NOMBRE;

select count(*) from educa.matricula;

select sum(mat_precio) from educa.matricula;

select sum(pag_importe) from EDUCA.pago;

