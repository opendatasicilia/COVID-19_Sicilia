- [Perché questo spazio](#perché-questo-spazio)
  - [Scopo](#scopo)
  - [Dati](#dati)
    - [Se usi questi dati](#se-usi-questi-dati)
  - [Schema dati](#schema-dati)
  - [Controlli effettuati sui dati](#controlli-effettuati-sui-dati)
  - [Raccolta visualizzazioni di base, per la Sicilia](#raccolta-visualizzazioni-di-base-per-la-sicilia)
  - [Semantic Web](#semantic-web)
      - [Dimensioni](#dimensioni)
      - [Misurazioni](#misurazioni)
      - [Esempio SPARQL](#esempio-sparql)
  - [Applicazione Android](#applicazione-android)
  - [Lettera aperta](#lettera-aperta)
  - [Ringraziamenti](#ringraziamenti)
  - [Chi usa o è ispirato dal nostro progetto](#chi-usa-o-è-ispirato-dal-nostro-progetto)


# Perché questo spazio

L’esigenza di avere un dataset in cui vengano registrati i valori relativi all’epidemia **COVID-19** in **Sicilia** dettagliato per province nasce dalla **mancanza** di un tale **dataset** nel repo del [Dipartimento della Protezione Civile](https://github.com/pcm-dpc/COVID-19), dove i dati disaggregati **per provincia** riguardano **soltanto** il campo “**totale_casi**”, e dalla mancanza di disponibilità di tali dati da parte della Regione Siciliana.<br>
Per essere più precisi, **la Regione Siciliana** pubblica quotidianamente (in prosa e per immagini) un comunicato in cui vengono riportati alcuni valori che riguardano l’epidemia COVID-19 in Sicilia, avvisando che sono i valori comunicati al Dipartimento di Protezione Civile ma **non rende appunto disponibile un dataset** che elenchi l’insieme di questi dati comunicati quotidianamente.

Il 23 marzo 2020 abbiamo scritto una [**lettera aperta**](#lettera-aperta) (e inviato una richiesta via email) alla **Regione Siciliana**, per chiedere che questi dati fossero pubblicati anche in modalità ***machine readable***, anche come tabelle. Ad oggi **nessuna risposta**.<br>
Cogliamo pertanto l'occasione per **rinnovare il nostro invito alla Regione Siciliana** di rendere disponibili **dati di maggior dettaglio**.

## Scopo

Questo dataset è quindi ***il frutto della raccolta dei dati pubblicati dalla Regione Siciliana*** e ha lo scopo di consentirne la loro **analisi** per **ciascuna provincia** siciliana andando a colmare un’importante lacuna.<br>
I dati dettagliati per provincia pubblicati dalla Regione Siciliana non coprono tutte le informazioni: alcuni valori vengono forniti come dato regionale complessivo. È il caso, ad esempio, del numero di pazienti ricoverati in terapia intensiva (campo `terapia_intensiva`) e del numero dei “tamponi” effettuati.

Per quanto riguarda il numero dei pazienti in isolamento domiciliare (campo `isolamento_domiciliare`) sebbene la Regione Siciliana lo fornisca come totale regionale è possibile ricavarne il valore dettagliato per provincia sottraendo il valore dei ricoverati (campo `totale_ospedalizzati`) dal valore del `totale positivi` (precedentemente `totale_attualmente_positivi`):
```
isolamento_domiciliare = totale_positivi - totale_ospedalizzati
```

## Dati

I dati al momento sono 👉 [**disponibili QUI**](https://docs.google.com/spreadsheets/d/e/2PACX-1vRsbOOrQCv72t6fH4ktl7VtafxvU1RECTqSBpC3wc91C0hLxFLCFRNZc7os5Pbcmvq-Qh4B3aIO50L8/pub?gid=2065250495&single=true&output=csv) in formato **`CSV`** (*encoding* `UTF-8` e `,` come separatore), con un file di insieme che contiene tutti i dati. E [qui](https://bertha.ig.ft.com/republish/publish/gss/1wc9t8X7wRqmWfGCBwREi0b9DpbgpCPpmHpqoPTVyPXI/Dati) in JSON.

Si possono visualizzare anche tramite questo [**foglio elettronico**](https://docs.google.com/spreadsheets/d/1wc9t8X7wRqmWfGCBwREi0b9DpbgpCPpmHpqoPTVyPXI/edit?usp=sharing), che per noi vale soltanto come risorsa di lavoro. I dati "veri" sono quelli del suddetto CSV.

E infine sono accessibili anche in questo [**dataset**](https://data.world/opendatasicilia/covid-19sicilia) su data.world.

### Se usi questi dati

Se usi questi dati, indicalo per favore in qesta modalità:

> <b>COVID-19, Sicilia</b> - Fonte: <a href='https://github.com/opendatasicilia/COVID-19_Sicilia' target='_blank'>Repository di Open Data Sicilia</a> con dati pubblicati dalla Regione Siciliana e dal Dipartimento Protezione Civile. Licenza [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.it)

Qui il codice HTML che puoi incollare nel tuo sito/mappa/dashboard;

```html
<b>COVID-19, Sicilia</b> - Fonte: <a target="_blank" href='https://github.com/opendatasicilia/COVID-19_Sicilia' target='_blank'>Repository di Open Data Sicilia</a>
con dati pubblicati dalla Regione Siciliana e dal Dipartimento Protezione Civile.
Licenza <a target="_blank" href="https://creativecommons.org/licenses/by/4.0/deed.it">CC BY 4.0</a>
```

## Schema dati

Riportiamo qui di seguito il significato della tipologia dei valori esposti e le formule con cui vengono ricavati i valori totali.

Abbiamo utilizzato lo stesso schema che il [Dipartimento della Protezione Civile](https://github.com/pcm-dpc/COVID-19#formato-dei-dati) usa per le regioni, in modo da essere uniformi e per allinearci a un insieme più ricco di dati (lo schema per province del DPC infatti contiene al momento soltanto il totale).

- `ricoverati con sintomi`; si tratta dei pazienti affetti da Covid-19 ricoverati ma non in terapia intensiva. Non è stato possibile ricavare i dati disaggregati per provincia.
- `terapia_intensiva`; si tratta dei pazienti affetti da Covid-19 ricoverati in terapia intensiva. Non è stato possibile ricavare i dati disaggregati per provincia. Il dato comunicato riguarda il totale regionale.
- `totale_ospedalizzati` = `ricoverati_con_sintomi` + terapia_intensiva` ; valore comunicato dalla Regione Siciliana dettagliato per ciascuna provincia.
- `isolamento_domiciliare`; si tratta dei pazienti affetti da Covid-19 ma non ricoverati. Il dato non viene comunicato dalla Regione Siciliana dettagliatamente per provincia ma si ottiene sottraendo il `totale_ospedalizzati` dal `totale_positivi` (si veda sopra).
- `totale_positivi` = `totale_ospedalizzati` + `isolamento_domiciliare`; il dato è comunicato dalla Regione Siciliana dettagliato per ciascuna provincia.
- `variazione_totale_positivi` = `totale_positivi` del giorno corrente - `totale_positivi` del giorno precedente. Si tratta di un valore calcolato.
- `nuovi_positivi` = `totale_casi` del giorno corrente - `totale_casi` del giorno precedente. Si tratta di un valore calcolato e misura l’espandersi dell’epidemia.
- `dimessi_guariti`; si tratta dei paziendi dimessi o guariti; valore comunicato dalla Regione Siciliana dettagliato per ciascuna provincia.
- `deceduti`; si tratta dei pazienti deceduti; valore comunicato dalla Regione Siciliana dettagliato per ciascuna provincia.
- `totale_casi` = `totale_positivi` + `dimessi_guariti` + `deceduti`; si tratta del totale dei pazienti che hanno contratto il contagio indipendentemente che siano ancora in cura, che siano guariti o deceduti. Questo dato, che rappresenta un valore calcolato, veniva inizialmente comunicato dalla Regione Siciliana dettagliato per ciascuna provincia; attualmente è rinvenibile come unico dato provinciale comunicato dal Dipartimento della Protezione Civile.
- `tamponi`; non è stato possibile ricavare i dati disaggregati per provincia poiché il dato comunicato dalla Regione Siciliana riguarda il totale regionale.

## Controlli effettuati sui dati

La rilevazione dei dati presenti nel nostro dataset è stata oggetto di controlli di consistenza dei dati stessi e che per i primi giorni, sostanzialmente dal 24/02/2020 al 05/03/2020, data in cui la Regione Siciliana ha iniziato a pubblicare regolarmente i propri comunicati, è stato necessario effettuare ulteriori verifiche sulle notizie di stampa locali per integrare correttamente alcuni dati mancanti (quelli riguardanti guariti_dimessi e deceduti) e associarli alla relativa provincia.<br>
Dai controlli effettuati sono stati rilevati alcuni casi (5 alla data del 03/04/2020) in cui si sospetta dell’accuratezza dei dati esposti.

## Raccolta visualizzazioni di base, per la Sicilia

[**OpenDataSicilia**](https://groups.google.com/forum/#!categories/opendatasicilia) ha raccolto in 👉 [questa pagina](https://opendatasicilia.github.io/COVID-19_Sicilia/) alcune **visualizzazioni** di base sulla **COVID-19** per la Sicilia, in modo che possano essere usate in qualsiasi altro sito, con un semplice <kbd>CTRL+C</kbd>, <kbd>CTRL+V</kbd> (un copia e incolla 😊).


[![](https://i.imgur.com/kiKshsx.png)](https://opendatasicilia.github.io/COVID-19_Sicilia/)

## Semantic Web
Usando il modello [RDF Data Cube Vocabulary](https://www.w3.org/TR/vocab-data-cube/) sono state create le dimensioni, le misure e gli attributi necessari per descrivere in linguaggio semantico il dataset del monitoraggio sanitario COVID-19, motivo per cui tali dati sono fruibili anche tramite [SPARQL endpoint](http://45.62.242.205:8890/sparql). I dati sono aggiornati quotidianamente.

* **URI**: Ciascuna riga viene identificata da una apposita `URI` secondo il seguente schema:

`http://www.opendatasicilia.it/dataset/covid19/sicilian-trend/observations/20200408/regions/19/provinces/088`

#### Dimensioni

Nome   | Property
------------ | -------------
Data | http://purl.org/linked-data/sdmx/2009/dimension#refTime
Area geografica | http://purl.org/linked-data/sdmx/2009/dimension#refArea

#### Misurazioni
Nome   | Property
------------ | -------------
Totale ospedalizzati| http://www.protezionecivile.gov.it/ns/totalHospitalized
Isolamento domiciliare | http://www.protezionecivile.gov.it/ns/homeIsolation
Totale positivi | http://www.protezionecivile.gov.it/ns/totalPositive
Variazione totale positivi | http://www.protezionecivile.gov.it/ns/totalPositiveVariation
Nuovi positivi| http://www.protezionecivile.gov.it/ns/newPositive
Dimessi guariti | http://www.protezionecivile.gov.it/ns/healed
Deceduti | http://www.protezionecivile.gov.it/ns/deads
Totale casi | http://www.protezionecivile.gov.it/ns/totalCases

L'istanza relativa alla dimensione dell'area geografica (province) è stata presa dal progetto [Ontopia](https://github.com/italia/daf-ontologie-vocabolari-controllati), nella
fattispecie dal vocabolario controllato della [classificazione territoriale](https://github.com/italia/daf-ontologie-vocabolari-controllati/tree/master/VocabolariControllati/territorial-classifications):

`<https://w3id.org/italia/controlled-vocabulary/territorial-classifications/provinces/083>`


#### Esempio SPARQL

* **Quali sono i dati sanitari della provincia di Messina  del 25 marzo 2020?**

 *Per motivi di performance sono stati caricati nello store anche i vocabolari controllati di  [Ontopia](https://github.com/italia/daf-ontologie-vocabolari-controllati).*

[Demo](http://45.62.242.205:8890/sparql?default-graph-uri=&query=PREFIX+qb%3A+%3Chttp%3A%2F%2Fpurl.org%2Flinked-data%2Fcube%23%3E+%0D%0APREFIX+sdmx-dimension%3A+%3Chttp%3A%2F%2Fpurl.org%2Flinked-data%2Fsdmx%2F2009%2Fdimension%23%3E+%0D%0APREFIX+dpc%3A+%3Chttp%3A%2F%2Fwww.protezionecivile.gov.it%2Fns%2F%3E%0D%0Aprefix+l0%3A+%3Chttps%3A%2F%2Fw3id.org%2Fitalia%2Fonto%2Fl0%2F%3E+%0D%0A%0D%0ASELECT+%3FareaName+%3Fdate+%0D%0A+++++++%3FtotalPositive+%3FhomeIsolation+%0D%0A+++++++%3FnewPositive+%3FtotalPositiveVariation+%0D%0A+++++++%3Fhealed+%3Fdeads+%3FtotalCases+%0D%0AWHERE%0D%0A%7B%0D%0A++++%3Fobs+a+qb%3AObservation%3B%0D%0A+++++++++qb%3Adataset+%3Chttp%3A%2F%2Fwww.opendatasicilia.it%2Fdataset%2Fcovid19%2Fsicilian-trend%3E%3B%0D%0A+++++++++sdmx-dimension%3ArefTime+%3Fdate%3B%0D%0A+++++++++sdmx-dimension%3ArefArea+%3Farea%3B%0D%0A+++++++++dpc%3AhomeIsolation+%3FhomeIsolation+%3B%0D%0A+++++++++dpc%3AtotalPositive+%3FtotalPositive+%3B%0D%0A+++++++++dpc%3AnewPositive+%3FnewPositive+%3B%0D%0A+++++++++dpc%3AtotalCases+%3FtotalCases+%3B%0D%0A+++++++++dpc%3AtotalPositiveVariation+%3FtotalPositiveVariation+%3B%0D%0A+++++++++dpc%3Adeads+%3Fdeads+%3B%0D%0A+++++++++dpc%3Ahealed+%3Fhealed+.%0D%0A+++++++++%3Farea+l0%3Aname+%3FareaName.%0D%0A+++++++++FILTER+regex%28%3FareaName%2C%22%5EMessina%22%2C%22i%22%29.%0D%0A+++++++++FILTER%28%3Fdate+%3D+%222020-03-25%22%5E%5Exsd%3Adate%29.%0D%0A%7D&format=text%2Fhtml&timeout=0&debug=on)

```sparql
PREFIX qb: <http://purl.org/linked-data/cube#>
PREFIX sdmx-dimension: <http://purl.org/linked-data/sdmx/2009/dimension#>
PREFIX dpc: <http://www.protezionecivile.gov.it/ns/>
prefix l0: <https://w3id.org/italia/onto/l0/>

SELECT ?areaName ?date
       ?totalPositive ?homeIsolation
       ?newPositive ?totalPositiveVariation
       ?healed ?deads ?totalCases
WHERE
{
    ?obs a qb:Observation;
         qb:dataset <http://www.opendatasicilia.it/dataset/covid19/sicilian-trend>;
         sdmx-dimension:refTime ?date;
         sdmx-dimension:refArea ?area;
         dpc:homeIsolation ?homeIsolation ;
         dpc:totalPositive ?totalPositive ;
         dpc:newPositive ?newPositive ;
         dpc:totalCases ?totalCases ;
         dpc:totalPositiveVariation ?totalPositiveVariation ;
         dpc:deads ?deads ;
         dpc:healed ?healed .
         ?area l0:name ?areaName.
         FILTER regex(?areaName,"^Messina","i").
         FILTER(?date = "2020-03-25"^^xsd:date).
}
```

## Applicazione Android

E' stata creata un'applicazione android per consentire la visualizzazione dei dati anche da cellulare in modo semplice e intuitivo.
L'applicazione raccoglie i dati dal file JSON di Open Data Sicilia.<br>
Di seguito alcuni screeshots.<br>
<img src="https://i.imgur.com/KrMj0rr.jpg" alt="screen-1" width="200"/>
<img src="https://i.imgur.com/ETuA1bO.jpg" alt="screen-1" width="200"/>

[**LINK DOWNLOAD**](https://github.com/opendatasicilia/COVID-19_Sicilia/raw/master/risorse/applicazione_android/app.apk)

## Lettera aperta

La nostra comunità (**[Open Data Sicilia](http://opendatasicilia.it/)**), consapevole dell’importanza di disporre in maniera organica, strutturata (***machine readable***) e **aperta** (dati resi disponibili con licenza aperta, open data) della maggior quantità e tipologia possibile di dati riguardanti l’epidemia COVID-19 in Sicilia, ha indirizzato alle autorità regionali una [**lettera aperta**](http://opendatasicilia.it/2020/03/23/lettera-aperta-alla-regione-siciliana-per-la-pubblicazione-in-formato-machine-readable-dei-dati-sulla-covid19/) con la quale chiede il rilascio degli stessi in tali modalità e la loro integrazione con ulteriori dati (ad esempio dati dettagliati per comuni, per sesso, per età, ecc.), che consentano una completa analisi del fenomeno in Sicilia, offrendo al contempo la propria disponibilità a supportare l’amministrazione nel rendere gli stessi disponibili alla più amplia platea di soggetti interessati (ricercatori, giornalisti, data scientist, semplici cittadini, ecc.).<br>
**In attesa di una risposta**, Open Data Sicilia ha deciso di rendere intanto disponibile quanto finora raccolto.

## Ringraziamenti

Questo lavoro non ci sarebbe stato senza il forte stimolo inziale e il tempo dedicato di [Nino Galante](https://twitter.com/picomiles) e [Totò Fiandaca](https://twitter.com/totofiandaca), il supporto e il coordinamento di [Andrea Borruso](https://twitter.com/aborruso); a loro va il nostro ringraziamento.

## Chi usa o è ispirato dal nostro progetto

- [Davide Mancino](https://public.tableau.com/views/AggiornamentiSICILIACOVID-19-OpenDataSicilia/INTRO?:display_count=y&publish=yes&:origin=viz_share_link)
- [Gazzetta del Sud](https://sicilia.gazzettadelsud.it/articoli/cronaca/2020/04/11/in-sicilia-62-nuovi-casi-di-coronavirus-record-di-tamponi-effettuati-2-631-87af6a44-e3f9-462a-99dd-262697b74506/) (copia su [web archive](https://web.archive.org/web/20200411202557/https://sicilia.gazzettadelsud.it/articoli/cronaca/2020/04/11/in-sicilia-62-nuovi-casi-di-coronavirus-record-di-tamponi-effettuati-2-631-87af6a44-e3f9-462a-99dd-262697b74506/))
- [Guenter Richter](https://gjrichter.github.io/viz/COVID-19/gallery/ODS/)
