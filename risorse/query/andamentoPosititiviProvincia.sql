WITH andamentoprovincia AS (
    SELECT data, covid_19_sicilia_dati.sigla_provincia, covid_19_sicilia_dati.totale_positivi FROM covid_19_sicilia_dati
ORDER BY DATA
)
SELECT *
  FROM andamentoprovincia
 PIVOT (MAX(totale_positivi) FOR sigla_provincia IN ("AG","CL","CT","EN","ME","PA","RG","SR","TP"))
 ORDER BY data
