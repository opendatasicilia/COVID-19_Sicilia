-- query data.world, per creare tabella di riepilogo https://datawrapper.dwcdn.net/oR1rc/2/
SELECT totale_positivi AS `Totale casi confermati`, deceduti AS `Deceduti`, totale_ospedalizzati AS `Ricoverati`
FROM
(
SELECT * FROM
(SELECT
CAST(sum(totale_positivi) AS STRING) totale_positivi,
CAST(sum(deceduti) AS STRING) deceduti,
CAST(sum(totale_ospedalizzati) AS STRING) totale_ospedalizzati
from covid_19_sicilia_dati group by covid_19_sicilia_dati.data
ORDER by data DESC LIMIT 1) valoreassoluto
UNION ALL
SELECT * FROM
(SELECT
'Lo ' + LEFT(CAST((sum(totale_positivi)/(SELECT sum(popolazione_residente) FROM popolazioneprovincia)) AS STRING),6) + ' % della popolazione' totale_positivi,
'Lo ' + LEFT(CAST((sum(deceduti)/(SELECT sum(popolazione_residente) FROM popolazioneprovincia)) as STRING),7) + ' % della popolazione' deceduti,
'Lo ' + LEFT(CAST((sum(totale_ospedalizzati)/(SELECT sum(popolazione_residente) FROM popolazioneprovincia)) AS STRING), 6) + ' % della popolazione' totale_ospedalizzati
FROM covid_19_sicilia_dati group by covid_19_sicilia_dati.data
ORDER by data DESC LIMIT 1) valorepercentuale
UNION ALL
SELECT * FROM
(SELECT
CAST(cast((sum(totale_positivi)*100000/(SELECT sum(popolazione_residente) FROM popolazioneprovincia)) AS INTEGER) AS STRING) + ' su 100.000 abitanti' totale_positivi,
CAST(cast((sum(deceduti)*100000/(SELECT sum(popolazione_residente) FROM popolazioneprovincia)) AS INTEGER) AS STRING) + ' su 100.000 abitanti' deceduti,
CAST(cast((sum(totale_ospedalizzati)*100000/(SELECT sum(popolazione_residente) FROM popolazioneprovincia)) AS INTEGER) AS STRING) + ' su 100.000 abitanti' totale_ospedalizzati
from covid_19_sicilia_dati group by covid_19_sicilia_dati.data
ORDER by data DESC LIMIT 1) valorepercentomila
) AS insieme
