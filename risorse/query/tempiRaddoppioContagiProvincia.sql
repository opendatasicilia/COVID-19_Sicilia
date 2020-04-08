-- definire per bene tutti i casi per la colonna raddoppio
-- per il doubling time articolo https://blog.datawrapper.de/weekly-chart-coronavirus-doublingtimes/
SELECT *,tot_ieri - tot_sei deltacinque,tot_sei - tot_undici deltacinqueprecedenti,
CASE
    WHEN (raddoppio_menorecente < raddoppio_recente)
    AND (raddoppio_menorecente/raddoppio_recente > 0.90) THEN '~'
    WHEN (raddoppio_menorecente < raddoppio_recente)
    AND (raddoppio_menorecente/raddoppio_recente > 0.5) THEN '▼'
    WHEN (raddoppio_menorecente < raddoppio_recente)
    AND (raddoppio_menorecente/raddoppio_recente < 0.33) THEN '▼▼▼'
    WHEN (raddoppio_menorecente < raddoppio_recente)
    AND (raddoppio_menorecente/raddoppio_recente < 0.5) THEN '▼▼'
    WHEN (raddoppio_menorecente > raddoppio_recente)
    AND (raddoppio_menorecente/raddoppio_recente > 3)  THEN '▲▲▲'
    WHEN (raddoppio_menorecente > raddoppio_recente)
    AND (raddoppio_menorecente/raddoppio_recente > 2)  THEN '▲▲'
    WHEN (raddoppio_menorecente > raddoppio_recente)
    AND (raddoppio_menorecente/raddoppio_recente > 1.1)  THEN '▲'
    WHEN (raddoppio_menorecente > raddoppio_recente)
    AND (raddoppio_menorecente/raddoppio_recente < 1.25)  THEN '~'
    ELSE '???'
END AS raddoppio
FROM
(SELECT sp,(5.0*LOG(2))/(LOG(tot_ieri/tot_sei)) raddoppio_recente, (5.0*LOG(2))/(LOG(tot_sei/tot_undici)) raddoppio_menorecente,tot_ieri,tot_sei,tot_undici
FROM
(SELECT * FROM
(SELECT totale_positivi tot_ieri,sigla_provincia sp FROM covid_19_sicilia_dati
WHERE data = (SELECT DATE_SUB(max(data),1,"day") FROM covid_19_sicilia_dati)) A
JOIN
(SELECT totale_positivi tot_sei,sigla_provincia FROM covid_19_sicilia_dati
WHERE data = (SELECT DATE_SUB(max(data),6,"day") FROM covid_19_sicilia_dati)) B
ON A.sp=B.sigla_provincia
JOIN
(SELECT totale_positivi tot_undici,sigla_provincia FROM covid_19_sicilia_dati
WHERE data = (SELECT DATE_SUB(max(data),11,"day") FROM covid_19_sicilia_dati)) C
ON B.sigla_provincia=C.sigla_provincia) raddoppio) calcolo
