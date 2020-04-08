-- query data.world, per creare tabella di riepilogo https://datawrapper.dwcdn.net/oR1rc/2/
SELECT totale_positivi AS `Casi`, deceduti AS `Deceduti`, totale_ospedalizzati AS `Ricoverati`
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
'Lo <b>' + LEFT(CAST((sum(totale_positivi)/(SELECT sum(popolazione_residente) FROM popolazioneprovincia)*100) AS STRING),4) + '%</b> della popolazione regionale' totale_positivi,
'Lo <b>' + LEFT(CAST((sum(deceduti)/(SELECT sum(popolazione_residente) FROM popolazioneprovincia)*100) as STRING),5) + '%</b> della popolazione regionale' deceduti,
'Lo <b>' + LEFT(CAST((sum(totale_ospedalizzati)/(SELECT sum(popolazione_residente) FROM popolazioneprovincia)*100) AS STRING), 4) + '%</b> della popolazione regionale' totale_ospedalizzati
FROM covid_19_sicilia_dati group by covid_19_sicilia_dati.data
ORDER by data DESC LIMIT 1) valorepercentuale
UNION ALL
SELECT * FROM
(SELECT
CAST(cast((sum(totale_positivi)*100000/(SELECT sum(popolazione_residente) FROM popolazioneprovincia)) AS INTEGER) AS STRING) + ' su <b>100.000</b> abitanti' totale_positivi,
CAST(cast((sum(deceduti)*100000/(SELECT sum(popolazione_residente) FROM popolazioneprovincia)) AS INTEGER) AS STRING) + ' su <b>100.000</b> abitanti' deceduti,
CAST(cast((sum(totale_ospedalizzati)*100000/(SELECT sum(popolazione_residente) FROM popolazioneprovincia)) AS INTEGER) AS STRING) + ' su <b>100.000</b> abitanti' totale_ospedalizzati
from covid_19_sicilia_dati group by covid_19_sicilia_dati.data
ORDER by data DESC LIMIT 1) valorepercentomila
) AS insieme

